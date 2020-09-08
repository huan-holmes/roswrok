
(cl:in-package :asdf)

(defsystem "boocax_base-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "mappath" :depends-on ("_package_mappath"))
    (:file "_package_mappath" :depends-on ("_package"))
  ))