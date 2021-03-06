(defpackage cl-unit/tests/main
  (:use :cl
        :cl-unit
        :rove)
  (:shadow "+" "-" "/" "*" "=" ">" ">=" "<" "<="))
(in-package :cl-unit/tests/main)

(deftest test-centimeter=centimeter-1
  (testing "should (= (make-centimeter 1) (make-centimeter 1)) to be true"
    (ok (cl-unit:= (cl-unit.distance:make-centimeter 1) (cl-unit.distance:make-centimeter 1)))))

(deftest test-centimeter=centimeter-2
  (testing "should (= (make-centimeter 2) (make-centimeter 1)) to be false"
    (ng (cl-unit:= (cl-unit.distance:make-centimeter 2) (cl-unit.distance:make-centimeter 1)))))

(deftest test-centimeter=centimeter-3
  (testing "should (= (make-centimeter 2) (make-centimeter 3)) to be false"
    (ng (cl-unit:= (cl-unit.distance:make-centimeter 2) (cl-unit.distance:make-centimeter 3)))))

(deftest test-centimeter>centimeter-1
  (testing "should (> (make-centimeter 2) (make-centimeter 1)) to be true"
    (ok (cl-unit:> (cl-unit.distance:make-centimeter 2) (cl-unit.distance:make-centimeter 1)))))

(deftest test-centimeter>centimeter-2
  (testing "should (> (make-centimeter 1) (make-centimeter 1)) to be false"
    (ng (cl-unit:> (cl-unit.distance:make-centimeter 1) (cl-unit.distance:make-centimeter 1)))))

(deftest test-centimeter>centimeter-3
  (testing "should (> (make-centimeter 1) (make-centimeter 2)) to be false"
    (ng (cl-unit:> (cl-unit.distance:make-centimeter 1) (cl-unit.distance:make-centimeter 2)))))

(deftest test-centimeter>kilometer-1
  (testing "should (> (make-centimeter 1) (make-kilometer 1)) to be false"
    (ng (cl-unit:> (cl-unit.distance:make-centimeter 1) (cl-unit.distance:make-kilometer 1)))))

(deftest test-centimeter>kilometer-2
  (testing "should (> (make-centimeter 100001) (make-kilometer 1)) to be true"
    (ok (cl-unit:> (cl-unit.distance:make-centimeter 100001) (cl-unit.distance:make-kilometer 1)))))

(deftest test-centimeter>kilometer-3
  (testing "should (> (make-centimeter 100000) (make-kilometer 1)) to be false"
    (ng (cl-unit:> (cl-unit.distance:make-centimeter 100000) (cl-unit.distance:make-kilometer 1)))))

(deftest test-centimeter>meter-1
  (testing "should (> (make-centimeter 100) (make-meter 1)) to be false"
    (ng (cl-unit:> (cl-unit.distance:make-centimeter 100) (cl-unit.distance:make-meter 1)))))

(deftest test-centimeter>meter-2
  (testing "should (> (make-centimeter 101) (make-meter 1)) to be true"
    (ok (cl-unit:> (cl-unit.distance:make-centimeter 101) (cl-unit.distance:make-meter 1)))))

(deftest test-centimeter>=centimeter-1
  (testing "should (>= (make-centimeter 2) (make-centimeter 1)) to be true"
    (ok (cl-unit:>= (cl-unit.distance:make-centimeter 2) (cl-unit.distance:make-centimeter 1)))))

(deftest test-centimeter>=centimeter-2
  (testing "should (>= (make-centimeter 1) (make-centimeter 1)) to be true"
    (ok (cl-unit:>= (cl-unit.distance:make-centimeter 1) (cl-unit.distance:make-centimeter 1)))))

(deftest test-centimeter>=centimeter-3
  (testing "should (>= (make-centimeter 1) (make-centimeter 2)) to be false"
    (ng (cl-unit:>= (cl-unit.distance:make-centimeter 1) (cl-unit.distance:make-centimeter 2)))))

(deftest test-centimeter>=meter-1
  (testing "should (>= (make-centimeter 100) (make-meter 1)) to be false"
    (ok (cl-unit:>= (cl-unit.distance:make-centimeter 100) (cl-unit.distance:make-meter 1)))))

(deftest test-centimeter>=meter-2
  (testing "should (>= (make-centimeter 101) (make-meter 1)) to be false"
    (ok (cl-unit:>= (cl-unit.distance:make-centimeter 101) (cl-unit.distance:make-meter 1)))))

