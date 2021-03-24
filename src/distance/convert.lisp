(defpackage cl-unit.distance.convert
  (:use :cl
   :cl-unit.distance.centimeter
   :cl-unit.distance.meter
   :cl-unit.distance.kilometer)
  (:import-from :cl-unit.distance.base :val)
  (:export #:convert))
(in-package :cl-unit.distance.convert)

(defmethod convert ((obj1 meter) (target kilometer))
  (make-kilometer (/ (val obj1) 1000)))

(defmethod convert ((obj1 meter) (target centimeter))
  (make-meter (* (val obj1) 100)))

(defmethod convert ((obj1 kilometer) (target meter))
  (make-meter (* (val obj1) 1000)))
