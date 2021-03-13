(defsystem "cl-unit"
  :version "0.1.0"
  :author ""
  :license ""
  :depends-on ()
  :components ((:module "src"
                :components
                ((:file "base")
                 (:module "distance"
                  :components
                  ((:file "base")
                   (:file "meter")
                   (:file "kilometer")
                   (:file "meter-kilometer")
                   (:file "kilometer-meter")))
                 (:file "main"))))
  :description ""
  :in-order-to ((test-op (test-op "cl-unit/tests"))))

(defsystem "cl-unit/tests"
  :author ""
  :license ""
  :depends-on ("cl-unit"
               "rove")
  :components ((:module "tests"
                :components
                ((:file "main"))))
  :description "Test system for cl-unit"
  :perform (test-op (op c) (symbol-call :rove :run c)))