(deftest test-centimeter>=kilometer-1
  (testing "should (>= (make-centimeter 1) (make-kilometer 1)) to be false"
    (ng (cl-unit:>= (cl-unit.distance:make-centimeter 1) (cl-unit.distance:make-kilometer 1)))))

(deftest test-centimeter>=kilometer-2
  (testing "should (>= (make-centimeter 100000) (make-kilometer 1)) to be true"
    (ok (cl-unit:>= (cl-unit.distance:make-centimeter 100000) (cl-unit.distance:make-kilometer 1)))))

(deftest test-centimeter>=kilometer-3
  (testing "should (>= (make-centimeter 100001) (make-kilometer 1)) to be true"
    (ok (cl-unit:>= (cl-unit.distance:make-centimeter 100001) (cl-unit.distance:make-kilometer 1)))))

(deftest test-centimeter<centimeter-1
  (testing "should (< (make-meter 1) (make-meter 2)) to be true"
    (ok (cl-unit:< (cl-unit.distance:make-centimeter 1) (cl-unit.distance:make-centimeter 2)))))

(deftest test-centimeter<centimeter-2
  (testing "should (< (make-centimeter 1) (make-centimeter 1)) to be false"
    (ng (cl-unit:< (cl-unit.distance:make-centimeter 1) (cl-unit.distance:make-centimeter 1)))))

(deftest test-centimeter<centimeter-3
  (testing "should (< (make-centimeter 2) (make-centimeter 2)) to be false"
    (ng (cl-unit:< (cl-unit.distance:make-centimeter 2) (cl-unit.distance:make-centimeter 1)))))

(deftest test-centimeter<meter-1
  (testing "should (< (make-centimeter 1) (make-meter 1)) to be false"
    (ok (cl-unit:< (cl-unit.distance:make-centimeter 1) (cl-unit.distance:make-meter 1)))))

(deftest test-centimeter<meter-2
  (testing "should (< (make-centimeter 101) (make-meter 1)) to be false"
    (ng (cl-unit:< (cl-unit.distance:make-centimeter 101) (cl-unit.distance:make-meter 1)))))

(deftest test-centimeter<meter-3
  (testing "should (< (make-centimeter 100) (make-meter 1)) to be false"
    (ng (cl-unit:< (cl-unit.distance:make-centimeter 100) (cl-unit.distance:make-meter 1)))))

(deftest test-centimeter<kilometer-1
  (testing "should (< (make-centimeter 100001) (make-kilometer 1)) to be false"
    (ng (cl-unit:< (cl-unit.distance:make-centimeter 100001) (cl-unit.distance:make-kilometer 1)))))

(deftest test-centimeter<kilometer-2
  (testing "should (< (make-centimeter 100000) (make-kilometer 1)) to be false"
    (ng (cl-unit:< (cl-unit.distance:make-centimeter 100000) (cl-unit.distance:make-kilometer 1)))))

(deftest test-centimeter<=centimeter-1
  (testing "should (<= (make-centimeter 2) (make-centimeter 1)) to be false"
    (ng (cl-unit:<= (cl-unit.distance:make-centimeter 2) (cl-unit.distance:make-centimeter 1)))))

(deftest test-centimeter<=centimeter-2
  (testing "should (<= (make-centimeter 1) (make-centimeter 1)) to be true"
    (ok (cl-unit:<= (cl-unit.distance:make-centimeter 1) (cl-unit.distance:make-centimeter 1)))))

(deftest test-centimeter<=centimeter-3
  (testing "should (<= (make-centimeter 1) (make-centimeter 2)) to be true"
    (ok (cl-unit:<= (cl-unit.distance:make-centimeter 1) (cl-unit.distance:make-centimeter 2)))))

(deftest test-centimeter<=meter-1
  (testing "should (<= (make-centimeter 1) (make-meter 1)) to be true"
    (ok (cl-unit:<= (cl-unit.distance:make-centimeter 1) (cl-unit.distance:make-meter 1)))))

(deftest test-centimeter<=meter-2
  (testing "should (<= (make-centimeter 100) (make-meter 1)) to be true"
    (ok (cl-unit:<= (cl-unit.distance:make-centimeter 100) (cl-unit.distance:make-meter 1)))))

(deftest test-centimeter<=kilometer-1
  (testing "should (<= (make-centimeter 100000) (make-kilometer 1)) to be true"
    (ok (cl-unit:<= (cl-unit.distance:make-centimeter 100000) (cl-unit.distance:make-kilometer 1)))))

