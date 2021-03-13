(defpackage cl-unit.distance
  (:use :cl)
  (:shadow "+" "*" "-" "/")
  (:export #:unit))
(in-package :cl-unit.distance)

(defun as-keyword (sym)
  (intern (string sym) :keyword))

(defun intern-function-name (name)
  (intern (format nil "~:@(make-~A~)" name)))

(defun slot->defclass-slot (spec)
  (let ((name (first spec))
        (val  (or (second spec) nil)))
    `(,name :initarg ,(as-keyword name) :initform ,val :accessor ,name)))

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

#|
(macroexpand-1 '(define-distance meter nil))
(macroexpand-1 '(define-distance kilometer 'meter))
|#

(define-distance meter)
(define-distance kilometer 'meter)

(let ((km (make-kilometer 5)))
  (let ((m (make-instance (base km) :val (* 1000 (val km)))))
    (format nil "~A kilometers is ~A meters" (val km) (val m))))
