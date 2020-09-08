;; Auto-generated. Do not edit!


(when (boundp 'custom_sys_msgs::AoaTrackingStatusMsg)
  (if (not (find-package "CUSTOM_SYS_MSGS"))
    (make-package "CUSTOM_SYS_MSGS"))
  (shadow 'AoaTrackingStatusMsg (find-package "CUSTOM_SYS_MSGS")))
(unless (find-package "CUSTOM_SYS_MSGS::AOATRACKINGSTATUSMSG")
  (make-package "CUSTOM_SYS_MSGS::AOATRACKINGSTATUSMSG"))

(in-package "ROS")
;;//! \htmlinclude AoaTrackingStatusMsg.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass custom_sys_msgs::AoaTrackingStatusMsg
  :super ros::object
  :slots (_task_id _status_code _sub_code _remote_control_id _distance _angle _pose _is_front ))

(defmethod custom_sys_msgs::AoaTrackingStatusMsg
  (:init
   (&key
    ((:task_id __task_id) 0)
    ((:status_code __status_code) 0)
    ((:sub_code __sub_code) 0)
    ((:remote_control_id __remote_control_id) 0)
    ((:distance __distance) 0.0)
    ((:angle __angle) 0.0)
    ((:pose __pose) (instance geometry_msgs::PoseStamped :init))
    ((:is_front __is_front) nil)
    )
   (send-super :init)
   (setq _task_id (round __task_id))
   (setq _status_code (round __status_code))
   (setq _sub_code (round __sub_code))
   (setq _remote_control_id (round __remote_control_id))
   (setq _distance (float __distance))
   (setq _angle (float __angle))
   (setq _pose __pose)
   (setq _is_front __is_front)
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
  (:remote_control_id
   (&optional __remote_control_id)
   (if __remote_control_id (setq _remote_control_id __remote_control_id)) _remote_control_id)
  (:distance
   (&optional __distance)
   (if __distance (setq _distance __distance)) _distance)
  (:angle
   (&optional __angle)
   (if __angle (setq _angle __angle)) _angle)
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:is_front
   (&optional __is_front)
   (if __is_front (setq _is_front __is_front)) _is_front)
  (:serialization-length
   ()
   (+
    ;; int32 _task_id
    4
    ;; int32 _status_code
    4
    ;; int32 _sub_code
    4
    ;; uint16 _remote_control_id
    2
    ;; float64 _distance
    8
    ;; float64 _angle
    8
    ;; geometry_msgs/PoseStamped _pose
    (send _pose :serialization-length)
    ;; bool _is_front
    1
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
     ;; uint16 _remote_control_id
       (write-word _remote_control_id s)
     ;; float64 _distance
       (sys::poke _distance (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _angle
       (sys::poke _angle (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; geometry_msgs/PoseStamped _pose
       (send _pose :serialize s)
     ;; bool _is_front
       (if _is_front (write-byte -1 s) (write-byte 0 s))
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
   ;; uint16 _remote_control_id
     (setq _remote_control_id (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; float64 _distance
     (setq _distance (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _angle
     (setq _angle (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; geometry_msgs/PoseStamped _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;; bool _is_front
     (setq _is_front (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get custom_sys_msgs::AoaTrackingStatusMsg :md5sum-) "52b32098ccd8e26ce71eb10848abab91")
(setf (get custom_sys_msgs::AoaTrackingStatusMsg :datatype-) "custom_sys_msgs/AoaTrackingStatusMsg")
(setf (get custom_sys_msgs::AoaTrackingStatusMsg :definition-)
      "int32 task_id
int32 status_code
int32 sub_code
uint16 remote_control_id
float64 distance
float64 angle
geometry_msgs/PoseStamped pose
bool is_front

================================================================================
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

")



(provide :custom_sys_msgs/AoaTrackingStatusMsg "52b32098ccd8e26ce71eb10848abab91")


