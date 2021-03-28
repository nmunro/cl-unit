(defpackage cl-unit/tests/main
  (:use :cl
        :cl-unit
        :rove)
  (:shadow "+" "-" "/" "*" "=" ">" ">=" "<" "<="))
(in-package :cl-unit/tests/main)

(deftest test-kilometer=1
  (testing "should (= (make-kilometer 1) (make-kilometer 1)) to be true"
    (ok (cl-unit:= (cl-unit.distance:make-kilometer 1) (cl-unit.distance:make-kilometer 1)))))

(deftest test-kilometer=2
  (testing "should (= (make-kilometer 2) (make-kilometer 1)) to be false"
    (ng (cl-unit:= (cl-unit.distance:make-kilometer 2) (cl-unit.distance:make-kilometer 1)))))

(deftest test-kilometer=3
  (testing "should (= (make-kilometer 2) (make-kilometer 3)) to be false"
    (ng (cl-unit:= (cl-unit.distance:make-kilometer 2) (cl-unit.distance:make-kilometer 3)))))

(deftest test-kilometer>-1
  (testing "should (> (make-kilometer 2) (make-kilometer 1)) to be true"
    (ok (cl-unit:> (cl-unit.distance:make-kilometer 2) (cl-unit.distance:make-kilometer 1)))))

(deftest test-kilometer>-2
  (testing "should (> (make-kilometer 1) (make-kilometer 1)) to be false"
    (ng (cl-unit:> (cl-unit.distance:make-kilometer 1) (cl-unit.distance:make-kilometer 1)))))

(deftest test-kilometer>-3
  (testing "should (> (make-kilometer 1) (make-kilometer 2)) to be false"
    (ng (cl-unit:> (cl-unit.distance:make-kilometer 1) (cl-unit.distance:make-kilometer 2)))))

(deftest test-kilometer>=-1
  (testing "should (>= (make-kilometer 2) (make-kilometer 1)) to be true"
    (ok (cl-unit:>= (cl-unit.distance:make-kilometer 2) (cl-unit.distance:make-kilometer 1)))))

(deftest test-kilometer>=-2
  (testing "should (>= (make-kilometer 1) (make-kilometer 1)) to be true"
    (ok (cl-unit:>= (cl-unit.distance:make-kilometer 1) (cl-unit.distance:make-kilometer 1)))))

(deftest test-kilometer>=-3
  (testing "should (>= (make-kilometer 1) (make-kilometer 2)) to be false"
    (ng (cl-unit:>= (cl-unit.distance:make-kilometer 1) (cl-unit.distance:make-kilometer 2)))))

(deftest test-kilometer<-1
  (testing "should (< (make-meter 1) (make-meter 2)) to be true"
    (ok (cl-unit:< (cl-unit.distance:make-kilometer 1) (cl-unit.distance:make-kilometer 2)))))

(deftest test-kilometer<-2
  (testing "should (< (make-kilometer 1) (make-kilometer 1)) to be false"
    (ng (cl-unit:< (cl-unit.distance:make-kilometer 1) (cl-unit.distance:make-kilometer 1)))))

(deftest test-kilometer<-3
  (testing "should (< (make-kilometer 2) (make-kilometer 2)) to be false"
    (ng (cl-unit:< (cl-unit.distance:make-kilometer 2) (cl-unit.distance:make-kilometer 1)))))

(deftest test-kilometer<=-1
  (testing "should (<= (make-kilometer 2) (make-kilometer 1)) to be false"
    (ng (cl-unit:<= (cl-unit.distance:make-kilometer 2) (cl-unit.distance:make-kilometer 1)))))

(deftest test-kilometer<=-2
  (testing "should (<= (make-kilometer 1) (make-kilometer 1)) to be true"
    (ok (cl-unit:<= (cl-unit.distance:make-kilometer 1) (cl-unit.distance:make-kilometer 1)))))

(deftest test-kilometer<=-3
  (testing "should (<= (make-kilometer 1) (make-kilometer 2)) to be true"
    (ok (cl-unit:<= (cl-unit.distance:make-kilometer 1) (cl-unit.distance:make-kilometer 2)))))

(deftest test-kilometer+1
  (testing "should (= 2 (val (+ (make-kilometer 1) (make-kilometer 1)))) to be true"
    (ok (cl:= 2 (cl-unit.distance:val (cl-unit:+ (cl-unit.distance:make-kilometer 1) (cl-unit.distance:make-kilometer 1)))))))

(deftest test-kilometer+2
  (testing "should (= 3 (val (+ (make-kilometer 1) (make-kilometer 2)))) to be true"
    (ok (cl:= 3 (cl-unit.distance:val (cl-unit:+ (cl-unit.distance:make-kilometer 1) (cl-unit.distance:make-kilometer 2)))))))

(deftest test-kilometer-1
  (testing "should (= 0 (val (- (make-kilometer 1) (make-kilometer 1)))) to be true"
    (ok (cl:= 0 (cl-unit.distance:val (cl-unit:- (cl-unit.distance:make-kilometer 1) (cl-unit.distance:make-kilometer 1)))))))

(deftest test-kilometer-2
  (testing "should (= -1 (val (- (make-kilometer 1) (make-kilometer 2)))) to be true"
    (ok (cl:= -1 (cl-unit.distance:val (cl-unit:- (cl-unit.distance:make-kilometer 1) (cl-unit.distance:make-kilometer 2)))))))

(deftest test-kilometer*1
  (testing "should (= 1 (val (* (make-kilometer 1) (make-kilometer 1)))) to be true"
    (ok (cl:= 1 (cl-unit.distance:val (cl-unit:* (cl-unit.distance:make-kilometer 1) (cl-unit.distance:make-kilometer 1)))))))

(deftest test-kilometer*2
  (testing "should (= 4 (val (* (make-kilometer 2) (make-kilometer 2)))) to be true"
    (ok (cl:= 4 (cl-unit.distance:val (cl-unit:* (cl-unit.distance:make-kilometer 2) (cl-unit.distance:make-kilometer 2)))))))

(deftest test-kilometer/1
  (testing "should (= 1 (val (/ (make-kilometer 2) (make-kilometer 2)))) to be true"
    (ok (cl:= 1 (cl-unit.distance:val (cl-unit:/ (cl-unit.distance:make-kilometer 2) (cl-unit.distance:make-kilometer 2)))))))

(deftest test-kilometer/2
  (testing "should (= 5/2 (val (/ (make-kilometer 5) (make-kilometer 2)))) to be true"
    (ok (cl:= 5/2 (cl-unit.distance:val (cl-unit:/ (cl-unit.distance:make-kilometer 5) (cl-unit.distance:make-kilometer 2)))))))
