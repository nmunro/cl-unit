(defpackage cl-unit.distance.kilometer
  (:use :cl)
  (:export #:kilometer
           #:make-kilometer))
(in-package :cl-unit.distance.kilometer)

(cl-unit.distance.base:define-distance kilometer)
