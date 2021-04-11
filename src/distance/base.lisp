(defpackage cl-unit.distance.base
  (:use :cl :cl-unit.util)
  (:export #:define-distance
           #:val
           #:base
           #:convert-distance
           #:add-distance
           #:multiply-distance
           #:subtract-distance
           #:divide-distance
           #:equate-distance
           #:equivalent-distance))
(in-package :cl-unit.distance.base)

(defclass distance ()
  ((name :initarg :name :initform "" :accessor name)
   (val  :initarg :val :initform 0   :accessor val)))

(defmethod print-object ((object distance) stream)
  (print-unreadable-object (object stream)
    (format stream "~A ~A~p" (val object) (string-downcase (name object)) (val object))))

(defmacro define-distance (name &optional (base nil))
  "Creates a custom distance unit"
  (let ((slots (append `((name ,(string name))) `((base ,base)) '((val 0)))))
    `(progn
      (defclass ,name (distance)
        ,(mapcar #'slot->defclass-slot slots))

      (defun ,(intern-function-name name) (val)
        (make-instance (quote ,name) :val val)))))

(defgeneric convert-distance (obj1 target)
  (:documentation "Converts an object of one type, to another"))

(defgeneric add-distance (unit1 unit2)
  (:documentation "Adds two units"))

(defgeneric multiply-distance (unit1 unit2)
  (:documentation "Multiplies two units"))

(defgeneric subtract-distance (unit1 unit2)
  (:documentation "Subtract two units"))

(defgeneric divide-distance (unit1 unit2)
  (:documentation "Divide two units"))

(defgeneric equal-distance (unit1 unit2)
  (:documentation "Compare if two distances are equal"))

(defgeneric equivalent-distance (unit1 unit2)
  (:documentation "Compare if two distances are equivalent"))
