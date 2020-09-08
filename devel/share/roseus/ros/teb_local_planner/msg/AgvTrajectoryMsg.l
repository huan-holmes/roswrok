;; Auto-generated. Do not edit!


(when (boundp 'teb_local_planner::AgvTrajectoryMsg)
  (if (not (find-package "TEB_LOCAL_PLANNER"))
    (make-package "TEB_LOCAL_PLANNER"))
  (shadow 'AgvTrajectoryMsg (find-package "TEB_LOCAL_PLANNER")))
(unless (find-package "TEB_LOCAL_PLANNER::AGVTRAJECTORYMSG")
  (make-package "TEB_LOCAL_PLANNER::AGVTRAJECTORYMSG"))

(in-package "ROS")
;;//! \htmlinclude AgvTrajectoryMsg.msg.html


(defclass teb_local_planner::AgvTrajectoryMsg
  :super ros::object
  :slots (_agv_trajectory _move_dir ))

(defmethod teb_local_planner::AgvTrajectoryMsg
  (:init
   (&key
    ((:agv_trajectory __agv_trajectory) (let (r) (dotimes (i 0) (push (instance teb_local_planner::AgvLineMsg :init) r)) r))
    ((:move_dir __move_dir) 0)
    )
   (send-super :init)
   (setq _agv_trajectory __agv_trajectory)
   (setq _move_dir (round __move_dir))
   self)
  (:agv_trajectory
   (&rest __agv_trajectory)
   (if (keywordp (car __agv_trajectory))
       (send* _agv_trajectory __agv_trajectory)
     (progn
       (if __agv_trajectory (setq _agv_trajectory (car __agv_trajectory)))
       _agv_trajectory)))
  (:move_dir
   (&optional __move_dir)
   (if __move_dir (setq _move_dir __move_dir)) _move_dir)
  (:serialization-length
   ()
   (+
    ;; teb_local_planner/AgvLineMsg[] _agv_trajectory
    (apply #'+ (send-all _agv_trajectory :serialization-length)) 4
    ;; int32 _move_dir
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; teb_local_planner/AgvLineMsg[] _agv_trajectory
     (write-long (length _agv_trajectory) s)
     (dolist (elem _agv_trajectory)
       (send elem :serialize s)
       )
     ;; int32 _move_dir
       (write-long _move_dir s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; teb_local_planner/AgvLineMsg[] _agv_trajectory
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _agv_trajectory (let (r) (dotimes (i n) (push (instance teb_local_planner::AgvLineMsg :init) r)) r))
     (dolist (elem- _agv_trajectory)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; int32 _move_dir
     (setq _move_dir (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get teb_local_planner::AgvTrajectoryMsg :md5sum-) "8ea844040bae943d8f96401ca7a88393")
(setf (get teb_local_planner::AgvTrajectoryMsg :datatype-) "teb_local_planner/AgvTrajectoryMsg")
(setf (get teb_local_planner::AgvTrajectoryMsg :definition-)
      "teb_local_planner/AgvLineMsg[] agv_trajectory
int32 move_dir

================================================================================
MSG: teb_local_planner/AgvLineMsg
# The pose of the robot
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



(provide :teb_local_planner/AgvTrajectoryMsg "8ea844040bae943d8f96401ca7a88393")


