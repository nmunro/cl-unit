(defpackage cl-unit.distance.lte
  (:use :cl
   :cl-unit.distance.base
   :cl-unit.distance.centimeter
   :cl-unit.distance.meter
   :cl-unit.distance.kilometer)
  (:export #:lte-distance))
(in-package :cl-unit.distance.lte)

(defmethod lte-distance ((unit1 meter) (unit2 meter))
  (<= (val unit1) (val unit2)))

(defmethod lte-distance ((unit1 kilometer) (unit2 kilometer))
  (<= (val unit1) (val unit2)))

(defmethod lte-distance ((unit1 centimeter) (unit2 centimeter))
  (<= (val unit1) (val unit2)))
