(defpackage cl-unit.distance.kilometer
  (:use :cl :cl-unit.distance.base)
  (:export #:kilometer
           #:make-kilometer))
(in-package :cl-unit.distance.kilometer)

(cl-unit.distance.base:define-distance kilometer)

(defmethod add-distance ((unit1 kilometer) (unit2 kilometer))
  (make-kilometer (+ (val unit1) (val unit2))))

(defmethod multiply-distance ((unit1 kilometer) (unit2 kilometer))
  (make-kilometer (* (val unit1) (val unit2))))

(defmethod subtract-distance ((unit1 kilometer) (unit2 kilometer))
  (make-kilometer (- (val unit1) (val unit2))))

(defmethod divide-distance ((unit1 kilometer) (unit2 kilometer))
  (make-kilometer (/ (val unit1) (val unit2))))
