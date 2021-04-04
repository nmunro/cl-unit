(defpackage cl-unit/tests/main
  (:use :cl
        :cl-unit
        :rove)
  (:shadow "+" "-" "/" "*" "=" ">" ">=" "<" "<="))
(in-package :cl-unit/tests/main)

(deftest test-meter=meter-1
  (testing "should (= (make-meter 1) (make-meter 1)) to be true"
    (ok (cl-unit:= (cl-unit.distance:make-meter 1) (cl-unit.distance:make-meter 1)))))

(deftest test-meter=meter-2
  (testing "should (= (make-meter 2) (make-meter 1)) to be false"
    (ng (cl-unit:= (cl-unit.distance:make-meter 2) (cl-unit.distance:make-meter 1)))))

(deftest test-meter=meter-3
  (testing "should (= (make-meter 2) (make-meter 3)) to be false"
    (ng (cl-unit:= (cl-unit.distance:make-meter 2) (cl-unit.distance:make-meter 3)))))

(deftest test-meter>meter-1
  (testing "should (> (make-meter 2) (make-meter 1)) to be true"
    (ok (cl-unit:> (cl-unit.distance:make-meter 2) (cl-unit.distance:make-meter 1)))))

(deftest test-meter>meter-2
  (testing "should (> (make-meter 1) (make-meter 1)) to be false"
    (ng (cl-unit:> (cl-unit.distance:make-meter 1) (cl-unit.distance:make-meter 1)))))

(deftest test-meter>meter-3
  (testing "should (> (make-meter 1) (make-meter 2)) to be false"
    (ng (cl-unit:> (cl-unit.distance:make-meter 1) (cl-unit.distance:make-meter 2)))))

(deftest test-meter>=meter-1
  (testing "should (>= (make-meter 2) (make-meter 1)) to be true"
    (ok (cl-unit:>= (cl-unit.distance:make-meter 2) (cl-unit.distance:make-meter 1)))))

(deftest test-meter>=meter-2
  (testing "should (>= (make-meter 1) (make-meter 1)) to be true"
    (ok (cl-unit:>= (cl-unit.distance:make-meter 1) (cl-unit.distance:make-meter 1)))))

(deftest test-meter>=meter-3
  (testing "should (>= (make-meter 1) (make-meter 2)) to be false"
    (ng (cl-unit:>= (cl-unit.distance:make-meter 1) (cl-unit.distance:make-meter 2)))))

(deftest test-meter<meter-1
  (testing "should (< (make-meter 1) (make-meter 2)) to be true"
    (ok (cl-unit:< (cl-unit.distance:make-meter 1) (cl-unit.distance:make-meter 2)))))

(deftest test-meter<meter-2
  (testing "should (< (make-meter 1) (make-meter 1)) to be false"
    (ng (cl-unit:< (cl-unit.distance:make-meter 1) (cl-unit.distance:make-meter 1)))))

(deftest test-meter<meter-3
  (testing "should (< (make-meter 2) (make-meter 2)) to be false"
    (ng (cl-unit:< (cl-unit.distance:make-meter 2) (cl-unit.distance:make-meter 1)))))

(deftest test-meter<=meter-1
  (testing "should (<= (make-meter 2) (make-meter 1)) to be false"
    (ng (cl-unit:<= (cl-unit.distance:make-meter 2) (cl-unit.distance:make-meter 1)))))

(deftest test-meter<=meter-2
  (testing "should (<= (make-meter 1) (make-meter 1)) to be true"
    (ok (cl-unit:<= (cl-unit.distance:make-meter 1) (cl-unit.distance:make-meter 1)))))

(deftest test-meter<=meter-3
  (testing "should (<= (make-meter 1) (make-meter 2)) to be true"
    (ok (cl-unit:<= (cl-unit.distance:make-meter 1) (cl-unit.distance:make-meter 2)))))

(deftest test-meter+meter-1
  (testing "should (= 2 (val (+ (make-meter 1) (make-meter 1)))) to be true"
    (ok (cl:= 2 (cl-unit.distance:val (cl-unit:+ (cl-unit.distance:make-meter 1) (cl-unit.distance:make-meter 1)))))))

(deftest test-meter+meter-2
  (testing "should (= 3 (val (+ (make-meter 1) (make-meter 2)))) to be true"
    (ok (cl:= 3 (cl-unit.distance:val (cl-unit:+ (cl-unit.distance:make-meter 1) (cl-unit.distance:make-meter 2)))))))

(deftest test-meter+kilometer-1
  (testing "should (= 1001 (val (+ (make-meter 1) (make-kilometer 1)))) to be true"
    (ok (cl:= 1001 (cl-unit.distance:val (cl-unit:+ (cl-unit.distance:make-meter 1) (cl-unit.distance:make-kilometer 1)))))))

(deftest test-meter+centimeter-1
  (testing "should (= 1.01 (val (+ (make-meter 1) (make-centimeter 1)))) to be true"
    (ok (cl:= 1.01 (cl-unit.distance:val (cl-unit:+ (cl-unit.distance:make-meter 1) (cl-unit.distance:make-centimeter 1)))))))

