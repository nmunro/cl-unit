(defpackage cl-unit.distance.meter-kilometer
  (:use :cl
   :cl-unit.distance.base
   :cl-unit.distance.meter
   :cl-unit.distance.kilometer)
  (:export #:convert))
(in-package :cl-unit.distance.meter-kilometer)

(defmethod convert ((obj1 meter) (target kilometer))
  (make-kilometer (/ (val obj1) 1000)))
