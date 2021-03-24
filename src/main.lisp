(defpackage cl-unit
  (:use :cl)
  (:shadow "+" "-" "*" "/" "=")
  (:export #:+
           #:-
           #:*
           #:/
           #:=
           #:==
           #:convert))
(in-package :cl-unit)

(defun + (&rest units)
  (reduce 'cl-unit.distance.base:add-distance (cdr units) :initial-value (car units)))

(defun * (&rest units)
  (reduce 'cl-unit.distance.base:multiply-distance (cdr units) :initial-value (car units)))

(defun - (&rest units)
  (reduce 'cl-unit.distance.base:subtract-distance (cdr units) :initial-value (car units)))

(defun / (&rest units)
  (reduce 'cl-unit.distance.base:divide-distance (cdr units) :initial-value (car units)))

(defun = (&rest units)
  (reduce 'cl-unit.distance.equal:equal-distance (cdr units) :initial-value (car units)))

(defun == (&rest units)
  (reduce 'cl-unit.distance.equivalent:equivalent-distance (cdr units) :initial-value (car units)))

#|
(let ((meter1 (make-meter 2))
      (meter2 (make-meter 5)))
    (cl-unit.distance:+ meter1 meter2))

(let ((meter1 (make-meter 2))
      (meter2 (make-meter 5)))
    (cl-unit.distance:* meter1 meter2))

(let ((meter1 (make-meter 2))
      (meter2 (make-meter 5)))
    (cl-unit.distance:- meter1 meter2))

(let ((meter1 (make-meter 2))
      (meter2 (make-meter 5)))
    (cl-unit.distance:/ meter1 meter2))

(let ((m (make-meter 5)))
  (cl-unit.distance:val m))

(let ((cm (make-centimeter 5)))
  cm)

(let ((m (make-meter 5)))
  (convert m (make-kilometer 0)))

(let ((km (make-kilometer 1)))
  (convert km (make-meter 0)))
|#
