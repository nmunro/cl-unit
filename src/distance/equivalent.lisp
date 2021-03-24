(defpackage cl-unit.distance.equivalent
  (:use :cl
   :cl-unit.distance.base
   :cl-unit.distance.centimeter
   :cl-unit.distance.meter
   :cl-unit.distance.kilometer
   :cl-unit.distance.equal)
  (:export #:equivalent-distance))
(in-package :cl-unit.distance.equivalent)

(defmethod equivalent-distance ((unit1 meter) (unit2 meter))
  (cl-unit.distance.equal:equal-distance unit1 unit2))

(defmethod equivalent-distance ((unit1 meter) (unit2 kilometer))
  (= (val unit1) (* (val unit2) 1000)))

(defmethod equivalent-distance ((unit1 meter) (unit2 centimeter))
  (= (/ (val unit1) 100) (/ (val unit2) 100)))

(defmethod equivalent-distance ((unit1 kilometer) (unit2 kilometer))
  (cl-unit.distance.equal:equal-distance unit1 unit2))

(defmethod equivalent-distance ((unit1 kilometer) (unit2 meter))
  (equivalent-distance unit2 unit1))

(defmethod equivalent-distance ((unit1 kilometer) (unit2 centimeter))
  (= (* (val unit1) 1000) (val unit2)))

(defmethod equivalent-distance ((unit1 centimeter) (unit2 centimeter))
  (cl-unit.distance.equal:equal-distance unit1 unit2))

(defmethod equivalent-distance ((unit1 centimeter) (unit2 meter))
  (equivalent-distance unit2 unit1))

(defmethod equivalent-distance ((unit1 centimeter) (unit2 kilometer))
  (equivalent-distance unit2 unit1))
