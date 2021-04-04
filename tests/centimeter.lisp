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

(deftest test-centimeter+1
  (testing "should (= 2 (val (+ (make-centimeter 1) (make-centimeter 1)))) to be true"
    (ok (cl:= 2 (cl-unit.distance:val (cl-unit:+ (cl-unit.distance:make-centimeter 1) (cl-unit.distance:make-centimeter 1)))))))

(deftest test-centimeter+2
  (testing "should (= 3 (val (+ (make-centimeter 1) (make-centimeter 2)))) to be true"
    (ok (cl:= 3 (cl-unit.distance:val (cl-unit:+ (cl-unit.distance:make-centimeter 1) (cl-unit.distance:make-centimeter 2)))))))

(deftest test-centimeter+meter-1
  (testing "should (= 101 (val (+ (make-centimeter 1) (make-meter 1)))) to be true"
    (ok (cl:= 101 (cl-unit.distance:val (cl-unit:+ (cl-unit.distance:make-centimeter 1) (cl-unit.distance:make-meter 1)))))))

(deftest test-centimeter+meter-2
  (testing "should (= 301 (val (+ (make-centimeter 1) (make-meter 300)))) to be true"
    (ok (cl:= 301 (cl-unit.distance:val (cl-unit:+ (cl-unit.distance:make-centimeter 1) (cl-unit.distance:make-meter 3)))))))

(deftest test-centimeter+kilometer-1
  (testing "should (= 100001  (val (+ (make-centimeter 1) (make-centimeter 1)))) to be true"
    (ok (cl:= 100001 (cl-unit.distance:val (cl-unit:+ (cl-unit.distance:make-centimeter 1) (cl-unit.distance:make-kilometer 1)))))))

(deftest test-centimeter+kilometer-2
  (testing "should (= 300001   (val (+ (make-centimeter 1) (make-kilometer 3)))) to be true"
    (ok (cl:= 300001  (cl-unit.distance:val (cl-unit:+ (cl-unit.distance:make-centimeter 1) (cl-unit.distance:make-kilometer 3)))))))

(deftest test-centimeter-1
  (testing "should (= 0 (val (- (make-centimeter 1) (make-centimeter 1)))) to be true"
    (ok (cl:= 0 (cl-unit.distance:val (cl-unit:- (cl-unit.distance:make-centimeter 1) (cl-unit.distance:make-centimeter 1)))))))

(deftest test-centimeter-2
  (testing "should (= -1 (val (- (make-centimeter 1) (make-centimeter 2)))) to be true"
    (ok (cl:= -1 (cl-unit.distance:val (cl-unit:- (cl-unit.distance:make-centimeter 1) (cl-unit.distance:make-centimeter 2)))))))

(deftest test-centimeter*1
  (testing "should (= 1 (val (* (make-centimeter 1) (make-centimeter 1)))) to be true"
    (ok (cl:= 1 (cl-unit.distance:val (cl-unit:* (cl-unit.distance:make-centimeter 1) (cl-unit.distance:make-centimeter 1)))))))

(deftest test-centimeter*2
  (testing "should (= 4 (val (* (make-centimeter 2) (make-centimeter 2)))) to be true"
    (ok (cl:= 4 (cl-unit.distance:val (cl-unit:* (cl-unit.distance:make-centimeter 2) (cl-unit.distance:make-centimeter 2)))))))

(deftest test-centimeter/1
  (testing "should (= 1 (val (/ (make-centimeter 2) (make-centimeter 2)))) to be true"
    (ok (cl:= 1 (cl-unit.distance:val (cl-unit:/ (cl-unit.distance:make-centimeter 2) (cl-unit.distance:make-centimeter 2)))))))

(deftest test-centimeter/2
  (testing "should (= 5/2 (val (/ (make-centimeter 5) (make-centimeter 2)))) to be true"
    (ok (cl:= 5/2 (cl-unit.distance:val (cl-unit:/ (cl-unit.distance:make-centimeter 5) (cl-unit.distance:make-centimeter 2)))))))
