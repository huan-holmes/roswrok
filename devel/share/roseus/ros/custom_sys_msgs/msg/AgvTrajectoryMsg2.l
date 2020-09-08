;; Auto-generated. Do not edit!


(when (boundp 'custom_sys_msgs::AgvTrajectoryMsg2)
  (if (not (find-package "CUSTOM_SYS_MSGS"))
    (make-package "CUSTOM_SYS_MSGS"))
  (shadow 'AgvTrajectoryMsg2 (find-package "CUSTOM_SYS_MSGS")))
(unless (find-package "CUSTOM_SYS_MSGS::AGVTRAJECTORYMSG2")
  (make-package "CUSTOM_SYS_MSGS::AGVTRAJECTORYMSG2"))

(in-package "ROS")
;;//! \htmlinclude AgvTrajectoryMsg2.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass custom_sys_msgs::AgvTrajectoryMsg2
  :super ros::object
  :slots (_task_id _task_type _vehicle_id _free_nav _deadline _dst_pose _agv_trajectory _test ))

(defmethod custom_sys_msgs::AgvTrajectoryMsg2
  (:init
   (&key
    ((:task_id __task_id) 0)
    ((:task_type __task_type) 0)
    ((:vehicle_id __vehicle_id) 0)
    ((:free_nav __free_nav) 0)
    ((:deadline __deadline) 0.0)
    ((:dst_pose __dst_pose) (instance geometry_msgs::Pose :init))
    ((:agv_trajectory __agv_trajectory) (let (r) (dotimes (i 0) (push (instance custom_sys_msgs::AgvLineMsg2 :init) r)) r))
    ((:test __test) 0)
    )
   (send-super :init)
   (setq _task_id (round __task_id))
   (setq _task_type (round __task_type))
   (setq _vehicle_id (round __vehicle_id))
   (setq _free_nav (round __free_nav))
   (setq _deadline (float __deadline))
   (setq _dst_pose __dst_pose)
   (setq _agv_trajectory __agv_trajectory)
   (setq _test (round __test))
   self)
  (:task_id
   (&optional __task_id)
   (if __task_id (setq _task_id __task_id)) _task_id)
  (:task_type
   (&optional __task_type)
   (if __task_type (setq _task_type __task_type)) _task_type)
  (:vehicle_id
   (&optional __vehicle_id)
   (if __vehicle_id (setq _vehicle_id __vehicle_id)) _vehicle_id)
  (:free_nav
   (&optional __free_nav)
   (if __free_nav (setq _free_nav __free_nav)) _free_nav)
  (:deadline
   (&optional __deadline)
   (if __deadline (setq _deadline __deadline)) _deadline)
  (:dst_pose
   (&rest __dst_pose)
   (if (keywordp (car __dst_pose))
       (send* _dst_pose __dst_pose)
     (progn
       (if __dst_pose (setq _dst_pose (car __dst_pose)))
       _dst_pose)))
  (:agv_trajectory
   (&rest __agv_trajectory)
   (if (keywordp (car __agv_trajectory))
       (send* _agv_trajectory __agv_trajectory)
     (progn
       (if __agv_trajectory (setq _agv_trajectory (car __agv_trajectory)))
       _agv_trajectory)))
  (:test
   (&optional __test)
   (if __test (setq _test __test)) _test)
  (:serialization-length
   ()
   (+
    ;; int32 _task_id
    4
    ;; int32 _task_type
    4
    ;; int32 _vehicle_id
    4
    ;; int32 _free_nav
    4
    ;; float64 _deadline
    8
    ;; geometry_msgs/Pose _dst_pose
    (send _dst_pose :serialization-length)
    ;; custom_sys_msgs/AgvLineMsg2[] _agv_trajectory
    (apply #'+ (send-all _agv_trajectory :serialization-length)) 4
    ;; int32 _test
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _task_id
       (write-long _task_id s)
     ;; int32 _task_type
       (write-long _task_type s)
     ;; int32 _vehicle_id
       (write-long _vehicle_id s)
     ;; int32 _free_nav
       (write-long _free_nav s)
     ;; float64 _deadline
       (sys::poke _deadline (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; geometry_msgs/Pose _dst_pose
       (send _dst_pose :serialize s)
     ;; custom_sys_msgs/AgvLineMsg2[] _agv_trajectory
     (write-long (length _agv_trajectory) s)
     (dolist (elem _agv_trajectory)
       (send elem :serialize s)
       )
     ;; int32 _test
       (write-long _test s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _task_id
     (setq _task_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _task_type
     (setq _task_type (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _vehicle_id
     (setq _vehicle_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _free_nav
     (setq _free_nav (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _deadline
     (setq _deadline (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; geometry_msgs/Pose _dst_pose
     (send _dst_pose :deserialize buf ptr-) (incf ptr- (send _dst_pose :serialization-length))
   ;; custom_sys_msgs/AgvLineMsg2[] _agv_trajectory
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _agv_trajectory (let (r) (dotimes (i n) (push (instance custom_sys_msgs::AgvLineMsg2 :init) r)) r))
     (dolist (elem- _agv_trajectory)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; int32 _test
     (setq _test (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get custom_sys_msgs::AgvTrajectoryMsg2 :md5sum-) "6b07c1f81ca25d93ada13ba8f99101b8")
(setf (get custom_sys_msgs::AgvTrajectoryMsg2 :datatype-) "custom_sys_msgs/AgvTrajectoryMsg2")
(setf (get custom_sys_msgs::AgvTrajectoryMsg2 :definition-)
      "int32 task_id
int32 task_type
int32 vehicle_id
int32 free_nav
float64 deadline
geometry_msgs/Pose dst_pose
custom_sys_msgs/AgvLineMsg2[] agv_trajectory
int32 test
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



(provide :custom_sys_msgs/AgvTrajectoryMsg2 "6b07c1f81ca25d93ada13ba8f99101b8")


