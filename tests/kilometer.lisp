(defpackage cl-unit/tests/main
  (:use :cl
        :cl-unit
        :rove)
  (:shadow "+" "-" "/" "*" "=" ">" ">=" "<" "<="))
(in-package :cl-unit/tests/main)

(deftest test-kilometer=kilometer-1
  (testing "should (= (make-kilometer 1) (make-kilometer 1)) to be true"
    (ok (cl-unit:= (cl-unit.distance:make-kilometer 1) (cl-unit.distance:make-kilometer 1)))))

(deftest test-kilometer=meter-2
  (testing "should (= (make-kilometer 2) (make-kilometer 1)) to be false"
    (ng (cl-unit:= (cl-unit.distance:make-kilometer 2) (cl-unit.distance:make-kilometer 1)))))

(deftest test-kilometer=kilometer-3
  (testing "should (= (make-kilometer 2) (make-kilometer 3)) to be false"
    (ng (cl-unit:= (cl-unit.distance:make-kilometer 2) (cl-unit.distance:make-kilometer 3)))))

(deftest test-kilometer>kilometer-1
  (testing "should (> (make-kilometer 2) (make-kilometer 1)) to be true"
    (ok (cl-unit:> (cl-unit.distance:make-kilometer 2) (cl-unit.distance:make-kilometer 1)))))

(deftest test-kilometer>kilometer-2
  (testing "should (> (make-kilometer 1) (make-kilometer 1)) to be false"
    (ng (cl-unit:> (cl-unit.distance:make-kilometer 1) (cl-unit.distance:make-kilometer 1)))))

(deftest test-kilometer>kilometer-3
  (testing "should (> (make-kilometer 1) (make-kilometer 2)) to be false"
    (ng (cl-unit:> (cl-unit.distance:make-kilometer 1) (cl-unit.distance:make-kilometer 2)))))

(deftest test-kilometer>=kilometer-1
  (testing "should (>= (make-kilometer 2) (make-kilometer 1)) to be true"
    (ok (cl-unit:>= (cl-unit.distance:make-kilometer 2) (cl-unit.distance:make-kilometer 1)))))

(deftest test-kilometer>=kilometer-2
  (testing "should (>= (make-kilometer 1) (make-kilometer 1)) to be true"
    (ok (cl-unit:>= (cl-unit.distance:make-kilometer 1) (cl-unit.distance:make-kilometer 1)))))

(deftest test-kilometer>=kilometer-3
  (testing "should (>= (make-kilometer 1) (make-kilometer 2)) to be false"
    (ng (cl-unit:>= (cl-unit.distance:make-kilometer 1) (cl-unit.distance:make-kilometer 2)))))

(deftest test-kilometer<kilometer-1
  (testing "should (< (make-meter 1) (make-meter 2)) to be true"
    (ok (cl-unit:< (cl-unit.distance:make-kilometer 1) (cl-unit.distance:make-kilometer 2)))))

(deftest test-kilometer<kilometer-2
  (testing "should (< (make-kilometer 1) (make-kilometer 1)) to be false"
    (ng (cl-unit:< (cl-unit.distance:make-kilometer 1) (cl-unit.distance:make-kilometer 1)))))

(deftest test-kilometer<kilometer-3
  (testing "should (< (make-kilometer 2) (make-kilometer 2)) to be false"
    (ng (cl-unit:< (cl-unit.distance:make-kilometer 2) (cl-unit.distance:make-kilometer 1)))))

(deftest test-kilometer<=kilometer-1
  (testing "should (<= (make-kilometer 2) (make-kilometer 1)) to be false"
    (ng (cl-unit:<= (cl-unit.distance:make-kilometer 2) (cl-unit.distance:make-kilometer 1)))))

(deftest test-kilometer<=kilometer-2
  (testing "should (<= (make-kilometer 1) (make-kilometer 1)) to be true"
    (ok (cl-unit:<= (cl-unit.distance:make-kilometer 1) (cl-unit.distance:make-kilometer 1)))))

(deftest test-kilometer<=kilometer-3
  (testing "should (<= (make-kilometer 1) (make-kilometer 2)) to be true"
    (ok (cl-unit:<= (cl-unit.distance:make-kilometer 1) (cl-unit.distance:make-kilometer 2)))))

(deftest test-kilometer+kilometer-1
  (testing "should (= 2 (val (+ (make-kilometer 1) (make-kilometer 1)))) to be true"
    (ok (cl:= 2 (cl-unit.distance:val (cl-unit:+ (cl-unit.distance:make-kilometer 1) (cl-unit.distance:make-kilometer 1)))))))

(deftest test-kilometer+kilometer-2
  (testing "should (= 3 (val (+ (make-kilometer 1) (make-kilometer 2)))) to be true"
    (ok (cl:= 3 (cl-unit.distance:val (cl-unit:+ (cl-unit.distance:make-kilometer 1) (cl-unit.distance:make-kilometer 2)))))))

(deftest test-kilometer+meter-1
  (testing "should (= 1.01 (val (+ (make-kilometer 1) (make-meter 1)))) to be true"
    (ok (cl:= 1001/1000 (cl-unit.distance:val (cl-unit:+ (cl-unit.distance:make-kilometer 1) (cl-unit.distance:make-meter 1)))))))

(deftest test-kilometer+meter-2
  (testing "should (= 13/10 (val (+ (make-kilometer 1) (make-meter 300)))) to be true"
    (ok (cl:= 13/10 (cl-unit.distance:val (cl-unit:+ (cl-unit.distance:make-kilometer 1) (cl-unit.distance:make-meter 300)))))))

