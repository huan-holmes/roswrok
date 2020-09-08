;; Auto-generated. Do not edit!


(when (boundp 'teb_local_planner::AgvLineMsg)
  (if (not (find-package "TEB_LOCAL_PLANNER"))
    (make-package "TEB_LOCAL_PLANNER"))
  (shadow 'AgvLineMsg (find-package "TEB_LOCAL_PLANNER")))
(unless (find-package "TEB_LOCAL_PLANNER::AGVLINEMSG")
  (make-package "TEB_LOCAL_PLANNER::AGVLINEMSG"))

(in-package "ROS")
;;//! \htmlinclude AgvLineMsg.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass teb_local_planner::AgvLineMsg
  :super ros::object
  :slots (_poses _type _path_id _vel _crossing ))

(defmethod teb_local_planner::AgvLineMsg
  (:init
   (&key
    ((:poses __poses) (let (r) (dotimes (i 3) (push (instance geometry_msgs::Pose :init) r)) r))
    ((:type __type) (instance std_msgs::Int32 :init))
    ((:path_id __path_id) (instance std_msgs::Int32 :init))
    ((:vel __vel) 0.0)
    ((:crossing __crossing) 0)
    )
   (send-super :init)
   (setq _poses __poses)
   (setq _type __type)
   (setq _path_id __path_id)
   (setq _vel (float __vel))
   (setq _crossing (round __crossing))
   self)
  (:poses
   (&rest __poses)
   (if (keywordp (car __poses))
       (send* _poses __poses)
     (progn
       (if __poses (setq _poses (car __poses)))
       _poses)))
  (:type
   (&rest __type)
   (if (keywordp (car __type))
       (send* _type __type)
     (progn
       (if __type (setq _type (car __type)))
       _type)))
  (:path_id
   (&rest __path_id)
   (if (keywordp (car __path_id))
       (send* _path_id __path_id)
     (progn
       (if __path_id (setq _path_id (car __path_id)))
       _path_id)))
  (:vel
   (&optional __vel)
   (if __vel (setq _vel __vel)) _vel)
  (:crossing
   (&optional __crossing)
   (if __crossing (setq _crossing __crossing)) _crossing)
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Pose[3] _poses
    (apply #'+ (send-all _poses :serialization-length))
    ;; std_msgs/Int32 _type
    (send _type :serialization-length)
    ;; std_msgs/Int32 _path_id
    (send _path_id :serialization-length)
    ;; float64 _vel
    8
    ;; int32 _crossing
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Pose[3] _poses
     (dolist (elem _poses)
       (send elem :serialize s)
       )
     ;; std_msgs/Int32 _type
       (send _type :serialize s)
     ;; std_msgs/Int32 _path_id
       (send _path_id :serialize s)
     ;; float64 _vel
       (sys::poke _vel (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; int32 _crossing
       (write-long _crossing s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Pose[3] _poses
   (dotimes (i 3)
     (send (elt _poses i) :deserialize buf ptr-) (incf ptr- (send (elt _poses i) :serialization-length))
     )
   ;; std_msgs/Int32 _type
     (send _type :deserialize buf ptr-) (incf ptr- (send _type :serialization-length))
   ;; std_msgs/Int32 _path_id
     (send _path_id :deserialize buf ptr-) (incf ptr- (send _path_id :serialization-length))
   ;; float64 _vel
     (setq _vel (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; int32 _crossing
     (setq _crossing (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get teb_local_planner::AgvLineMsg :md5sum-) "8a938cc1a16df264a8bdf537bad11201")
(setf (get teb_local_planner::AgvLineMsg :datatype-) "teb_local_planner/AgvLineMsg")
(setf (get teb_local_planner::AgvLineMsg :definition-)
      "# The pose of the robot
geometry_msgs/Pose[3] poses

std_msgs/Int32 type

std_msgs/Int32 path_id

float64 vel

int32 crossing

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
MSG: std_msgs/Int32
int32 data
")



(provide :teb_local_planner/AgvLineMsg "8a938cc1a16df264a8bdf537bad11201")


