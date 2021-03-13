(defpackage cl-unit
  (:use :cl)
  (:shadow "+" "*" "-" "/")
  (:export #:unit))
(in-package :cl-unit)

(defclass unit ()
  ((name    :initarg :name    :initform "" :accessor name)
   (val     :initarg :val     :initform 0  :accessor val)
   (measure :initarg :measure :initform "" :accessor measure)))

(defclass scaled-unit (unit)
  ((base :initarg :base :initform (error "Must have a base") :accessor base)))

(defmethod print-object ((object unit) stream)
  (print-unreadable-object (object stream :type t)
    (format stream "~A ~A(s)" (val object) (name object))))

(defun unit (name &optional (val 1))
  (make-instance 'unit :name name :val val))

(defun scaled-unit (name base &optional (val 1))
  (make-instance 'scaled-unit :name name :base base :val val))

(defun + (&rest units)
  (reduce 'add-units (cdr units) :initial-value (car units)))

(defun * (&rest units)
  (reduce 'multiply-units (cdr units) :initial-value (car units)))

(defun - (&rest units)
  (reduce 'multiply-units (cdr units) :initial-value (car units)))

(defun / (&rest units)
  (reduce 'multiply-units (cdr units) :initial-value (car units)))

(defgeneric add-units (unit1 unit2)
  (:documentation "Adds two units"))

(defgeneric multiply-units (unit1 unit2)
  (:documentation "Multiplies two units"))

(defgeneric subtract-units (unit1 unit2)
  (:documentation "Subtract two units"))

(defgeneric divide-units (unit1 unit2)
  (:documentation "Divide two units"))

(defmethod add-units ((unit1 unit) (unit2 unit))
  (unit (name unit1) (cl:+ (val unit1) (val unit2))))

(defmethod multiply-units ((unit1 unit) (unit2 unit))
  (unit (name unit1) (cl:* (val unit1) (val unit2))))

(defmethod subtrace-units ((unit1 unit) (unit2 unit))
  (unit (name unit1) (cl:- (val unit1) (val unit2))))

(defmethod divide-units ((unit1 unit) (unit2 unit))
  (unit (name unit1) (cl:/ (val unit1) (val unit2))))

(let ((meter1 (unit "meter" 2))
      (meter2 (unit "meter" 5)))
  (format nil "~A" (+ meter1 meter2)))

(let ((meter1 (unit "meter" 2))
      (meter2 (unit "meter" 5)))
  (format nil "~A" (* meter1 meter2)))

(let ((kilometer (scaled-unit "kilometer" 'unit 2)))
  (format nil "~A" kilometer))
