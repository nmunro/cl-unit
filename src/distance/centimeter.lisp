(defpackage cl-unit.distance.centimeter
  (:use :cl :cl-unit.distance.base)
  (:export #:centimeter
           #:make-centimeter))
(in-package :cl-unit.distance.centimeter)

(cl-unit.distance.base:define-distance centimeter)

(defmethod add-distance ((unit1 centimeter) (unit2 centimeter))
  (make-centimeter (+ (val unit1) (val unit2))))

(defmethod multiply-distance ((unit1 centimeter) (unit2 centimeter))
  (make-centimeter (* (val unit1) (val unit2))))

(defmethod subtract-distance ((unit1 centimeter) (unit2 centimeter))
  (make-centimeter (- (val unit1) (val unit2))))

(defmethod divide-distance ((unit1 centimeter) (unit2 centimeter))
  (make-centimeter (/ (val unit1) (val unit2))))
