(defpackage cl-unit.dev
  (:use :cl)
  (:export #:make-measure
           #:make-length
           #:make-time
           #:make-mass
           #:make-current
           #:make-temperature
           #:make-substance
           #:make-intensity))
(in-package :cl-unit.dev)

(defun build-path (measure)
  (let ((src (merge-pathnames #p"src/" (asdf:system-source-directory :cl-unit))))
    (merge-pathnames (make-pathname :directory `(:relative ,measure) :name nil :type nil) src)))

(defun make-measure (measure)
  "Creates a top level measure, like speed, length etc"
  (ensure-directories-exist (build-path measure)))

(defun make-unit (measure name)
  (multiple-value-bind (path created)
      (make-measure measure)
    (when created
      (let ((file-path (merge-pathnames (make-pathname :name name :type "lisp") path)))
        (with-open-file (p file-path :direction :output :if-exists :supersede :if-does-not-exist :create)
          (format nil "Created: ~A" file-path)
          (format p "(defpackage cl-unit.~A.~A~%" (pathname-name measure) name)
          (format p "  (:use :cl :cl-unit.~A.base)~%" measure)
          (format p "  (:export #:~A~%" name)
          (format p "           #:make-~A))~%" name)
          (format p "(in-package :cl-unit.~A.~A)~%~%" (pathname-name measure) name)
          (format p "(define-~A ~A)" measure name))))))

(defun make-length (name)
  "Creates a length unit (meter)"
  (make-unit "length" name))

(defun make-time (name)
  "Creates a time unit (second)"
  (make-unit "time" name))

(defun make-mass (name)
  "Creates a mass unit (kilogram)"
  (make-unit "mass" name))

(defun make-current (name)
  "Creates an electrical current unit (ampere)"
  (make-unit "current" name))

(defun make-temperature (name)
  "Creates a temperature unit (kelvin)"
  (make-unit "temperature" name))

(defun make-substance (name)
  "Creates a substance unit (mole)"
  (make-unit "substance" name))

(defun make-intensity (name)
  "Creates a intensity unit (candela)"
  (make-unit "intensity" name))

(make-length "millimeter")
(make-time "second")
