(defpackage cl-unit.distance.convert
  (:use :cl
   :cl-unit.distance.centimeter
   :cl-unit.distance.meter
   :cl-unit.distance.kilometer)
  (:import-from :cl-unit.distance.base :val)
  (:export #:convert-distance))
(in-package :cl-unit.distance.convert)

(defmethod convert-distance ((obj1 centimeter) target)
  (cond
    ((or (eq target :meter) (eq target :m))
     (make-meter (/ (val obj1) 100)))

    ((or (eq target :kilometer) (eq target :km))
     (make-kilometer (/ (val obj1) 100000)))

    (t (error "Can't convert ~A to ~A~%" obj1 target))))

(defmethod convert-distance ((obj1 meter) target)
  (cond
    ((or (eq target :centimeter) (eq target :cm))
     (make-centimeter (* (val obj1) 100)))

    ((or (eq target :kilometer) (eq target :km))
     (make-kilometer (/ (val obj1) 1000)))

    (t (error "Can't convert ~A to ~A~%" obj1 target))))

(defmethod convert-distance ((obj1 kilometer) target)
  (cond
    ((or (eq target :centimeter) (eq target :cm))
     (make-centimeter (* (val obj1) 100000)))

    ((or (eq target :meter) (eq target :m))
     (make-kilometer (* (val obj1) 1000)))

    (t (error "Can't convert ~A to ~A~%" obj1 target))))
