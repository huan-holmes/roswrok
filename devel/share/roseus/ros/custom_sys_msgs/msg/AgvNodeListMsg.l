;; Auto-generated. Do not edit!


(when (boundp 'custom_sys_msgs::AgvNodeListMsg)
  (if (not (find-package "CUSTOM_SYS_MSGS"))
    (make-package "CUSTOM_SYS_MSGS"))
  (shadow 'AgvNodeListMsg (find-package "CUSTOM_SYS_MSGS")))
(unless (find-package "CUSTOM_SYS_MSGS::AGVNODELISTMSG")
  (make-package "CUSTOM_SYS_MSGS::AGVNODELISTMSG"))

(in-package "ROS")
;;//! \htmlinclude AgvNodeListMsg.msg.html


(defclass custom_sys_msgs::AgvNodeListMsg
  :super ros::object
  :slots (_node_list ))

(defmethod custom_sys_msgs::AgvNodeListMsg
  (:init
   (&key
    ((:node_list __node_list) (let (r) (dotimes (i 0) (push (instance custom_sys_msgs::AgvNodeMsg :init) r)) r))
    )
   (send-super :init)
   (setq _node_list __node_list)
   self)
  (:node_list
   (&rest __node_list)
   (if (keywordp (car __node_list))
       (send* _node_list __node_list)
     (progn
       (if __node_list (setq _node_list (car __node_list)))
       _node_list)))
  (:serialization-length
   ()
   (+
    ;; custom_sys_msgs/AgvNodeMsg[] _node_list
    (apply #'+ (send-all _node_list :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; custom_sys_msgs/AgvNodeMsg[] _node_list
     (write-long (length _node_list) s)
     (dolist (elem _node_list)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; custom_sys_msgs/AgvNodeMsg[] _node_list
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _node_list (let (r) (dotimes (i n) (push (instance custom_sys_msgs::AgvNodeMsg :init) r)) r))
     (dolist (elem- _node_list)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get custom_sys_msgs::AgvNodeListMsg :md5sum-) "2203275847428c3096be7271d54ad404")
(setf (get custom_sys_msgs::AgvNodeListMsg :datatype-) "custom_sys_msgs/AgvNodeListMsg")
(setf (get custom_sys_msgs::AgvNodeListMsg :definition-)
      "custom_sys_msgs/AgvNodeMsg[] node_list

================================================================================
MSG: custom_sys_msgs/AgvNodeMsg
int32 node_id
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



(provide :custom_sys_msgs/AgvNodeListMsg "2203275847428c3096be7271d54ad404")


