(defpackage cl-unit.distance
  (:use :cl
   :cl-unit.distance.centimeter
   :cl-unit.distance.meter
   :cl-unit.distance.kilometer
   :cl-unit.distance.convert
   :cl-unit.distance.add
   :cl-unit.distance.subtract
   :cl-unit.distance.multiply
   :cl-unit.distance.divide)
  (:import-from :cl-unit.distance.base :val)
  (:shadow "+" "-" "/" "*")
  (:export #:+
           #:-
           #:/
           #:*
           #:centimeter
           #:make-centimeter
           #:meter
           #:make-meter
           #:kilometer
           #:make-kilometer
           #:add-distance
           #:subtract-distance
           #:multiply-distance
           #:divide-distance
           #:val
           #:convert))
(in-package :cl-unit.distance)
