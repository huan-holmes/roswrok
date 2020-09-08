;; Auto-generated. Do not edit!


(when (boundp 'custom_sys_msgs::AlvarMarkers)
  (if (not (find-package "CUSTOM_SYS_MSGS"))
    (make-package "CUSTOM_SYS_MSGS"))
  (shadow 'AlvarMarkers (find-package "CUSTOM_SYS_MSGS")))
(unless (find-package "CUSTOM_SYS_MSGS::ALVARMARKERS")
  (make-package "CUSTOM_SYS_MSGS::ALVARMARKERS"))

(in-package "ROS")
;;//! \htmlinclude AlvarMarkers.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass custom_sys_msgs::AlvarMarkers
  :super ros::object
  :slots (_header _rt _makers ))

(defmethod custom_sys_msgs::AlvarMarkers
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:rt __rt) nil)
    ((:makers __makers) (let (r) (dotimes (i 0) (push (instance custom_sys_msgs::AlvarMarker :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _rt __rt)
   (setq _makers __makers)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:rt
   (&optional __rt)
   (if __rt (setq _rt __rt)) _rt)
  (:makers
   (&rest __makers)
   (if (keywordp (car __makers))
       (send* _makers __makers)
     (progn
       (if __makers (setq _makers (car __makers)))
       _makers)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; bool _rt
    1
    ;; custom_sys_msgs/AlvarMarker[] _makers
    (apply #'+ (send-all _makers :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; bool _rt
       (if _rt (write-byte -1 s) (write-byte 0 s))
     ;; custom_sys_msgs/AlvarMarker[] _makers
     (write-long (length _makers) s)
     (dolist (elem _makers)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; bool _rt
     (setq _rt (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; custom_sys_msgs/AlvarMarker[] _makers
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _makers (let (r) (dotimes (i n) (push (instance custom_sys_msgs::AlvarMarker :init) r)) r))
     (dolist (elem- _makers)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get custom_sys_msgs::AlvarMarkers :md5sum-) "482f7d740dba8f6b77df1734db153e78")
(setf (get custom_sys_msgs::AlvarMarkers :datatype-) "custom_sys_msgs/AlvarMarkers")
(setf (get custom_sys_msgs::AlvarMarkers :definition-)
      "Header header
bool rt
AlvarMarker[] makers

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
MSG: custom_sys_msgs/AlvarMarker
Header header
uint32 id
uint32 confidence
geometry_msgs/PoseStamped pose


================================================================================
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

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



(provide :custom_sys_msgs/AlvarMarkers "482f7d740dba8f6b77df1734db153e78")


