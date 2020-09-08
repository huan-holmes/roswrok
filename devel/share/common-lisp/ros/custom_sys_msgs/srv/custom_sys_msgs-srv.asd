
(cl:in-package :asdf)

(defsystem "custom_sys_msgs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :custom_sys_msgs-msg
)
  :components ((:file "_package")
    (:file "agv_graph" :depends-on ("_package_agv_graph"))
    (:file "_package_agv_graph" :depends-on ("_package"))
    (:file "boocax_version" :depends-on ("_package_boocax_version"))
    (:file "_package_boocax_version" :depends-on ("_package"))
    (:file "read_rfid" :depends-on ("_package_read_rfid"))
    (:file "_package_read_rfid" :depends-on ("_package"))
  ))