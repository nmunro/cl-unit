(defpackage cl-unit.distance.meter
  (:use :cl :cl-unit.distance.base)
  (:export #:meter
           #:make-meter))
(in-package :cl-unit.distance.meter)

(cl-unit.distance.base:define-distance meter)

(defmethod add-distance ((unit1 meter) (unit2 meter))
  (make-meter (+ (val unit1) (val unit2))))

(defmethod multiply-distance ((unit1 meter) (unit2 meter))
  (make-meter (* (val unit1) (val unit2))))

(defmethod subtract-distance ((unit1 meter) (unit2 meter))
  (make-meter (- (val unit1) (val unit2))))

(defmethod divide-distance ((unit1 meter) (unit2 meter))
  (make-meter (/ (val unit1) (val unit2))))
