(defpackage cl-unit.util
  (:use :cl)
  (:export #:as-keyword
           #:intern-function-name
           #:slot->defclass-slot))
(in-package :cl-unit.util)

(defun as-keyword (sym)
  (intern (string sym) :keyword))

(defun intern-function-name (name)
  (intern (format nil "~:@(make-~A~)" name)))

(defun slot->defclass-slot (spec)
  (let ((name (first spec))
        (val  (or (second spec) nil)))
    `(,name :initarg ,(as-keyword name) :initform ,val :accessor ,name)))
