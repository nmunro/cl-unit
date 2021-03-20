(defpackage cl-unit.distance
  (:use :cl
   :cl-unit.distance.base
   :cl-unit.distance.centimeter
   :cl-unit.distance.meter
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

(let ((m (make-meter 5)))
  (val m))

(let ((cm (make-centimeter 5)))
  cm)

(let ((km (make-kilometer 5)))
  (base km))

(let ((km (make-kilometer 5)))
  (convert km 'meter))

#|
(macroexpand-1 '(define-distance meter nil))
(macroexpand-1 '(define-distance kilometer 'meter))
|#
