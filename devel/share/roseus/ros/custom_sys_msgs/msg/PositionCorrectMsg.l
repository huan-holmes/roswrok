;; Auto-generated. Do not edit!


(when (boundp 'custom_sys_msgs::PositionCorrectMsg)
  (if (not (find-package "CUSTOM_SYS_MSGS"))
    (make-package "CUSTOM_SYS_MSGS"))
  (shadow 'PositionCorrectMsg (find-package "CUSTOM_SYS_MSGS")))
(unless (find-package "CUSTOM_SYS_MSGS::POSITIONCORRECTMSG")
  (make-package "CUSTOM_SYS_MSGS::POSITIONCORRECTMSG"))

(in-package "ROS")
;;//! \htmlinclude PositionCorrectMsg.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass custom_sys_msgs::PositionCorrectMsg
  :super ros::object
  :slots (_publisher _src _dest ))

(defmethod custom_sys_msgs::PositionCorrectMsg
  (:init
   (&key
    ((:publisher __publisher) "")
    ((:src __src) (instance geometry_msgs::PoseStamped :init))
    ((:dest __dest) (instance geometry_msgs::PoseStamped :init))
    )
   (send-super :init)
   (setq _publisher (string __publisher))
   (setq _src __src)
   (setq _dest __dest)
   self)
  (:publisher
   (&optional __publisher)
   (if __publisher (setq _publisher __publisher)) _publisher)
  (:src
   (&rest __src)
   (if (keywordp (car __src))
       (send* _src __src)
     (progn
       (if __src (setq _src (car __src)))
       _src)))
  (:dest
   (&rest __dest)
   (if (keywordp (car __dest))
       (send* _dest __dest)
     (progn
       (if __dest (setq _dest (car __dest)))
       _dest)))
  (:serialization-length
   ()
   (+
    ;; string _publisher
    4 (length _publisher)
    ;; geometry_msgs/PoseStamped _src
    (send _src :serialization-length)
    ;; geometry_msgs/PoseStamped _dest
    (send _dest :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _publisher
       (write-long (length _publisher) s) (princ _publisher s)
     ;; geometry_msgs/PoseStamped _src
       (send _src :serialize s)
     ;; geometry_msgs/PoseStamped _dest
       (send _dest :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _publisher
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _publisher (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; geometry_msgs/PoseStamped _src
     (send _src :deserialize buf ptr-) (incf ptr- (send _src :serialization-length))
   ;; geometry_msgs/PoseStamped _dest
     (send _dest :deserialize buf ptr-) (incf ptr- (send _dest :serialization-length))
   ;;
   self)
  )

(setf (get custom_sys_msgs::PositionCorrectMsg :md5sum-) "8d4258103e89217fefb1bfba9a02eb62")
(setf (get custom_sys_msgs::PositionCorrectMsg :datatype-) "custom_sys_msgs/PositionCorrectMsg")
(setf (get custom_sys_msgs::PositionCorrectMsg :definition-)
      "string publisher
geometry_msgs/PoseStamped src
geometry_msgs/PoseStamped dest

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



(provide :custom_sys_msgs/PositionCorrectMsg "8d4258103e89217fefb1bfba9a02eb62")


