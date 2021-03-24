(defsystem "cl-unit"
  :version "0.1.0"
  :author ""
  :license ""
  :depends-on ()
  :components ((:module "src"
                :components
                ((:module "utils"
                  :components
                  ((:file "utils")))
                 (:module "distance"
                  :components
                  ((:file "base")
                   (:file "centimeter")
                   (:file "meter")
                   (:file "kilometer")
                   (:file "convert")
                   (:file "add")
                   (:file "subtract")
                   (:file "multiply")
                   (:file "divide")
                   (:file "gt")
                   (:file "gte")
                   (:file "lt")
                   (:file "lte")
                   (:file "equal")
                   (:file "equivalent")
                   (:file "main")))
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
