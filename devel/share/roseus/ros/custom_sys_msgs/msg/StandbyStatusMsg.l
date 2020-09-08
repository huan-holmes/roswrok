;; Auto-generated. Do not edit!


(when (boundp 'custom_sys_msgs::StandbyStatusMsg)
  (if (not (find-package "CUSTOM_SYS_MSGS"))
    (make-package "CUSTOM_SYS_MSGS"))
  (shadow 'StandbyStatusMsg (find-package "CUSTOM_SYS_MSGS")))
(unless (find-package "CUSTOM_SYS_MSGS::STANDBYSTATUSMSG")
  (make-package "CUSTOM_SYS_MSGS::STANDBYSTATUSMSG"))

(in-package "ROS")
;;//! \htmlinclude StandbyStatusMsg.msg.html


(defclass custom_sys_msgs::StandbyStatusMsg
  :super ros::object
  :slots (_task_id _task_type _status_code _time_out _display_info ))

(defmethod custom_sys_msgs::StandbyStatusMsg
  (:init
   (&key
    ((:task_id __task_id) 0)
    ((:task_type __task_type) 0)
    ((:status_code __status_code) 0)
    ((:time_out __time_out) 0.0)
    ((:display_info __display_info) "")
    )
   (send-super :init)
   (setq _task_id (round __task_id))
   (setq _task_type (round __task_type))
   (setq _status_code (round __status_code))
   (setq _time_out (float __time_out))
   (setq _display_info (string __display_info))
   self)
  (:task_id
   (&optional __task_id)
   (if __task_id (setq _task_id __task_id)) _task_id)
  (:task_type
   (&optional __task_type)
   (if __task_type (setq _task_type __task_type)) _task_type)
  (:status_code
   (&optional __status_code)
   (if __status_code (setq _status_code __status_code)) _status_code)
  (:time_out
   (&optional __time_out)
   (if __time_out (setq _time_out __time_out)) _time_out)
  (:display_info
   (&optional __display_info)
   (if __display_info (setq _display_info __display_info)) _display_info)
  (:serialization-length
   ()
   (+
    ;; int32 _task_id
    4
    ;; int32 _task_type
    4
    ;; int32 _status_code
    4
    ;; float64 _time_out
    8
    ;; string _display_info
    4 (length _display_info)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _task_id
       (write-long _task_id s)
     ;; int32 _task_type
       (write-long _task_type s)
     ;; int32 _status_code
       (write-long _status_code s)
     ;; float64 _time_out
       (sys::poke _time_out (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; string _display_info
       (write-long (length _display_info) s) (princ _display_info s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _task_id
     (setq _task_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _task_type
     (setq _task_type (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _status_code
     (setq _status_code (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _time_out
     (setq _time_out (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; string _display_info
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _display_info (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get custom_sys_msgs::StandbyStatusMsg :md5sum-) "3d76ddb95882158e393770b68e0862a9")
(setf (get custom_sys_msgs::StandbyStatusMsg :datatype-) "custom_sys_msgs/StandbyStatusMsg")
(setf (get custom_sys_msgs::StandbyStatusMsg :definition-)
      "int32 task_id
int32 task_type
int32 status_code
float64 time_out
string display_info

")



(provide :custom_sys_msgs/StandbyStatusMsg "3d76ddb95882158e393770b68e0862a9")


