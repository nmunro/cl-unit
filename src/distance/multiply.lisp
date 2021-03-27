(defpackage cl-unit.distance.multiply
  (:use :cl
   :cl-unit.distance.base
   :cl-unit.distance.centimeter
   :cl-unit.distance.meter
   :cl-unit.distance.kilometer)
  (:export #:multiply-distance))
(in-package :cl-unit.distance.multiply)

(defmethod multiply-distance ((unit1 meter) (unit2 meter))
  (make-meter (* (val unit1) (val unit2))))

(defmethod multiply-distance ((unit1 meter) (unit2 kilometer))
  (make-meter (* (val unit1) (* 1000 (val unit2)))))

(defmethod multiply-distance ((unit1 meter) (unit2 centimeter))
  (make-meter (* (val unit1) (val unit2))))

(defmethod multiply-distance ((unit1 kilometer) (unit2 kilometer))
  (make-kilometer (* (val unit1) (val unit2))))

(defmethod multiply-distance ((unit1 kilometer) (unit2 meter))
  (make-meter (* (* 1000 (val unit1)) (val unit2))))

(defmethod multiply-distance ((unit1 kilometer) (unit2 centimeter))
  (make-meter (* (* 1000 (val unit1)) (val unit2))))

(defmethod multiply-distance ((unit1 centimeter) (unit2 centimeter))
  (make-centimeter (* (val unit1) (val unit2))))

(defmethod multiply-distance ((unit1 centimeter) (unit2 meter))
  (make-centimeter (* (val unit1) (val unit2))))

(defmethod multiply-distance ((unit1 centimeter) (unit2 kilometer))
  (make-centimeter (* (val unit1) (val unit2))))
