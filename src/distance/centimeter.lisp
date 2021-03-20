(defpackage cl-unit.distance.centimeter
  (:use :cl)
  (:export #:centimeter
           #:make-centimeter))
(in-package :cl-unit.distance.centimeter)

(cl-unit.distance.base:define-distance centimeter)
