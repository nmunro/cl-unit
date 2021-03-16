(defpackage cl-unit.distance.centimeter
  (:use :cl :cl-unit.distance.base)
  (:export #:centimeter
           #:make-centimeter))
(in-package :cl-unit.distance.centimeter)

(define-distance centimeter)

(defmethod convert ((obj1 centimeter) target)
  0)
