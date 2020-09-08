;; Auto-generated. Do not edit!


(when (boundp 'custom_sys_msgs::RobotBasicInfoMsg)
  (if (not (find-package "CUSTOM_SYS_MSGS"))
    (make-package "CUSTOM_SYS_MSGS"))
  (shadow 'RobotBasicInfoMsg (find-package "CUSTOM_SYS_MSGS")))
(unless (find-package "CUSTOM_SYS_MSGS::ROBOTBASICINFOMSG")
  (make-package "CUSTOM_SYS_MSGS::ROBOTBASICINFOMSG"))

(in-package "ROS")
;;//! \htmlinclude RobotBasicInfoMsg.msg.html


(defclass custom_sys_msgs::RobotBasicInfoMsg
  :super ros::object
  :slots (_robot_name _robot_ip _robot_mac _if_name _robot_id ))

(defmethod custom_sys_msgs::RobotBasicInfoMsg
  (:init
   (&key
    ((:robot_name __robot_name) "")
    ((:robot_ip __robot_ip) "")
    ((:robot_mac __robot_mac) "")
    ((:if_name __if_name) "")
    ((:robot_id __robot_id) 0)
    )
   (send-super :init)
   (setq _robot_name (string __robot_name))
   (setq _robot_ip (string __robot_ip))
   (setq _robot_mac (string __robot_mac))
   (setq _if_name (string __if_name))
   (setq _robot_id (round __robot_id))
   self)
  (:robot_name
   (&optional __robot_name)
   (if __robot_name (setq _robot_name __robot_name)) _robot_name)
  (:robot_ip
   (&optional __robot_ip)
   (if __robot_ip (setq _robot_ip __robot_ip)) _robot_ip)
  (:robot_mac
   (&optional __robot_mac)
   (if __robot_mac (setq _robot_mac __robot_mac)) _robot_mac)
  (:if_name
   (&optional __if_name)
   (if __if_name (setq _if_name __if_name)) _if_name)
  (:robot_id
   (&optional __robot_id)
   (if __robot_id (setq _robot_id __robot_id)) _robot_id)
  (:serialization-length
   ()
   (+
    ;; string _robot_name
    4 (length _robot_name)
    ;; string _robot_ip
    4 (length _robot_ip)
    ;; string _robot_mac
    4 (length _robot_mac)
    ;; string _if_name
    4 (length _if_name)
    ;; int32 _robot_id
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _robot_name
       (write-long (length _robot_name) s) (princ _robot_name s)
     ;; string _robot_ip
       (write-long (length _robot_ip) s) (princ _robot_ip s)
     ;; string _robot_mac
       (write-long (length _robot_mac) s) (princ _robot_mac s)
     ;; string _if_name
       (write-long (length _if_name) s) (princ _if_name s)
     ;; int32 _robot_id
       (write-long _robot_id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _robot_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _robot_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _robot_ip
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _robot_ip (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _robot_mac
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _robot_mac (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _if_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _if_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _robot_id
     (setq _robot_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get custom_sys_msgs::RobotBasicInfoMsg :md5sum-) "a20f282b03acc33dd1a5d6098520f933")
(setf (get custom_sys_msgs::RobotBasicInfoMsg :datatype-) "custom_sys_msgs/RobotBasicInfoMsg")
(setf (get custom_sys_msgs::RobotBasicInfoMsg :definition-)
      "string robot_name
string robot_ip
string robot_mac
string if_name
int32 robot_id

")



(provide :custom_sys_msgs/RobotBasicInfoMsg "a20f282b03acc33dd1a5d6098520f933")


