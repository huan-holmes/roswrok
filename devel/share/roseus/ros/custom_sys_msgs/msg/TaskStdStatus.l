;; Auto-generated. Do not edit!


(when (boundp 'custom_sys_msgs::TaskStdStatus)
  (if (not (find-package "CUSTOM_SYS_MSGS"))
    (make-package "CUSTOM_SYS_MSGS"))
  (shadow 'TaskStdStatus (find-package "CUSTOM_SYS_MSGS")))
(unless (find-package "CUSTOM_SYS_MSGS::TASKSTDSTATUS")
  (make-package "CUSTOM_SYS_MSGS::TASKSTDSTATUS"))

(in-package "ROS")
;;//! \htmlinclude TaskStdStatus.msg.html


(defclass custom_sys_msgs::TaskStdStatus
  :super ros::object
  :slots (_status_code _sub_code _task_id _task_type ))

(defmethod custom_sys_msgs::TaskStdStatus
  (:init
   (&key
    ((:status_code __status_code) 0)
    ((:sub_code __sub_code) 0)
    ((:task_id __task_id) 0)
    ((:task_type __task_type) 0)
    )
   (send-super :init)
   (setq _status_code (round __status_code))
   (setq _sub_code (round __sub_code))
   (setq _task_id (round __task_id))
   (setq _task_type (round __task_type))
   self)
  (:status_code
   (&optional __status_code)
   (if __status_code (setq _status_code __status_code)) _status_code)
  (:sub_code
   (&optional __sub_code)
   (if __sub_code (setq _sub_code __sub_code)) _sub_code)
  (:task_id
   (&optional __task_id)
   (if __task_id (setq _task_id __task_id)) _task_id)
  (:task_type
   (&optional __task_type)
   (if __task_type (setq _task_type __task_type)) _task_type)
  (:serialization-length
   ()
   (+
    ;; int32 _status_code
    4
    ;; int32 _sub_code
    4
    ;; int32 _task_id
    4
    ;; int32 _task_type
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _status_code
       (write-long _status_code s)
     ;; int32 _sub_code
       (write-long _sub_code s)
     ;; int32 _task_id
       (write-long _task_id s)
     ;; int32 _task_type
       (write-long _task_type s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _status_code
     (setq _status_code (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _sub_code
     (setq _sub_code (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _task_id
     (setq _task_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _task_type
     (setq _task_type (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get custom_sys_msgs::TaskStdStatus :md5sum-) "d2708427181bab17b8767d3df163bc4b")
(setf (get custom_sys_msgs::TaskStdStatus :datatype-) "custom_sys_msgs/TaskStdStatus")
(setf (get custom_sys_msgs::TaskStdStatus :definition-)
      "int32 status_code
int32 sub_code
int32 task_id
int32 task_type

")



(provide :custom_sys_msgs/TaskStdStatus "d2708427181bab17b8767d3df163bc4b")


