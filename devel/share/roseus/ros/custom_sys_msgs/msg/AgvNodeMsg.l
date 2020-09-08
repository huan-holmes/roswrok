;; Auto-generated. Do not edit!


(when (boundp 'custom_sys_msgs::AgvNodeMsg)
  (if (not (find-package "CUSTOM_SYS_MSGS"))
    (make-package "CUSTOM_SYS_MSGS"))
  (shadow 'AgvNodeMsg (find-package "CUSTOM_SYS_MSGS")))
(unless (find-package "CUSTOM_SYS_MSGS::AGVNODEMSG")
  (make-package "CUSTOM_SYS_MSGS::AGVNODEMSG"))

(in-package "ROS")
;;//! \htmlinclude AgvNodeMsg.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass custom_sys_msgs::AgvNodeMsg
  :super ros::object
  :slots (_node_id _node_name _node_type _ref_cnt _pos ))

(defmethod custom_sys_msgs::AgvNodeMsg
  (:init
   (&key
    ((:node_id __node_id) 0)
    ((:node_name __node_name) "")
    ((:node_type __node_type) 0)
    ((:ref_cnt __ref_cnt) 0)
    ((:pos __pos) (instance geometry_msgs::Pose :init))
    )
   (send-super :init)
   (setq _node_id (round __node_id))
   (setq _node_name (string __node_name))
   (setq _node_type (round __node_type))
   (setq _ref_cnt (round __ref_cnt))
   (setq _pos __pos)
   self)
  (:node_id
   (&optional __node_id)
   (if __node_id (setq _node_id __node_id)) _node_id)
  (:node_name
   (&optional __node_name)
   (if __node_name (setq _node_name __node_name)) _node_name)
  (:node_type
   (&optional __node_type)
   (if __node_type (setq _node_type __node_type)) _node_type)
  (:ref_cnt
   (&optional __ref_cnt)
   (if __ref_cnt (setq _ref_cnt __ref_cnt)) _ref_cnt)
  (:pos
   (&rest __pos)
   (if (keywordp (car __pos))
       (send* _pos __pos)
     (progn
       (if __pos (setq _pos (car __pos)))
       _pos)))
  (:serialization-length
   ()
   (+
    ;; int32 _node_id
    4
    ;; string _node_name
    4 (length _node_name)
    ;; int32 _node_type
    4
    ;; int32 _ref_cnt
    4
    ;; geometry_msgs/Pose _pos
    (send _pos :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _node_id
       (write-long _node_id s)
     ;; string _node_name
       (write-long (length _node_name) s) (princ _node_name s)
     ;; int32 _node_type
       (write-long _node_type s)
     ;; int32 _ref_cnt
       (write-long _ref_cnt s)
     ;; geometry_msgs/Pose _pos
       (send _pos :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _node_id
     (setq _node_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _node_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _node_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _node_type
     (setq _node_type (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _ref_cnt
     (setq _ref_cnt (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; geometry_msgs/Pose _pos
     (send _pos :deserialize buf ptr-) (incf ptr- (send _pos :serialization-length))
   ;;
   self)
  )

(setf (get custom_sys_msgs::AgvNodeMsg :md5sum-) "425f24322817c1acfbde4fee56a7fac2")
(setf (get custom_sys_msgs::AgvNodeMsg :datatype-) "custom_sys_msgs/AgvNodeMsg")
(setf (get custom_sys_msgs::AgvNodeMsg :definition-)
      "int32 node_id
string node_name
int32 node_type
int32 ref_cnt
geometry_msgs/Pose pos

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



(provide :custom_sys_msgs/AgvNodeMsg "425f24322817c1acfbde4fee56a7fac2")


