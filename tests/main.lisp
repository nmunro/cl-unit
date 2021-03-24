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

#|
(deftest test-meter-distance<=-2
  (testing "should (distance<= (unit :meter 1) (unit :meter 1)) to be true"
    ))

(deftest test-meter-distance<=-3
  (testing "should (distance<= (unit :meter 1) (unit :meter 2)) to be true"
    ))

(deftest test-meter-distance>=-1
  (testing "should (distance>= (unit :meter 2) (unit :meter 1)) to be true"
    ))

(deftest test-meter-distance>=-2
  (testing "should (distance>= (unit :meter 1) (unit :meter 1)) to be true"
    ))

(deftest test-meter-distance>=-3
  (testing "should (distance>= (unit :meter 1) (unit :meter 2)) to be false"
    ))

(deftest test-meter-kilometer-distance=-1
  (testing "should (distance= (unit :meter 1) (unit :kilometer 1)) to be false"
    ))

(deftest test-meter-kilometer-distance=-2
  (testing "should (distance= (unit :meter 1000) (unit :kilometer 1)) to be true"
    ))

(deftest test-meter-kilometer-distance>-1
  (testing "should (distance> (unit :meter 1) (unit :kilometer 1)) to be false"
    ))

(deftest test-meter-kilometer-distance>-2
  (testing "should (distance> (unit :meter 1) (unit :kilometer 1)) to be false"
    ))

(deftest test-meter-kilometer-distance>-3
  (testing "should (distance> (unit :meter 2000) (unit :kilometer 1)) to be true"
    ))

(deftest test-meter-kilometer-distance>=-1
  (testing "should (distance> (unit :meter 1) (unit :kilometer 1)) to be false"
    ))

(deftest test-meter-kilometer-distance>=-2
  (testing "should (distance> (unit :meter 1) (unit :kilometer 1)) to be false"
    ))

(deftest test-meter-kilometer-distance>=-3
  (testing "should (distance> (unit :meter 2000) (unit :kilometer 1)) to be true"
    ))

(deftest test-meter-kilometer-distance<-1
  (testing "should (distance< (unit :meter 1) (unit :kilometer 1)) to be true"
    ))

(deftest test-meter-kilometer-distance<-2
  (testing "should (distance< (unit :meter 1) (unit :kilometer 1)) to be true"
    ))

(deftest test-meter-kilometer-distance<-3
  (testing "should (distance< (unit :meter 2000) (unit :kilometer 1)) to be false"
    ))

(deftest test-meter-kilometer-distance<=-1
  (testing "should (distance<= (unit :meter 1) (unit :kilometer 1)) to be true"
    ))

(deftest test-meter-kilometer-distance<=-2
  (testing "should (distance<= (unit :meter 1) (unit :kilometer 1)) to be true"
    ))

(deftest test-meter-kilometer-distance<=-3
  (testing "should (distance<= (unit :meter 1) (unit :kilometer 2000)) to be false"
    ))

(deftest test-kilometer-meter-distance=-1
  (testing "should (distance= (unit :kilometer 1) (unit :meter 1)) to be false"
    ))

(deftest test-kilometer-meter-distance=-2
  (testing "should (distance= (unit :kilometer 1) (unit :meter 1000)) to be true"
    ))

(deftest test-kilometer-meter-distance>-1
  (testing "should (distance> (unit :kilometer 1) (unit :meter 1)) to be false"
    ))

(deftest test-kilometer-meter-distance>-2
  (testing "should (distance> (unit :kilometer 1) (unit :meter 1)) to be false"
    ))

(deftest test-kilometer-meter-distance>-3
  (testing "should (distance> (unit :kilometer 2000) (unit :meter 1)) to be true"
    ))

(deftest test-kilometer-meter-distance>=-1
  (testing "should (distance> (unit :kilometer 1) (unit :meter 1)) to be true"
    ))

(deftest test-kilometer-meter-distance>=-2
  (testing "should (distance> (unit :kilometer 1) (unit :meter 1)) to be true"
    ))

(deftest test-kilometer-meter-distance>=-3
  (testing "should (distance> (unit :kilometer 2000) (unit :meter 1)) to be false"
    ))

(deftest test-kilometer-meter-distance<-1
  (testing "should (distance< (unit :kilometer 1) (unit :meter 1)) to be false"
    ))

(deftest test-kilometer-meter-distance<-2
  (testing "should (distance< (unit :kilometer 1) (unit :meter 1)) to be false"
    ))

(deftest test-kilometer-meter-distance<-3
  (testing "should (distance< (unit :kilometer 1) (unit :meter 2000)) to be true"
    ))

(deftest test-kilometer-meter-distance<=-1
  (testing "should (distance<= (unit :kilometer 1) (unit :meter 1)) to be false"
    ))

(deftest test-kilometer-meter-distance<=-2
  (testing "should (distance<= (unit :kilometer 1) (unit :meter 1)) to be false"
    ))

(deftest test-kilometer-meter-distance<=-3
  (testing "should (distance<= (unit :kilometer 1) (unit :meter 2000)) to be true"
    ))

(deftest test-kilometer-kilometer-distance=-1
  (testing "should (distance= (unit :kilometer 1) (unit :kilometer 1)) to be true"
    ))

(deftest test-kilometer-kilometer-distance=-2
  (testing "should (distance= (unit :kilometer 2) (unit :kilometer 1)) to be false"
    ))

(deftest test-kilometer-kilometer-distance=-3
  (testing "should (distance= (unit :kilometer 2) (unit :kilometer 1)) to be false"
    ))

(deftest test-kilometer-kilometer-distance>-1
  (testing "should (distance> (unit :kilometer 1) (unit :kilometer 1)) to be false"
    ))

(deftest test-kilometer-kilometer-distance>-2
  (testing "should (distance> (unit :kilometer 1) (unit :kilometer 1)) to be true"
    ))

(deftest test-kilometer-kilometer-distance>-3
  (testing "should (distance> (unit :kilometer 1) (unit :kilometer 1)) to be false"
    ))

(deftest test-kilometer-kilometer-distance>=-1
  (testing "should (distance>= (unit :kilometer 1) (unit :kilometer 2)) to be false"
    ))

(deftest test-kilometer-kilometer-distance>=-2
  (testing "should (distance>= (unit :kilometer 1) (unit :kilometer 1)) to be true"
    ))

(deftest test-kilometer-kilometer-distance>=-3
  (testing "should (distance>= (unit :kilometer 2) (unit :kilometer 1)) to be true"
    ))

(deftest test-kilometer-kilometer-distance<-1
  (testing "should (distance< (unit :kilometer 1) (unit :kilometer 1)) to be false"
    ))

(deftest test-kilometer-kilometer-distance<-2
  (testing "should (distance< (unit :kilometer 1) (unit :kilometer 1)) to be false"
    ))

(deftest test-kilometer-kilometer-distance<-3
  (testing "should (distance< (unit :kilometer 1) (unit :kilometer 1)) to be true"
    ))

(deftest test-kilometer-kilometer-distance<=-1
  (testing "should (distance<= (unit :kilometer 1) (unit :kilometer 1)) to be true"
    ))

(deftest test-kilometer-kilometer-distance<=-2
  (testing "should (distance<= (unit :kilometer 1) (unit :kilometer 1)) to be false"
    ))

(deftest test-kilometer-kilometer-distance<=-3
  (testing "should (distance<= (unit :kilometer 1) (unit :kilometer 1)) to be true"
    ))
|#
