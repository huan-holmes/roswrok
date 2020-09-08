;; Auto-generated. Do not edit!


(when (boundp 'custom_sys_msgs::TaskActionMsg)
  (if (not (find-package "CUSTOM_SYS_MSGS"))
    (make-package "CUSTOM_SYS_MSGS"))
  (shadow 'TaskActionMsg (find-package "CUSTOM_SYS_MSGS")))
(unless (find-package "CUSTOM_SYS_MSGS::TASKACTIONMSG")
  (make-package "CUSTOM_SYS_MSGS::TASKACTIONMSG"))

(in-package "ROS")
;;//! \htmlinclude TaskActionMsg.msg.html


(defclass custom_sys_msgs::TaskActionMsg
  :super ros::object
  :slots (_task_id _task_type _action _action_code _immediately ))

(defmethod custom_sys_msgs::TaskActionMsg
  (:init
   (&key
    ((:task_id __task_id) 0)
    ((:task_type __task_type) 0)
    ((:action __action) "")
    ((:action_code __action_code) 0)
    ((:immediately __immediately) "")
    )
   (send-super :init)
   (setq _task_id (round __task_id))
   (setq _task_type (round __task_type))
   (setq _action (string __action))
   (setq _action_code (round __action_code))
   (setq _immediately (string __immediately))
   self)
  (:task_id
   (&optional __task_id)
   (if __task_id (setq _task_id __task_id)) _task_id)
  (:task_type
   (&optional __task_type)
   (if __task_type (setq _task_type __task_type)) _task_type)
  (:action
   (&optional __action)
   (if __action (setq _action __action)) _action)
  (:action_code
   (&optional __action_code)
   (if __action_code (setq _action_code __action_code)) _action_code)
  (:immediately
   (&optional __immediately)
   (if __immediately (setq _immediately __immediately)) _immediately)
  (:serialization-length
   ()
   (+
    ;; int32 _task_id
    4
    ;; int32 _task_type
    4
    ;; string _action
    4 (length _action)
    ;; int32 _action_code
    4
    ;; string _immediately
    4 (length _immediately)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _task_id
       (write-long _task_id s)
     ;; int32 _task_type
       (write-long _task_type s)
     ;; string _action
       (write-long (length _action) s) (princ _action s)
     ;; int32 _action_code
       (write-long _action_code s)
     ;; string _immediately
       (write-long (length _immediately) s) (princ _immediately s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _task_id
     (setq _task_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _task_type
     (setq _task_type (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _action
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _action (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _action_code
     (setq _action_code (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _immediately
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _immediately (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get custom_sys_msgs::TaskActionMsg :md5sum-) "5591e51a0b146f386425b17fcb920bd8")
(setf (get custom_sys_msgs::TaskActionMsg :datatype-) "custom_sys_msgs/TaskActionMsg")
(setf (get custom_sys_msgs::TaskActionMsg :definition-)
      "int32 task_id
int32 task_type
string action
int32 action_code
string immediately

")



(provide :custom_sys_msgs/TaskActionMsg "5591e51a0b146f386425b17fcb920bd8")


