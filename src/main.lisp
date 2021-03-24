(defpackage cl-unit
  (:use :cl :cl-unit.distance)
  (:shadow "+" "-" "*" "/")
  (:export #:+
           #:-
           #:*
           #:/
           #:convert))
(in-package :cl-unit)

(defun + (&rest units)
  (reduce 'cl-unit.distance:add-distance (cdr units) :initial-value (car units)))

(defun * (&rest units)
  (reduce 'cl-unit.distance:multiply-distance (cdr units) :initial-value (car units)))

(defun - (&rest units)
  (reduce 'cl-unit.distance:subtract-distance (cdr units) :initial-value (car units)))

(defun / (&rest units)
  (reduce 'cl-unit.distance:divide-distance (cdr units) :initial-value (car units)))

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
