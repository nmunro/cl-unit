(defsystem "cl-unit"
  :version "0.1.0"
  :author "NMunro"
  :license ""
  :depends-on ()
  :components ((:module "src"
                :components
                ((:file "errors")
                 (:module "utils"
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

(defsystem "cl-unit/dev"
  :author "NMunro"
  :license ""
  :components ((:module "dev"
                :components
                ((:file "main"))))
  :description "Dev tools for building cl-unit")

(defsystem "cl-unit/tests"
  :author "NMunro"
  :license ""
  :depends-on ("cl-unit"
               "rove")
  :components ((:module "tests"
                :components
                ((:file "centimeter")
                 (:file "meter")
                 (:file "kilometer"))))
  :description "Test system for cl-unit"
  :perform (test-op (op c) (symbol-call :rove :run c)))
