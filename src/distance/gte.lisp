(defpackage cl-unit.distance.gte
  (:use :cl
   :cl-unit.distance.base
   :cl-unit.distance.centimeter
   :cl-unit.distance.meter
   :cl-unit.distance.kilometer)
  (:export #:gte-distance))
(in-package :cl-unit.distance.gte)

(defmethod gte-distance ((unit1 meter) (unit2 meter))
  (>= (val unit1) (val unit2)))

(defmethod gte-distance ((unit1 meter) (unit2 kilometer))
  (>= (val unit1) (* 1000 (val unit2))))

(defmethod gte-distance ((unit1 meter) (unit2 centimeter))
  (>= (val unit1) (val unit2)))

(defmethod gte-distance ((unit1 kilometer) (unit2 kilometer))
  (>= (val unit1) (val unit2)))

(defmethod gte-distance ((unit1 kilometer) (unit2 meter))
  (>= (* 1000 (val unit1)) (val unit2)))

(defmethod gte-distance ((unit1 kilometer) (unit2 centimeter))
  (>= (* 1000 (val unit1)) (val unit2)))

(defmethod gte-distance ((unit1 centimeter) (unit2 centimeter))
  (>= (val unit1) (val unit2)))

(defmethod gte-distance ((unit1 centimeter) (unit2 meter))
  (>= (val unit1) (val unit2)))

(defmethod gte-distance ((unit1 centimeter) (unit2 kilometer))
  (>= (val unit1) (val unit2)))
