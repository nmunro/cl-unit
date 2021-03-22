(defpackage cl-unit.distance.meter-kilometer
  (:use :cl
   :cl-unit.distance.base
   :cl-unit.distance.meter
   :cl-unit.distance.kilometer)
  (:export #:convert
           #:add-distance
           #:multiply-distance
           #:subtract-distance
           #:divide-distance))
(in-package :cl-unit.distance.meter-kilometer)

(defmethod convert ((obj1 meter) (target kilometer))
  (make-kilometer (/ (val obj1) 1000)))

(defmethod convert ((obj1 kilometer) (target meter))
  (make-meter (* (val obj1) 1000)))

(defmethod add-distance ((unit1 meter) (unit2 meter))
  (make-meter (+ (val unit1) (val unit2))))

(defmethod multiply-distance ((unit1 meter) (unit2 meter))
  (make-meter (* (val unit1) (val unit2))))

(defmethod subtract-distance ((unit1 meter) (unit2 meter))
  (make-meter (- (val unit1) (val unit2))))

(defmethod divide-distance ((unit1 meter) (unit2 meter))
  (make-meter (/ (val unit1) (val unit2))))
