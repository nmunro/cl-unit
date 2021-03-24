(defpackage cl-unit.distance.kilometer
  (:use :cl :cl-unit.distance.base)
  (:export #:kilometer
           #:make-kilometer))
(in-package :cl-unit.distance.kilometer)

(define-distance kilometer)
