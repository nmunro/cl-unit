(defpackage cl-unit.distance
  (:use :cl
   :cl-unit.distance.base
   :cl-unit.distance.meter
   :cl-unit.distance.centimeter
   :cl-unit.distance.kilometer)
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
  (/ (val obj1) 1000))

(let ((m (make-meter 5)))
  (val m))

(let ((cm (make-centimeter 5)))
  cm)

(let ((m (make-meter 5)))
  (convert m (make-kilometer 0)))

#|
(macroexpand-1 '(define-distance meter nil))
(macroexpand-1 '(define-distance kilometer 'meter))
|#
