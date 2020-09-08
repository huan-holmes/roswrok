
(cl:in-package :asdf)

(defsystem "sicknav350-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Reflector" :depends-on ("_package_Reflector"))
    (:file "_package_Reflector" :depends-on ("_package"))
  ))