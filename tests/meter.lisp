(defpackage cl-unit/tests/main
  (:use :cl
        :cl-unit
        :rove)
  (:shadow "+" "-" "/" "*" "=" ">" ">=" "<" "<="))
(in-package :cl-unit/tests/main)

(deftest test-meter=1
  (testing "should (= (make-meter 1) (make-meter 1)) to be true"
    (ok (cl-unit:= (cl-unit.distance:make-meter 1) (cl-unit.distance:make-meter 1)))))

(deftest test-meter=2
  (testing "should (= (make-meter 2) (make-meter 1)) to be false"
    (ng (cl-unit:= (cl-unit.distance:make-meter 2) (cl-unit.distance:make-meter 1)))))

(deftest test-meter=3
  (testing "should (= (make-meter 2) (make-meter 3)) to be false"
    (ng (cl-unit:= (cl-unit.distance:make-meter 2) (cl-unit.distance:make-meter 3)))))

(deftest test-meter>-1
  (testing "should (> (make-meter 2) (make-meter 1)) to be true"
    (ok (cl-unit:> (cl-unit.distance:make-meter 2) (cl-unit.distance:make-meter 1)))))

(deftest test-meter>-2
  (testing "should (> (make-meter 1) (make-meter 1)) to be false"
    (ng (cl-unit:> (cl-unit.distance:make-meter 1) (cl-unit.distance:make-meter 1)))))

(deftest test-meter>-3
  (testing "should (> (make-meter 1) (make-meter 2)) to be false"
    (ng (cl-unit:> (cl-unit.distance:make-meter 1) (cl-unit.distance:make-meter 2)))))

(deftest test-meter>=-1
  (testing "should (>= (make-meter 2) (make-meter 1)) to be true"
    (ok (cl-unit:>= (cl-unit.distance:make-meter 2) (cl-unit.distance:make-meter 1)))))

(deftest test-meter>=-2
  (testing "should (>= (make-meter 1) (make-meter 1)) to be true"
    (ok (cl-unit:>= (cl-unit.distance:make-meter 1) (cl-unit.distance:make-meter 1)))))

(deftest test-meter>=-3
  (testing "should (>= (make-meter 1) (make-meter 2)) to be false"
    (ng (cl-unit:>= (cl-unit.distance:make-meter 1) (cl-unit.distance:make-meter 2)))))

(deftest test-meter<-1
  (testing "should (< (make-meter 1) (make-meter 2)) to be true"
    (ok (cl-unit:< (cl-unit.distance:make-meter 1) (cl-unit.distance:make-meter 2)))))

(deftest test-meter<-2
  (testing "should (< (make-meter 1) (make-meter 1)) to be false"
    (ng (cl-unit:< (cl-unit.distance:make-meter 1) (cl-unit.distance:make-meter 1)))))

(deftest test-meter<-3
  (testing "should (< (make-meter 2) (make-meter 2)) to be false"
    (ng (cl-unit:< (cl-unit.distance:make-meter 2) (cl-unit.distance:make-meter 1)))))

(deftest test-meter<=-1
  (testing "should (<= (make-meter 2) (make-meter 1)) to be false"
    (ng (cl-unit:<= (cl-unit.distance:make-meter 2) (cl-unit.distance:make-meter 1)))))

(deftest test-meter<=-2
  (testing "should (<= (make-meter 1) (make-meter 1)) to be true"
    (ok (cl-unit:<= (cl-unit.distance:make-meter 1) (cl-unit.distance:make-meter 1)))))

(deftest test-meter<=-3
  (testing "should (<= (make-meter 1) (make-meter 2)) to be true"
    (ok (cl-unit:<= (cl-unit.distance:make-meter 1) (cl-unit.distance:make-meter 2)))))