(deftest test-kilometer+centimeter-1
  (testing "should (= 100001/100000 (val (+ (make-kilometer 1) (make-centimeter 1)))) to be true"
    (ok (cl:= 100001/100000 (cl-unit.distance:val (cl-unit:+ (cl-unit.distance:make-kilometer 1) (cl-unit.distance:make-centimeter 1)))))))

(deftest test-kilometer+centimeter-2
  (testing "should (= 1001/1000 (val (+ (make-kilometer 1) (make-centimeter 100)))) to be true"
    (ok (cl:= 1001/1000 (cl-unit.distance:val (cl-unit:+ (cl-unit.distance:make-kilometer 1) (cl-unit.distance:make-centimeter 100)))))))

(deftest test-kilometer-kilometer-1
  (testing "should (= 0 (val (- (make-kilometer 1) (make-kilometer 1)))) to be true"
    (ok (cl:= 0 (cl-unit.distance:val (cl-unit:- (cl-unit.distance:make-kilometer 1) (cl-unit.distance:make-kilometer 1)))))))

(deftest test-kilometer-kilometer-2
  (testing "should (= -1 (val (- (make-kilometer 1) (make-kilometer 2)))) to be true"
    (ok (cl:= -1 (cl-unit.distance:val (cl-unit:- (cl-unit.distance:make-kilometer 1) (cl-unit.distance:make-kilometer 2)))))))

(deftest test-kilometer-meter-1
  (testing "should (= 1/2 (val (- (make-kilometer 1) (make-meter 500)))) to be true"
    (ok (cl:= 1/2 (cl-unit.distance:val (cl-unit:- (cl-unit.distance:make-kilometer 1) (cl-unit.distance:make-meter 500)))))))

(deftest test-kilometer-meter-2
  (testing "should (= -1 (val (- (make-kilometer 1) (make-meter 1500)))) to be true"
    (ok (cl:= -1/2 (cl-unit.distance:val (cl-unit:- (cl-unit.distance:make-kilometer 1) (cl-unit.distance:make-meter 1500)))))))

(deftest test-kilometer-centimeter-1
  (testing "should (= 999/1000 (val (- (make-kilometer 1) (make-centimeter 100)))) to be true"
    (ok (cl:= 999/1000 (cl-unit.distance:val (cl-unit:- (cl-unit.distance:make-kilometer 1) (cl-unit.distance:make-centimeter 100)))))))

(deftest test-kilometer-centimeter-2
  (testing "should (= 197/200 (val (- (make-kilometer 1) (make-centimeter 1500)))) to be true"
    (ok (cl:= 197/200 (cl-unit.distance:val (cl-unit:- (cl-unit.distance:make-kilometer 1) (cl-unit.distance:make-centimeter 1500)))))))

(deftest test-kilometer*kilometer-1
  (testing "should (= 1 (val (* (make-kilometer 1) (make-kilometer 1)))) to be true"
    (ok (cl:= 1 (cl-unit.distance:val (cl-unit:* (cl-unit.distance:make-kilometer 1) (cl-unit.distance:make-kilometer 1)))))))

(deftest test-kilometer*kilometer-2
  (testing "should (= 4 (val (* (make-kilometer 2) (make-kilometer 2)))) to be true"
    (ok (cl:= 4 (cl-unit.distance:val (cl-unit:* (cl-unit.distance:make-kilometer 2) (cl-unit.distance:make-kilometer 2)))))))

(deftest test-kilometer*meter-1
  (testing "should (= 1/500 (val (* (make-kilometer 2) (make-meter 1)))) to be true"
    (ok (cl:= 1/500 (cl-unit.distance:val (cl-unit:* (cl-unit.distance:make-kilometer 2) (cl-unit.distance:make-meter 1)))))))

(deftest test-kilometer*meter-2
  (testing "should (= 1/250 (val (* (make-kilometer 2) (make-meter 2)))) to be true"
    (ok (cl:= 1/250 (cl-unit.distance:val (cl-unit:* (cl-unit.distance:make-kilometer 2) (cl-unit.distance:make-meter 2)))))))

(deftest test-kilometer*centimeter-1
  (testing "should (= 1/500000 (val (* (make-kilometer 2) (make-centimeter 1)))) to be true"
    (ok (cl:= 1/50000 (cl-unit.distance:val (cl-unit:* (cl-unit.distance:make-kilometer 2) (cl-unit.distance:make-centimeter 1)))))))

(deftest test-kilometer*centimeter-2
  (testing "should (= 1/250000 (val (* (make-kilometer 2) (make-centimeter 2)))) to be true"
    (ok (cl:= 1/25000 (cl-unit.distance:val (cl-unit:* (cl-unit.distance:make-kilometer 2) (cl-unit.distance:make-centimeter 2)))))))

(deftest test-kilometer/kilometer-1
  (testing "should (= 1 (val (/ (make-kilometer 2) (make-kilometer 2)))) to be true"
    (ok (cl:= 1 (cl-unit.distance:val (cl-unit:/ (cl-unit.distance:make-kilometer 2) (cl-unit.distance:make-kilometer 2)))))))

(deftest test-kilometer/kilometer-2
  (testing "should (= 5/2 (val (/ (make-kilometer 5) (make-kilometer 2)))) to be true"
    (ok (cl:= 5/2 (cl-unit.distance:val (cl-unit:/ (cl-unit.distance:make-kilometer 5) (cl-unit.distance:make-kilometer 2)))))))
