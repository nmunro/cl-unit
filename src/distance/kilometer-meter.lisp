(defpackage cl-unit.distance.kilometer-meter
  (:use :cl
   :cl-unit.distance.base
   :cl-unit.distance.meter
   :cl-unit.distance.kilometer)
  (:export #:convert))
(in-package :cl-unit.distance.kilometer-meter)

(defmethod convert ((obj1 kilometer) (target meter))
  (make-meter (* (val obj1) 1000)))
