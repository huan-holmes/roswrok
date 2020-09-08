;; Auto-generated. Do not edit!


(when (boundp 'custom_sys_msgs::AoaTrackingMsg)
  (if (not (find-package "CUSTOM_SYS_MSGS"))
    (make-package "CUSTOM_SYS_MSGS"))
  (shadow 'AoaTrackingMsg (find-package "CUSTOM_SYS_MSGS")))
(unless (find-package "CUSTOM_SYS_MSGS::AOATRACKINGMSG")
  (make-package "CUSTOM_SYS_MSGS::AOATRACKINGMSG"))

(in-package "ROS")
;;//! \htmlinclude AoaTrackingMsg.msg.html


(defclass custom_sys_msgs::AoaTrackingMsg
  :super ros::object
  :slots (_serial_switch _task_id _task_type _vehicle_id _remote_control_id ))

(defmethod custom_sys_msgs::AoaTrackingMsg
  (:init
   (&key
    ((:serial_switch __serial_switch) nil)
    ((:task_id __task_id) 0)
    ((:task_type __task_type) 0)
    ((:vehicle_id __vehicle_id) 0)
    ((:remote_control_id __remote_control_id) 0)
    )
   (send-super :init)
   (setq _serial_switch __serial_switch)
   (setq _task_id (round __task_id))
   (setq _task_type (round __task_type))
   (setq _vehicle_id (round __vehicle_id))
   (setq _remote_control_id (round __remote_control_id))
   self)
  (:serial_switch
   (&optional __serial_switch)
   (if __serial_switch (setq _serial_switch __serial_switch)) _serial_switch)
  (:task_id
   (&optional __task_id)
   (if __task_id (setq _task_id __task_id)) _task_id)
  (:task_type
   (&optional __task_type)
   (if __task_type (setq _task_type __task_type)) _task_type)
  (:vehicle_id
   (&optional __vehicle_id)
   (if __vehicle_id (setq _vehicle_id __vehicle_id)) _vehicle_id)
  (:remote_control_id
   (&optional __remote_control_id)
   (if __remote_control_id (setq _remote_control_id __remote_control_id)) _remote_control_id)
  (:serialization-length
   ()
   (+
    ;; bool _serial_switch
    1
    ;; int32 _task_id
    4
    ;; int32 _task_type
    4
    ;; int32 _vehicle_id
    4
    ;; uint16 _remote_control_id
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _serial_switch
       (if _serial_switch (write-byte -1 s) (write-byte 0 s))
     ;; int32 _task_id
       (write-long _task_id s)
     ;; int32 _task_type
       (write-long _task_type s)
     ;; int32 _vehicle_id
       (write-long _vehicle_id s)
     ;; uint16 _remote_control_id
       (write-word _remote_control_id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _serial_switch
     (setq _serial_switch (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; int32 _task_id
     (setq _task_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _task_type
     (setq _task_type (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _vehicle_id
     (setq _vehicle_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint16 _remote_control_id
     (setq _remote_control_id (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get custom_sys_msgs::AoaTrackingMsg :md5sum-) "8382739c3a150bd5ebcf30730920d2e8")
(setf (get custom_sys_msgs::AoaTrackingMsg :datatype-) "custom_sys_msgs/AoaTrackingMsg")
(setf (get custom_sys_msgs::AoaTrackingMsg :definition-)
      "bool serial_switch
int32 task_id
int32 task_type
int32 vehicle_id
uint16 remote_control_id

")



(provide :custom_sys_msgs/AoaTrackingMsg "8382739c3a150bd5ebcf30730920d2e8")


