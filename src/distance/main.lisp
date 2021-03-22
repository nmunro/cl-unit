(defpackage cl-unit.distance
  (:use :cl
   :cl-unit.distance.base
   :cl-unit.distance.meter
   :cl-unit.distance.meter-kilometer
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

(defun + (&rest units)
  (reduce 'add-distance (cdr units) :initial-value (car units)))

(defun * (&rest units)
  (reduce 'multiply-distance (cdr units) :initial-value (car units)))

(defun - (&rest units)
  (reduce 'subtract-distance (cdr units) :initial-value (car units)))

(defun / (&rest units)
  (reduce 'divide-distance (cdr units) :initial-value (car units)))

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
