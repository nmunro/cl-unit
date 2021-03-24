(defpackage cl-unit.distance.subtract
  (:use :cl
   :cl-unit.distance.base
   :cl-unit.distance.centimeter
   :cl-unit.distance.meter
   :cl-unit.distance.kilometer)
  (:export #:subtract-distance))
(in-package :cl-unit.distance.subtract)

(defmethod subtract-distance ((unit1 meter) (unit2 meter))
  (make-meter (- (val unit1) (val unit2))))

(defmethod subtract-distance ((unit1 kilometer) (unit2 kilometer))
  (make-kilometer (- (val unit1) (val unit2))))

(defmethod subtract-distance ((unit1 centimeter) (unit2 centimeter))
  (make-centimeter (- (val unit1) (val unit2))))