(deftest test-meter+centimeter-2
  (testing "should (= 1.01 (val (+ (make-meter 1) (make-centimeter 1)))) to be true"
    (ok (cl:= 2.00 (cl-unit.distance:val (cl-unit:+ (cl-unit.distance:make-meter 1) (cl-unit.distance:make-centimeter 100)))))))

(deftest test-meter-meter-1
  (testing "should (= 0 (val (- (make-meter 1) (make-meter 1)))) to be true"
    (ok (cl:= 0 (cl-unit.distance:val (cl-unit:- (cl-unit.distance:make-meter 1) (cl-unit.distance:make-meter 1)))))))

(deftest test-meter-meter-2
  (testing "should (= -1 (val (- (make-meter 1) (make-meter 2)))) to be true"
    (ok (cl:= -1 (cl-unit.distance:val (cl-unit:- (cl-unit.distance:make-meter 1) (cl-unit.distance:make-meter 2)))))))

(deftest test-meter-kilometer-1
  (testing "should (= 1000 (val (- (make-meter 2000) (make-kilometer 1)))) to be true"
    (ok (cl:= 1000 (cl-unit.distance:val (cl-unit:- (cl-unit.distance:make-meter 2000) (cl-unit.distance:make-kilometer 1)))))))

(deftest test-meter-kilometer-2
  (testing "should (= -500 (val (- (make-meter 1500) (make-kilometer 1)))) to be true"
    (ok (cl:= -500 (cl-unit.distance:val (cl-unit:- (cl-unit.distance:make-meter 1500) (cl-unit.distance:make-kilometer 2)))))))

(deftest test-meter-centimeter-1
  (testing "should (= 0.9 (val (- (make-meter 1) (make-centimeter 10)))) to be true"
    (ok (cl:= 9/10 (cl-unit.distance:val (cl-unit:- (cl-unit.distance:make-meter 1) (cl-unit.distance:make-centimeter 10)))))))

(deftest test-meter-centimeter-2
  (testing "should (= -1 (val (- (make-meter 1) (make-centimeter 2)))) to be true"
    (ok (cl:= 49/50 (cl-unit.distance:val (cl-unit:- (cl-unit.distance:make-meter 1) (cl-unit.distance:make-centimeter 2)))))))

(deftest test-meter*meter-1
  (testing "should (= 1 (val (* (make-meter 1) (make-meter 1)))) to be true"
    (ok (cl:= 1 (cl-unit.distance:val (cl-unit:* (cl-unit.distance:make-meter 1) (cl-unit.distance:make-meter 1)))))))

(deftest test-meter*meter-2
  (testing "should (= 4 (val (* (make-meter 2) (make-meter 2)))) to be true"
    (ok (cl:= 4 (cl-unit.distance:val (cl-unit:* (cl-unit.distance:make-meter 2) (cl-unit.distance:make-meter 2)))))))

(deftest test-meter*kilometer-1
  (testing "should (= 2000 (val (* (make-meter 2) (make-kilometer 1)))) to be true"
    (ok (cl:= 2000 (cl-unit.distance:val (cl-unit:* (cl-unit.distance:make-meter 2) (cl-unit.distance:make-kilometer 1)))))))

(deftest test-meter*kilometer-2
  (testing "should (= 4000 (val (* (make-meter 2) (make-kilometer 2)))) to be true"
    (ok (cl:= 4000 (cl-unit.distance:val (cl-unit:* (cl-unit.distance:make-meter 2) (cl-unit.distance:make-kilometer 2)))))))

(deftest test-meter*centimeter-1
  (testing "should (= 2.01 (val (* (make-meter 2) (make-centimeter 1)))) to be true"
    (ok (cl:= 1/50 (cl-unit.distance:val (cl-unit:* (cl-unit.distance:make-meter 2) (cl-unit.distance:make-centimeter 1)))))))

(deftest test-meter*centimeter-2
  (testing "should (= 1/25 (val (* (make-meter 2) (make-meter 2)))) to be true"
    (ok (cl:= 1/25 (cl-unit.distance:val (cl-unit:* (cl-unit.distance:make-meter 2) (cl-unit.distance:make-centimeter 2)))))))

(deftest test-meter/meter-1
  (testing "should (= 1 (val (/ (make-meter 2) (make-meter 2)))) to be true"
    (ok (cl:= 1 (cl-unit.distance:val (cl-unit:/ (cl-unit.distance:make-meter 2) (cl-unit.distance:make-meter 2)))))))

(deftest test-meter/meter-2
  (testing "should (= 5/2 (val (/ (make-meter 5) (make-meter 2)))) to be true"
    (ok (cl:= 5/2 (cl-unit.distance:val (cl-unit:/ (cl-unit.distance:make-meter 5) (cl-unit.distance:make-meter 2)))))))
