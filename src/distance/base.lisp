(defpackage cl-unit.distance.base
  (:use :cl :cl-unit.util)
  (:export #:define-distance
           #:convert))
(in-package :cl-unit.distance.base)

(defclass distance ()
  ())

(defmethod print-object ((object distance) stream)
  (print-unreadable-object (object stream)
    (format stream "Distance: ~A ~A(s)" (val object) (name object))))

(defmacro define-distance (name &optional (base nil) (slots '((val 0))))
  "Creates a custom distance unit"
  (let ((slots (append `((name ,(string name))) `((base ,base)) slots)))
    `(progn
      (defclass ,name (distance)
        ,(mapcar #'slot->defclass-slot slots))

      (defun ,(intern-function-name name) (val)
        (make-instance (quote ,name) :val val)))))

(defgeneric convert (obj1 target)
  (:documentation "Converts an object of one type, to another"))
