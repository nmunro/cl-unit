(defpackage cl-unit.distance
  (:use :cl
   :cl-unit.distance.centimeter
   :cl-unit.distance.meter
   :cl-unit.distance.kilometer)
  (:export #:centimeter
           #:make-centimeter
           #:meter
           #:make-meter
           #:kilometer
           #:make-kilometer))
(in-package :cl-unit.distance)

(let ((m (make-meter 5)))
  m)

(let ((cm (make-centimeter 5)))
  cm)

(let ((km (make-kilometer 5)))
  km)

(let ((km (make-kilometer 5)))
  (convert km 'meter))