(deftest test-centimeter<=kilometer-2
  (testing "should (<= (make-centimeter 100001) (make-kilometer 1)) to be true"
    (ng (cl-unit:<= (cl-unit.distance:make-centimeter 100001) (cl-unit.distance:make-kilometer 1)))))

(deftest test-centimeter+centimeter-1
  (testing "should (= 2 (val (+ (make-centimeter 1) (make-centimeter 1)))) to be true"
    (ok (cl:= 2 (cl-unit.distance:val (cl-unit:+ (cl-unit.distance:make-centimeter 1) (cl-unit.distance:make-centimeter 1)))))))

(deftest test-centimeter+centimeter-2
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

(deftest test-centimeter-centimeter-1
  (testing "should (= 0 (val (- (make-centimeter 1) (make-centimeter 1)))) to be true"
    (ok (cl:= 0 (cl-unit.distance:val (cl-unit:- (cl-unit.distance:make-centimeter 1) (cl-unit.distance:make-centimeter 1)))))))

(deftest test-centimeter-centimeter-2
  (testing "should (= -1 (val (- (make-centimeter 1) (make-centimeter 2)))) to be true"
    (ok (cl:= -1 (cl-unit.distance:val (cl-unit:- (cl-unit.distance:make-centimeter 1) (cl-unit.distance:make-centimeter 2)))))))

(deftest test-centimeter-meter-1
  (testing "should (= 400 (val (- (make-centimeter 500) (make-meter 1)))) to be true"
    (ok (cl:= 400 (cl-unit.distance:val (cl-unit:- (cl-unit.distance:make-centimeter 500) (cl-unit.distance:make-meter 1)))))))

(deftest test-centimeter-meter-2
  (testing "should (= 0 (val (- (make-centimeter 50) (make-meter 0.5)))) to be true"
    (ok (cl:= 0 (cl-unit.distance:val (cl-unit:- (cl-unit.distance:make-centimeter 50) (cl-unit.distance:make-meter 0.5)))))))

(deftest test-centimeter-kilometer-1
  (testing "should (= 0 (val (- (make-centimeter 100000) (make-kilometer 1)))) to be true"
    (ok (cl:= 0 (cl-unit.distance:val (cl-unit:- (cl-unit.distance:make-centimeter 100000) (cl-unit.distance:make-kilometer 1)))))))

(deftest test-centimeter-kilometer-2
  (testing "should (= 0 (val (- (make-centimeter 50000) (make-kilometer 0.5)))) to be true"
    (ok (cl:= 0 (cl-unit.distance:val (cl-unit:- (cl-unit.distance:make-centimeter 50000) (cl-unit.distance:make-kilometer 0.5)))))))

(deftest test-centimeter*centimeter-1
  (testing "should (= 1 (val (* (make-centimeter 1) (make-centimeter 1)))) to be true"
    (ok (cl:= 1 (cl-unit.distance:val (cl-unit:* (cl-unit.distance:make-centimeter 1) (cl-unit.distance:make-centimeter 1)))))))

(deftest test-centimeter*centimeter-2
  (testing "should (= 4 (val (* (make-centimeter 2) (make-centimeter 2)))) to be true"
    (ok (cl:= 4 (cl-unit.distance:val (cl-unit:* (cl-unit.distance:make-centimeter 2) (cl-unit.distance:make-centimeter 2)))))))

(deftest test-centimeter*meter-1
  (testing "should (= 200 (val (* (make-centimeter 2) (make-meter 1)))) to be true"
    (ok (cl:= 200 (cl-unit.distance:val (cl-unit:* (cl-unit.distance:make-centimeter 2) (cl-unit.distance:make-meter 1)))))))

(deftest test-centimeter*meter-2
  (testing "should (= 400 (val (* (make-centimeter 2) (make-meter 2)))) to be true"
    (ok (cl:= 400 (cl-unit.distance:val (cl-unit:* (cl-unit.distance:make-centimeter 2) (cl-unit.distance:make-meter 2)))))))

(deftest test-centimeter*kilometer-1
  (testing "should (= 200000 (val (* (make-centimeter 2) (make-kilometer 1)))) to be true"
    (ok (cl:= 200000 (cl-unit.distance:val (cl-unit:* (cl-unit.distance:make-centimeter 2) (cl-unit.distance:make-kilometer 1)))))))

(deftest test-centimeter*kilometer-2
  (testing "should (= 400000 (val (* (make-centimeter 2) (make-kilometer 2)))) to be true"
    (ok (cl:= 400000 (cl-unit.distance:val (cl-unit:* (cl-unit.distance:make-centimeter 2) (cl-unit.distance:make-kilometer 2)))))))

(deftest test-centimeter/centimeter-1
  (testing "should (= 1 (val (/ (make-centimeter 2) (make-centimeter 2)))) to be true"
    (ok (cl:= 1 (cl-unit.distance:val (cl-unit:/ (cl-unit.distance:make-centimeter 2) (cl-unit.distance:make-centimeter 2)))))))

(deftest test-centimeter/centimeter-2
  (testing "should (= 5/2 (val (/ (make-centimeter 5) (make-centimeter 2)))) to be true"
    (ok (cl:= 5/2 (cl-unit.distance:val (cl-unit:/ (cl-unit.distance:make-centimeter 5) (cl-unit.distance:make-centimeter 2)))))))

(deftest test-centimeter/meter-1
  (testing "should (= 1/200 (val (/ (make-centimeter 2) (make-meter 2)))) to be true"
    (ok (cl:= 1/200 (cl-unit.distance:val (cl-unit:/ (cl-unit.distance:make-centimeter 1) (cl-unit.distance:make-meter 2)))))))

(deftest test-centimeter/meter-2
  (testing "should (= 1/100 (val (/ (make-centimeter 2) (make-meter 2)))) to be true"
    (ok (cl:= 1/100 (cl-unit.distance:val (cl-unit:/ (cl-unit.distance:make-centimeter 2) (cl-unit.distance:make-meter 2)))))))

(deftest test-centimeter/kilometer-1
  (testing "should (= 1/200000  (val (/ (make-centimeter 1) (make-kilometer 2)))) to be true"
    (ok (cl:= 1/200000 (cl-unit.distance:val (cl-unit:/ (cl-unit.distance:make-centimeter 1) (cl-unit.distance:make-kilometer 2)))))))

(deftest test-centimeter/kilometer-2
  (testing "should (= 1/100000 (val (/ (make-centimeter 2) (make-kilometer 2)))) to be true"
    (ok (cl:= 1/100000 (cl-unit.distance:val (cl-unit:/ (cl-unit.distance:make-centimeter 2) (cl-unit.distance:make-kilometer 2)))))))
(deftest test-meter-convert-centimeter-1
  (testing "should (= 100 (val (convert (make-kilometer 1) :meter))) to be true"
    (ok (cl:= 100 (cl-unit.distance:val (cl-unit:convert (cl-unit.distance:make-meter 1) :to :centimeter))))))

(deftest test-centimeter-convert-meter-1
  (testing "should (= 1/100 (val (convert (make-centimeter 1) :to :meter))) to be true"
    (ok (cl:= 1/100 (cl-unit.distance:val (cl-unit:convert (cl-unit.distance:make-centimeter 1) :to :meter))))))

(deftest test-centimeter-convert-meter-2
  (testing "should (= 1/100 (val (convert (make-kilometer 1) :to :meter))) to be true"
    (ok (cl:= 1/100 (cl-unit.distance:val (cl-unit:convert (cl-unit.distance:make-centimeter 1) :to :m))))))

(deftest test-centimeter-convert-meter-3
  (testing "should (= 0.005 (val (convert (make-kilometer 1) :to :meter))) to be true"
    (ok (cl:= 0.005 (cl-unit.distance:val (cl-unit:convert (cl-unit.distance:make-centimeter 0.5) :to :m))))))

(deftest test-centimeter-convert-kilometer-1
  (testing "should (= 1/100000 (val (convert (make-centimeter 1) :to :kilometer))) to be true"
    (ok (cl:= 1/100000 (cl-unit.distance:val (cl-unit:convert (cl-unit.distance:make-centimeter 1) :to :kilometer))))))

(deftest test-centimeter-convert-kilometer-2
  (testing "should (= 1/100000 (val (convert (make-kilometer 1) :to :km))) to be true"
    (ok (cl:= 1/100000 (cl-unit.distance:val (cl-unit:convert (cl-unit.distance:make-centimeter 1) :to :km))))))

(deftest test-centimeter-convert-kilometer-3
  (testing "should (=  0.000005 (val (convert (make-kilometer 1) :to :km))) to be true"
    (ok (cl:= 0.000005 (cl-unit.distance:val (cl-unit:convert (cl-unit.distance:make-centimeter 0.5) :to :km))))))

(deftest test-centimeter-convert-centimeter-1
  (testing "should (signals (convert (make-centimeter 1) :to :m)) to be true"
    (ok (signals (cl-unit:convert (cl-unit.distance:make-centimeter 1) :to :cm)))))
