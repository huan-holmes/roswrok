;; Auto-generated. Do not edit!


(when (boundp 'custom_sys_msgs::FreeNav)
  (if (not (find-package "CUSTOM_SYS_MSGS"))
    (make-package "CUSTOM_SYS_MSGS"))
  (shadow 'FreeNav (find-package "CUSTOM_SYS_MSGS")))
(unless (find-package "CUSTOM_SYS_MSGS::FREENAV")
  (make-package "CUSTOM_SYS_MSGS::FREENAV"))

(in-package "ROS")
;;//! \htmlinclude FreeNav.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass custom_sys_msgs::FreeNav
  :super ros::object
  :slots (_target_pose _target_path _type ))

(defmethod custom_sys_msgs::FreeNav
  (:init
   (&key
    ((:target_pose __target_pose) (instance geometry_msgs::PoseStamped :init))
    ((:target_path __target_path) (instance custom_sys_msgs::AgvTrajectoryMsg2 :init))
    ((:type __type) 0)
    )
   (send-super :init)
   (setq _target_pose __target_pose)
   (setq _target_path __target_path)
   (setq _type (round __type))
   self)
  (:target_pose
   (&rest __target_pose)
   (if (keywordp (car __target_pose))
       (send* _target_pose __target_pose)
     (progn
       (if __target_pose (setq _target_pose (car __target_pose)))
       _target_pose)))
  (:target_path
   (&rest __target_path)
   (if (keywordp (car __target_path))
       (send* _target_path __target_path)
     (progn
       (if __target_path (setq _target_path (car __target_path)))
       _target_path)))
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/PoseStamped _target_pose
    (send _target_pose :serialization-length)
    ;; custom_sys_msgs/AgvTrajectoryMsg2 _target_path
    (send _target_path :serialization-length)
    ;; int32 _type
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/PoseStamped _target_pose
       (send _target_pose :serialize s)
     ;; custom_sys_msgs/AgvTrajectoryMsg2 _target_path
       (send _target_path :serialize s)
     ;; int32 _type
       (write-long _type s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/PoseStamped _target_pose
     (send _target_pose :deserialize buf ptr-) (incf ptr- (send _target_pose :serialization-length))
   ;; custom_sys_msgs/AgvTrajectoryMsg2 _target_path
     (send _target_path :deserialize buf ptr-) (incf ptr- (send _target_path :serialization-length))
   ;; int32 _type
     (setq _type (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get custom_sys_msgs::FreeNav :md5sum-) "23022d59f10203932fccb77d648e4155")
(setf (get custom_sys_msgs::FreeNav :datatype-) "custom_sys_msgs/FreeNav")
(setf (get custom_sys_msgs::FreeNav :definition-)
      "geometry_msgs/PoseStamped target_pose
custom_sys_msgs/AgvTrajectoryMsg2 target_path
int32 type
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

================================================================================
MSG: custom_sys_msgs/AgvTrajectoryMsg2
int32 task_id
int32 task_type
int32 vehicle_id
int32 free_nav
float64 deadline
geometry_msgs/Pose dst_pose
custom_sys_msgs/AgvLineMsg2[] agv_trajectory
int32 test
================================================================================
MSG: custom_sys_msgs/AgvLineMsg2
int32 segment_id
int32 segment_type
int32 attitude
int32 tracking_mode
float64 speed
float64 precision
float64 arrival_time
float64 departure_time
float64 redundancy_time
geometry_msgs/Pose p_start
geometry_msgs/Pose p_middle
geometry_msgs/Pose p_end
int32 start_node_id
int32 end_node_id
bool crossing

")



(provide :custom_sys_msgs/FreeNav "23022d59f10203932fccb77d648e4155")


