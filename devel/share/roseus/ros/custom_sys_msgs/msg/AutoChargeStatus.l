;; Auto-generated. Do not edit!


(when (boundp 'custom_sys_msgs::AutoChargeStatus)
  (if (not (find-package "CUSTOM_SYS_MSGS"))
    (make-package "CUSTOM_SYS_MSGS"))
  (shadow 'AutoChargeStatus (find-package "CUSTOM_SYS_MSGS")))
(unless (find-package "CUSTOM_SYS_MSGS::AUTOCHARGESTATUS")
  (make-package "CUSTOM_SYS_MSGS::AUTOCHARGESTATUS"))

(in-package "ROS")
;;//! \htmlinclude AutoChargeStatus.msg.html


(defclass custom_sys_msgs::AutoChargeStatus
  :super ros::object
  :slots (_task_id _status_code _sub_code ))

(defmethod custom_sys_msgs::AutoChargeStatus
  (:init
   (&key
    ((:task_id __task_id) 0)
    ((:status_code __status_code) 0)
    ((:sub_code __sub_code) 0)
    )
   (send-super :init)
   (setq _task_id (round __task_id))
   (setq _status_code (round __status_code))
   (setq _sub_code (round __sub_code))
   self)
  (:task_id
   (&optional __task_id)
   (if __task_id (setq _task_id __task_id)) _task_id)
  (:status_code
   (&optional __status_code)
   (if __status_code (setq _status_code __status_code)) _status_code)
  (:sub_code
   (&optional __sub_code)
   (if __sub_code (setq _sub_code __sub_code)) _sub_code)
  (:serialization-length
   ()
   (+
    ;; int32 _task_id
    4
    ;; int32 _status_code
    4
    ;; int32 _sub_code
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _task_id
       (write-long _task_id s)
     ;; int32 _status_code
       (write-long _status_code s)
     ;; int32 _sub_code
       (write-long _sub_code s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _task_id
     (setq _task_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _status_code
     (setq _status_code (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _sub_code
     (setq _sub_code (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get custom_sys_msgs::AutoChargeStatus :md5sum-) "222e503d05f857472237b6a227645e69")
(setf (get custom_sys_msgs::AutoChargeStatus :datatype-) "custom_sys_msgs/AutoChargeStatus")
(setf (get custom_sys_msgs::AutoChargeStatus :definition-)
      "int32 task_id
int32 status_code
int32 sub_code

")



(provide :custom_sys_msgs/AutoChargeStatus "222e503d05f857472237b6a227645e69")


