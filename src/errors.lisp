(defpackage cl-unit.errors
  (:use :cl)
  (:export #:incompatible-unit))
(in-package :cl-unit.errors)

(define-condition incompatible-unit (error)
  ((src    :initarg :src    :reader src)
   (target :initarg :target :reader target))
  (:report (lambda (condition stream) (format stream "The unit ~A cannot be converted to ~A~&" (src condition) (target condition))))
  (:documentation "A condition to be raised when incompatible units are compared"))
