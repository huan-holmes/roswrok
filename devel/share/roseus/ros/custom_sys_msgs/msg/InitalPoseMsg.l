;; Auto-generated. Do not edit!


(when (boundp 'custom_sys_msgs::InitalPoseMsg)
  (if (not (find-package "CUSTOM_SYS_MSGS"))
    (make-package "CUSTOM_SYS_MSGS"))
  (shadow 'InitalPoseMsg (find-package "CUSTOM_SYS_MSGS")))
(unless (find-package "CUSTOM_SYS_MSGS::INITALPOSEMSG")
  (make-package "CUSTOM_SYS_MSGS::INITALPOSEMSG"))

(in-package "ROS")
;;//! \htmlinclude InitalPoseMsg.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass custom_sys_msgs::InitalPoseMsg
  :super ros::object
  :slots (_pos _pos_var _yaw_var ))

(defmethod custom_sys_msgs::InitalPoseMsg
  (:init
   (&key
    ((:pos __pos) (instance geometry_msgs::Pose :init))
    ((:pos_var __pos_var) (instance geometry_msgs::Pose :init))
    ((:yaw_var __yaw_var) 0.0)
    )
   (send-super :init)
   (setq _pos __pos)
   (setq _pos_var __pos_var)
   (setq _yaw_var (float __yaw_var))
   self)
  (:pos
   (&rest __pos)
   (if (keywordp (car __pos))
       (send* _pos __pos)
     (progn
       (if __pos (setq _pos (car __pos)))
       _pos)))
  (:pos_var
   (&rest __pos_var)
   (if (keywordp (car __pos_var))
       (send* _pos_var __pos_var)
     (progn
       (if __pos_var (setq _pos_var (car __pos_var)))
       _pos_var)))
  (:yaw_var
   (&optional __yaw_var)
   (if __yaw_var (setq _yaw_var __yaw_var)) _yaw_var)
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Pose _pos
    (send _pos :serialization-length)
    ;; geometry_msgs/Pose _pos_var
    (send _pos_var :serialization-length)
    ;; float64 _yaw_var
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Pose _pos
       (send _pos :serialize s)
     ;; geometry_msgs/Pose _pos_var
       (send _pos_var :serialize s)
     ;; float64 _yaw_var
       (sys::poke _yaw_var (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Pose _pos
     (send _pos :deserialize buf ptr-) (incf ptr- (send _pos :serialization-length))
   ;; geometry_msgs/Pose _pos_var
     (send _pos_var :deserialize buf ptr-) (incf ptr- (send _pos_var :serialization-length))
   ;; float64 _yaw_var
     (setq _yaw_var (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get custom_sys_msgs::InitalPoseMsg :md5sum-) "23af2ff86744279d9501d4df9ddadc6e")
(setf (get custom_sys_msgs::InitalPoseMsg :datatype-) "custom_sys_msgs/InitalPoseMsg")
(setf (get custom_sys_msgs::InitalPoseMsg :definition-)
      "geometry_msgs/Pose pos
geometry_msgs/Pose pos_var
float64 yaw_var

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



(provide :custom_sys_msgs/InitalPoseMsg "23af2ff86744279d9501d4df9ddadc6e")


