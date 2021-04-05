(defpackage cl-unit
  (:use :cl)
  (:shadow "+" "-" "*" "/" "=" ">" ">=" "<" "<=")
  (:export #:+
           #:-
           #:*
           #:/
           #:=
           #:>
           #:>=
           #:<
           #:<=
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

(defun > (&rest units)
  (reduce 'cl-unit.distance.gt:gt-distance (cdr units) :initial-value (car units)))

(defun >= (&rest units)
  (reduce 'cl-unit.distance.gte:gte-distance (cdr units) :initial-value (car units)))

(defun < (&rest units)
  (reduce 'cl-unit.distance.lt:lt-distance (cdr units) :initial-value (car units)))

(defun <= (&rest units)
  (reduce 'cl-unit.distance.lte:lte-distance (cdr units) :initial-value (car units)))

(defun = (&rest units)
  (reduce 'cl-unit.distance.equal:equal-distance (cdr units) :initial-value (car units)))

(defun == (&rest units)
  (reduce 'cl-unit.distance.equivalent:equivalent-distance (cdr units) :initial-value (car units)))
