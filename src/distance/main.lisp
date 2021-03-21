(defpackage cl-unit.distance
  (:use :cl
   :cl-unit.distance.base
   :cl-unit.distance.meter
   :cl-unit.distance.centimeter
   :cl-unit.distance.kilometer)
  (:shadow "+" "-" "/" "*")
  (:export #:centimeter
           #:make-centimeter
           #:meter
           #:make-meter
           #:kilometer
           #:make-kilometer
           #:convert))
(in-package :cl-unit.distance)

(defgeneric convert (obj1 target)
  (:documentation "Converts an object of one type, to another"))

(defmethod convert ((obj1 meter) (target kilometer))
  (make-kilometer (/ (val obj1) 1000)))

(defmethod convert ((obj1 kilometer) (target meter))
  (make-meter (* (val obj1) 1000)))

(defun + (&rest units)
  (reduce 'add-distance (cdr units) :initial-value (car units)))

(defun * (&rest units)
  (reduce 'multiply-distance (cdr units) :initial-value (car units)))

(defun - (&rest units)
  (reduce 'subtract-distance (cdr units) :initial-value (car units)))

(defun / (&rest units)
  (reduce 'divide-distance (cdr units) :initial-value (car units)))

(defgeneric add-distance (unit1 unit2)
  (:documentation "Adds two units"))

(defgeneric multiply-distance (unit1 unit2)
  (:documentation "Multiplies two units"))

(defgeneric subtract-distance (unit1 unit2)
  (:documentation "Subtract two units"))

(defgeneric divide-distance (unit1 unit2)
  (:documentation "Divide two units"))

(defmethod add-distance ((unit1 meter) (unit2 meter))
  (make-meter (cl:+ (val unit1) (val unit2))))

(defmethod multiply-distance ((unit1 meter) (unit2 meter))
  (make-meter (cl:* (val unit1) (val unit2))))

(defmethod subtract-distance ((unit1 meter) (unit2 meter))
  (make-meter (cl:- (val unit1) (val unit2))))

(defmethod divide-distance ((unit1 meter) (unit2 meter))
  (make-meter (cl:/ (val unit1) (val unit2))))

(let ((meter1 (make-meter 2))
      (meter2 (make-meter 5)))
    (+ meter1 meter2))

(let ((meter1 (make-meter 2))
      (meter2 (make-meter 5)))
    (* meter1 meter2))

(let ((meter1 (make-meter 2))
      (meter2 (make-meter 5)))
    (- meter1 meter2))

(let ((meter1 (make-meter 2))
      (meter2 (make-meter 5)))
    (/ meter1 meter2))

(let ((m (make-meter 5)))
  (val m))

(let ((cm (make-centimeter 5)))
  cm)

(let ((m (make-meter 5)))
  (convert m (make-kilometer 0)))

(let ((km (make-kilometer 1)))
  (convert km (make-meter 0)))

#|
(macroexpand-1 '(define-distance meter nil))
(macroexpand-1 '(define-distance kilometer 'meter))
|#
