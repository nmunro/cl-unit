(defpackage cl-unit.distance.meter
  (:use :cl :cl-unit.distance.base)
  (:export #:meter
           #:make-meter))
(in-package :cl-unit.distance.meter)

(define-distance meter)

(defmethod convert ((obj1 meter) target)
  0)
