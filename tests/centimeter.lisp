(defpackage cl-unit/tests/main
  (:use :cl
        :cl-unit
        :rove)
  (:shadow "+" "-" "/" "*" "=" ">" ">=" "<" "<="))
(in-package :cl-unit/tests/main)

(deftest test-centimeter=1
  (testing "should (= (make-centimeter 1) (make-centimeter 1)) to be true"
    (ok (cl-unit:= (cl-unit.distance:make-centimeter 1) (cl-unit.distance:make-centimeter 1)))))

(deftest test-centimeter=2
  (testing "should (= (make-centimeter 2) (make-centimeter 1)) to be false"
    (ng (cl-unit:= (cl-unit.distance:make-centimeter 2) (cl-unit.distance:make-centimeter 1)))))

(deftest test-centimeter=3
  (testing "should (= (make-centimeter 2) (make-centimeter 3)) to be false"
    (ng (cl-unit:= (cl-unit.distance:make-centimeter 2) (cl-unit.distance:make-centimeter 3)))))

(deftest test-centimeter>-1
  (testing "should (> (make-centimeter 2) (make-centimeter 1)) to be true"
    (ok (cl-unit:> (cl-unit.distance:make-centimeter 2) (cl-unit.distance:make-centimeter 1)))))

(deftest test-centimeter>-2
  (testing "should (> (make-centimeter 1) (make-centimeter 1)) to be false"
    (ng (cl-unit:> (cl-unit.distance:make-centimeter 1) (cl-unit.distance:make-centimeter 1)))))

(deftest test-centimeter>-3
  (testing "should (> (make-centimeter 1) (make-centimeter 2)) to be false"
    (ng (cl-unit:> (cl-unit.distance:make-centimeter 1) (cl-unit.distance:make-centimeter 2)))))

(deftest test-centimeter>=-1
  (testing "should (>= (make-centimeter 2) (make-centimeter 1)) to be true"
    (ok (cl-unit:>= (cl-unit.distance:make-centimeter 2) (cl-unit.distance:make-centimeter 1)))))

(deftest test-centimeter>=-2
  (testing "should (>= (make-centimeter 1) (make-centimeter 1)) to be true"
    (ok (cl-unit:>= (cl-unit.distance:make-centimeter 1) (cl-unit.distance:make-centimeter 1)))))

(deftest test-centimeter>=-3
  (testing "should (>= (make-centimeter 1) (make-centimeter 2)) to be false"
    (ng (cl-unit:>= (cl-unit.distance:make-centimeter 1) (cl-unit.distance:make-centimeter 2)))))

(deftest test-centimeter<-1
  (testing "should (< (make-meter 1) (make-meter 2)) to be true"
    (ok (cl-unit:< (cl-unit.distance:make-centimeter 1) (cl-unit.distance:make-centimeter 2)))))

(deftest test-centimeter<-2
  (testing "should (< (make-centimeter 1) (make-centimeter 1)) to be false"
    (ng (cl-unit:< (cl-unit.distance:make-centimeter 1) (cl-unit.distance:make-centimeter 1)))))

(deftest test-centimeter<-3
  (testing "should (< (make-centimeter 2) (make-centimeter 2)) to be false"
    (ng (cl-unit:< (cl-unit.distance:make-centimeter 2) (cl-unit.distance:make-centimeter 1)))))

(deftest test-centimeter<=-1
  (testing "should (<= (make-centimeter 2) (make-centimeter 1)) to be false"
    (ng (cl-unit:<= (cl-unit.distance:make-centimeter 2) (cl-unit.distance:make-centimeter 1)))))

(deftest test-centimeter<=-2
  (testing "should (<= (make-centimeter 1) (make-centimeter 1)) to be true"
    (ok (cl-unit:<= (cl-unit.distance:make-centimeter 1) (cl-unit.distance:make-centimeter 1)))))

(deftest test-centimeter<=-3
  (testing "should (<= (make-centimeter 1) (make-centimeter 2)) to be true"
    (ok (cl-unit:<= (cl-unit.distance:make-centimeter 1) (cl-unit.distance:make-centimeter 2)))))
