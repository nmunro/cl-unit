(defpackage cl-unit.distance.base
  (:use :cl :cl-unit.util)
  (:export #:define-distance
           #:val
           #:base))
(in-package :cl-unit.distance.base)

(defclass distance ()
  ((name :initarg :name :initform "" :accessor name)
   (val :initarg :val :initform 0 :accessor val)))

(defmethod print-object ((object distance) stream)
  (print-unreadable-object (object stream)
    (format stream "Distance: ~A ~A(s)" (val object) (name object))))

(defmacro define-distance (name &optional (base nil))
  "Creates a custom distance unit"
  (let ((slots (append `((name ,(string name))) `((base ,base)) '((val 0)))))
    `(progn
      (defclass ,name (distance)
        ,(mapcar #'slot->defclass-slot slots))

      (defun ,(intern-function-name name) (val)
        (make-instance (quote ,name) :val val)))))
