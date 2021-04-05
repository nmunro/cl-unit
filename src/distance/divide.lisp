(defpackage cl-unit.distance.divide
  (:use :cl
   :cl-unit.distance.base
   :cl-unit.distance.centimeter
   :cl-unit.distance.meter
   :cl-unit.distance.kilometer)
  (:export #:divide-distance))
(in-package :cl-unit.distance.divide)

(defmethod divide-distance ((unit1 meter) (unit2 meter))
  (make-meter (/ (val unit1) (val unit2))))

(defmethod divide-distance ((unit1 meter) (unit2 kilometer))
  (make-meter (/ (val unit1) (* (val unit2) 1000))))

(defmethod divide-distance ((unit1 meter) (unit2 centimeter))
  (make-meter (/ (val unit1) (* (val unit2) 100))))

(defmethod divide-distance ((unit1 kilometer) (unit2 kilometer))
  (make-kilometer (/ (val unit1) (val unit2))))

(defmethod divide-distance ((unit1 kilometer) (unit2 meter))
  (make-kilometer (/ (val unit1) (/ (val unit2) 1000))))

(defmethod divide-distance ((unit1 kilometer) (unit2 centimeter))
  (make-kilometer (/ (val unit1) (/ (val unit2) 100000))))

(defmethod divide-distance ((unit1 centimeter) (unit2 centimeter))
  (make-centimeter (/ (val unit1) (val unit2))))

(defmethod divide-distance ((unit1 centimeter) (unit2 meter))
  (make-centimeter (/ (val unit1) (* (val unit2) 100))))

(defmethod divide-distance ((unit1 centimeter) (unit2 kilometer))
  (make-centimeter (/ (val unit1) (* (val unit2) 100000))))
