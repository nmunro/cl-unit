(defpackage cl-unit.distance.equal
  (:use :cl
   :cl-unit.distance.base
   :cl-unit.distance.centimeter
   :cl-unit.distance.meter
   :cl-unit.distance.kilometer)
  (:export #:equal-distance))
(in-package :cl-unit.distance.equal)

(defmethod equal-distance ((unit1 meter) (unit2 meter))
  (= (val unit1) (val unit2)))

(defmethod equal-distance ((unit1 kilometer) (unit2 kilometer))
  (= (val unit1) (val unit2)))

(defmethod equal-distance ((unit1 centimeter) (unit2 centimeter))
  (= (val unit1) (val unit2)))
