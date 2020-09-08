;; Auto-generated. Do not edit!


(when (boundp 'custom_sys_msgs::read_rfid)
  (if (not (find-package "CUSTOM_SYS_MSGS"))
    (make-package "CUSTOM_SYS_MSGS"))
  (shadow 'read_rfid (find-package "CUSTOM_SYS_MSGS")))
(unless (find-package "CUSTOM_SYS_MSGS::READ_RFID")
  (make-package "CUSTOM_SYS_MSGS::READ_RFID"))
(unless (find-package "CUSTOM_SYS_MSGS::READ_RFIDREQUEST")
  (make-package "CUSTOM_SYS_MSGS::READ_RFIDREQUEST"))
(unless (find-package "CUSTOM_SYS_MSGS::READ_RFIDRESPONSE")
  (make-package "CUSTOM_SYS_MSGS::READ_RFIDRESPONSE"))

(in-package "ROS")





(defclass custom_sys_msgs::read_rfidRequest
  :super ros::object
  :slots (_rfid ))

(defmethod custom_sys_msgs::read_rfidRequest
  (:init
   (&key
    ((:rfid __rfid) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _rfid __rfid)
   self)
  (:rfid
   (&optional __rfid)
   (if __rfid (setq _rfid __rfid)) _rfid)
  (:serialization-length
   ()
   (+
    ;; int32[] _rfid
    (* 4    (length _rfid)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32[] _rfid
     (write-long (length _rfid) s)
     (dotimes (i (length _rfid))
       (write-long (elt _rfid i) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32[] _rfid
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _rfid (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _rfid i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(defclass custom_sys_msgs::read_rfidResponse
  :super ros::object
  :slots (_result ))

(defmethod custom_sys_msgs::read_rfidResponse
  (:init
   (&key
    ((:result __result) nil)
    )
   (send-super :init)
   (setq _result __result)
   self)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:serialization-length
   ()
   (+
    ;; bool _result
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _result
       (if _result (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _result
     (setq _result (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass custom_sys_msgs::read_rfid
  :super ros::object
  :slots ())

(setf (get custom_sys_msgs::read_rfid :md5sum-) "18de2e0b7d7ef6caf5f88adb50d8ab40")
(setf (get custom_sys_msgs::read_rfid :datatype-) "custom_sys_msgs/read_rfid")
(setf (get custom_sys_msgs::read_rfid :request) custom_sys_msgs::read_rfidRequest)
(setf (get custom_sys_msgs::read_rfid :response) custom_sys_msgs::read_rfidResponse)

(defmethod custom_sys_msgs::read_rfidRequest
  (:response () (instance custom_sys_msgs::read_rfidResponse :init)))

(setf (get custom_sys_msgs::read_rfidRequest :md5sum-) "18de2e0b7d7ef6caf5f88adb50d8ab40")
(setf (get custom_sys_msgs::read_rfidRequest :datatype-) "custom_sys_msgs/read_rfidRequest")
(setf (get custom_sys_msgs::read_rfidRequest :definition-)
      "int32[] rfid
---
bool result

")

(setf (get custom_sys_msgs::read_rfidResponse :md5sum-) "18de2e0b7d7ef6caf5f88adb50d8ab40")
(setf (get custom_sys_msgs::read_rfidResponse :datatype-) "custom_sys_msgs/read_rfidResponse")
(setf (get custom_sys_msgs::read_rfidResponse :definition-)
      "int32[] rfid
---
bool result

")



(provide :custom_sys_msgs/read_rfid "18de2e0b7d7ef6caf5f88adb50d8ab40")


