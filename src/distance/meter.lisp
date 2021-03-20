(defpackage cl-unit.distance.meter
  (:use :cl)
  (:export #:meter
           #:make-meter))
(in-package :cl-unit.distance.meter)

(cl-unit.distance.base:define-distance meter)
