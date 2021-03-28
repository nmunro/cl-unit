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

(deftest test-meter+1
  (testing "should (= 2 (val (+ (make-meter 1) (make-meter 1)))) to be true"
    (ok (cl:= 2 (cl-unit.distance:val (cl-unit:+ (cl-unit.distance:make-meter 1) (cl-unit.distance:make-meter 1)))))))

(deftest test-meter+2
  (testing "should (= 3 (val (+ (make-meter 1) (make-meter 2)))) to be true"
    (ok (cl:= 3 (cl-unit.distance:val (cl-unit:+ (cl-unit.distance:make-meter 1) (cl-unit.distance:make-meter 2)))))))

(deftest test-meter-1
  (testing "should (= 0 (val (- (make-meter 1) (make-meter 1)))) to be true"
    (ok (cl:= 0 (cl-unit.distance:val (cl-unit:- (cl-unit.distance:make-meter 1) (cl-unit.distance:make-meter 1)))))))

(deftest test-meter-2
  (testing "should (= -1 (val (- (make-meter 1) (make-meter 2)))) to be true"
    (ok (cl:= -1 (cl-unit.distance:val (cl-unit:- (cl-unit.distance:make-meter 1) (cl-unit.distance:make-meter 2)))))))

(deftest test-meter*1
  (testing "should (= 1 (val (* (make-meter 1) (make-meter 1)))) to be true"
    (ok (cl:= 1 (cl-unit.distance:val (cl-unit:* (cl-unit.distance:make-meter 1) (cl-unit.distance:make-meter 1)))))))

(deftest test-meter*2
  (testing "should (= 4 (val (* (make-meter 2) (make-meter 2)))) to be true"
    (ok (cl:= 4 (cl-unit.distance:val (cl-unit:* (cl-unit.distance:make-meter 2) (cl-unit.distance:make-meter 2)))))))

(deftest test-meter/1
  (testing "should (= 1 (val (/ (make-meter 2) (make-meter 2)))) to be true"
    (ok (cl:= 1 (cl-unit.distance:val (cl-unit:/ (cl-unit.distance:make-meter 2) (cl-unit.distance:make-meter 2)))))))

(deftest test-meter/2
  (testing "should (= 5/2 (val (/ (make-meter 5) (make-meter 2)))) to be true"
    (ok (cl:= 5/2 (cl-unit.distance:val (cl-unit:/ (cl-unit.distance:make-meter 5) (cl-unit.distance:make-meter 2)))))))
