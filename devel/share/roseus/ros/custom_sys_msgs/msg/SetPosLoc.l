;; Auto-generated. Do not edit!


(when (boundp 'custom_sys_msgs::SetPosLoc)
  (if (not (find-package "CUSTOM_SYS_MSGS"))
    (make-package "CUSTOM_SYS_MSGS"))
  (shadow 'SetPosLoc (find-package "CUSTOM_SYS_MSGS")))
(unless (find-package "CUSTOM_SYS_MSGS::SETPOSLOC")
  (make-package "CUSTOM_SYS_MSGS::SETPOSLOC"))

(in-package "ROS")
;;//! \htmlinclude SetPosLoc.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass custom_sys_msgs::SetPosLoc
  :super ros::object
  :slots (_pose _search_dist _search_yaw ))

(defmethod custom_sys_msgs::SetPosLoc
  (:init
   (&key
    ((:pose __pose) (instance geometry_msgs::Pose :init))
    ((:search_dist __search_dist) 0.0)
    ((:search_yaw __search_yaw) 0.0)
    )
   (send-super :init)
   (setq _pose __pose)
   (setq _search_dist (float __search_dist))
   (setq _search_yaw (float __search_yaw))
   self)
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:search_dist
   (&optional __search_dist)
   (if __search_dist (setq _search_dist __search_dist)) _search_dist)
  (:search_yaw
   (&optional __search_yaw)
   (if __search_yaw (setq _search_yaw __search_yaw)) _search_yaw)
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Pose _pose
    (send _pose :serialization-length)
    ;; float64 _search_dist
    8
    ;; float64 _search_yaw
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Pose _pose
       (send _pose :serialize s)
     ;; float64 _search_dist
       (sys::poke _search_dist (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _search_yaw
       (sys::poke _search_yaw (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Pose _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;; float64 _search_dist
     (setq _search_dist (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _search_yaw
     (setq _search_yaw (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get custom_sys_msgs::SetPosLoc :md5sum-) "78c9abe59b92be81b769bcaf9d65589c")
(setf (get custom_sys_msgs::SetPosLoc :datatype-) "custom_sys_msgs/SetPosLoc")
(setf (get custom_sys_msgs::SetPosLoc :definition-)
      "geometry_msgs/Pose pose
float64 search_dist
float64 search_yaw

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



(provide :custom_sys_msgs/SetPosLoc "78c9abe59b92be81b769bcaf9d65589c")


