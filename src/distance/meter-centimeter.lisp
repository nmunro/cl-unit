(defpackage cl-unit.distance.meter-centimeter
  (:use :cl
   :cl-unit.distance.base
   :cl-unit.distance.meter
   :cl-unit.distance.centimeter)
  (:export #:convert))
(in-package :cl-unit.distance.meter-centimeter)

(defmethod convert ((obj1 meter) (target centimeter))
  (make-centimeter (* (val obj1) 100000)))
