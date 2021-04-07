(defpackage cl-unit.distance.gt
  (:use :cl
   :cl-unit.distance.base
   :cl-unit.distance.centimeter
   :cl-unit.distance.meter
   :cl-unit.distance.kilometer)
  (:export #:gt-distance))
(in-package :cl-unit.distance.gt)

(defmethod gt-distance ((unit1 meter) (unit2 meter))
  (> (val unit1) (val unit2)))

(defmethod gt-distance ((unit1 meter) (unit2 kilometer))
  (> (val unit1) (* 1000 (val unit2))))

(defmethod gt-distance ((unit1 meter) (unit2 centimeter))
  (> (val unit1) (/ (val unit2) 1000)))

(defmethod gt-distance ((unit1 kilometer) (unit2 kilometer))
  (> (val unit1) (val unit2)))

(defmethod gt-distance ((unit1 kilometer) (unit2 meter))
  (> (val unit1) (/ (val unit2) 1000)))

(defmethod gt-distance ((unit1 kilometer) (unit2 centimeter))
  (> (val unit1) (/ (val unit2) 100000)))

(defmethod gt-distance ((unit1 centimeter) (unit2 centimeter))
  (> (val unit1) (val unit2)))

(defmethod gt-distance ((unit1 centimeter) (unit2 meter))
  (> (val unit1) (* (val unit2) 100)))

(defmethod gt-distance ((unit1 centimeter) (unit2 kilometer))
  (> (val unit1) (* (val unit2) 100000)))
