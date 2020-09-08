;; Auto-generated. Do not edit!


(when (boundp 'custom_sys_msgs::agv_graph)
  (if (not (find-package "CUSTOM_SYS_MSGS"))
    (make-package "CUSTOM_SYS_MSGS"))
  (shadow 'agv_graph (find-package "CUSTOM_SYS_MSGS")))
(unless (find-package "CUSTOM_SYS_MSGS::AGV_GRAPH")
  (make-package "CUSTOM_SYS_MSGS::AGV_GRAPH"))
(unless (find-package "CUSTOM_SYS_MSGS::AGV_GRAPHREQUEST")
  (make-package "CUSTOM_SYS_MSGS::AGV_GRAPHREQUEST"))
(unless (find-package "CUSTOM_SYS_MSGS::AGV_GRAPHRESPONSE")
  (make-package "CUSTOM_SYS_MSGS::AGV_GRAPHRESPONSE"))

(in-package "ROS")





(defclass custom_sys_msgs::agv_graphRequest
  :super ros::object
  :slots ())

(defmethod custom_sys_msgs::agv_graphRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass custom_sys_msgs::agv_graphResponse
  :super ros::object
  :slots (_agv_graph ))

(defmethod custom_sys_msgs::agv_graphResponse
  (:init
   (&key
    ((:agv_graph __agv_graph) (instance custom_sys_msgs::AgvTrajectoryMsg2 :init))
    )
   (send-super :init)
   (setq _agv_graph __agv_graph)
   self)
  (:agv_graph
   (&rest __agv_graph)
   (if (keywordp (car __agv_graph))
       (send* _agv_graph __agv_graph)
     (progn
       (if __agv_graph (setq _agv_graph (car __agv_graph)))
       _agv_graph)))
  (:serialization-length
   ()
   (+
    ;; custom_sys_msgs/AgvTrajectoryMsg2 _agv_graph
    (send _agv_graph :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; custom_sys_msgs/AgvTrajectoryMsg2 _agv_graph
       (send _agv_graph :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; custom_sys_msgs/AgvTrajectoryMsg2 _agv_graph
     (send _agv_graph :deserialize buf ptr-) (incf ptr- (send _agv_graph :serialization-length))
   ;;
   self)
  )

(defclass custom_sys_msgs::agv_graph
  :super ros::object
  :slots ())

(setf (get custom_sys_msgs::agv_graph :md5sum-) "e9c74557c444af09c8ff470ac412ba81")
(setf (get custom_sys_msgs::agv_graph :datatype-) "custom_sys_msgs/agv_graph")
(setf (get custom_sys_msgs::agv_graph :request) custom_sys_msgs::agv_graphRequest)
(setf (get custom_sys_msgs::agv_graph :response) custom_sys_msgs::agv_graphResponse)

(defmethod custom_sys_msgs::agv_graphRequest
  (:response () (instance custom_sys_msgs::agv_graphResponse :init)))

(setf (get custom_sys_msgs::agv_graphRequest :md5sum-) "e9c74557c444af09c8ff470ac412ba81")
(setf (get custom_sys_msgs::agv_graphRequest :datatype-) "custom_sys_msgs/agv_graphRequest")
(setf (get custom_sys_msgs::agv_graphRequest :definition-)
      "
---
custom_sys_msgs/AgvTrajectoryMsg2 agv_graph


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

(setf (get custom_sys_msgs::agv_graphResponse :md5sum-) "e9c74557c444af09c8ff470ac412ba81")
(setf (get custom_sys_msgs::agv_graphResponse :datatype-) "custom_sys_msgs/agv_graphResponse")
(setf (get custom_sys_msgs::agv_graphResponse :definition-)
      "
---
custom_sys_msgs/AgvTrajectoryMsg2 agv_graph


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



(provide :custom_sys_msgs/agv_graph "e9c74557c444af09c8ff470ac412ba81")


