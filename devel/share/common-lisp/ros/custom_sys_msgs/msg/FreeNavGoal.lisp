; Auto-generated. Do not edit!


(cl:in-package custom_sys_msgs-msg)


;//! \htmlinclude FreeNavGoal.msg.html

(cl:defclass <FreeNavGoal> (roslisp-msg-protocol:ros-message)
  ((path
    :reader path
    :initarg :path
    :type custom_sys_msgs-msg:FreeNav
    :initform (cl:make-instance 'custom_sys_msgs-msg:FreeNav)))
)

(cl:defclass FreeNavGoal (<FreeNavGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FreeNavGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FreeNavGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name custom_sys_msgs-msg:<FreeNavGoal> is deprecated: use custom_sys_msgs-msg:FreeNavGoal instead.")))

(cl:ensure-generic-function 'path-val :lambda-list '(m))
(cl:defmethod path-val ((m <FreeNavGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_sys_msgs-msg:path-val is deprecated.  Use custom_sys_msgs-msg:path instead.")
  (path m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FreeNavGoal>) ostream)
  "Serializes a message object of type '<FreeNavGoal>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'path) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FreeNavGoal>) istream)
  "Deserializes a message object of type '<FreeNavGoal>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'path) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FreeNavGoal>)))
  "Returns string type for a message object of type '<FreeNavGoal>"
  "custom_sys_msgs/FreeNavGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FreeNavGoal)))
  "Returns string type for a message object of type 'FreeNavGoal"
  "custom_sys_msgs/FreeNavGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FreeNavGoal>)))
  "Returns md5sum for a message object of type '<FreeNavGoal>"
  "bf7d1d15fa4d940cf9fb8c3ffffed66e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FreeNavGoal)))
  "Returns md5sum for a message object of type 'FreeNavGoal"
  "bf7d1d15fa4d940cf9fb8c3ffffed66e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FreeNavGoal>)))
  "Returns full string definition for message of type '<FreeNavGoal>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# goal: a path to exe~%custom_sys_msgs/FreeNav path~%~%================================================================================~%MSG: custom_sys_msgs/FreeNav~%geometry_msgs/PoseStamped target_pose~%custom_sys_msgs/AgvTrajectoryMsg2 target_path~%int32 type~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: custom_sys_msgs/AgvTrajectoryMsg2~%int32 task_id~%int32 task_type~%int32 vehicle_id~%int32 free_nav~%float64 deadline~%geometry_msgs/Pose dst_pose~%custom_sys_msgs/AgvLineMsg2[] agv_trajectory~%int32 test~%================================================================================~%MSG: custom_sys_msgs/AgvLineMsg2~%int32 segment_id~%int32 segment_type~%int32 attitude~%int32 tracking_mode~%float64 speed~%float64 precision~%float64 arrival_time~%float64 departure_time~%float64 redundancy_time~%geometry_msgs/Pose p_start~%geometry_msgs/Pose p_middle~%geometry_msgs/Pose p_end~%int32 start_node_id~%int32 end_node_id~%bool crossing~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FreeNavGoal)))
  "Returns full string definition for message of type 'FreeNavGoal"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# goal: a path to exe~%custom_sys_msgs/FreeNav path~%~%================================================================================~%MSG: custom_sys_msgs/FreeNav~%geometry_msgs/PoseStamped target_pose~%custom_sys_msgs/AgvTrajectoryMsg2 target_path~%int32 type~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: custom_sys_msgs/AgvTrajectoryMsg2~%int32 task_id~%int32 task_type~%int32 vehicle_id~%int32 free_nav~%float64 deadline~%geometry_msgs/Pose dst_pose~%custom_sys_msgs/AgvLineMsg2[] agv_trajectory~%int32 test~%================================================================================~%MSG: custom_sys_msgs/AgvLineMsg2~%int32 segment_id~%int32 segment_type~%int32 attitude~%int32 tracking_mode~%float64 speed~%float64 precision~%float64 arrival_time~%float64 departure_time~%float64 redundancy_time~%geometry_msgs/Pose p_start~%geometry_msgs/Pose p_middle~%geometry_msgs/Pose p_end~%int32 start_node_id~%int32 end_node_id~%bool crossing~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FreeNavGoal>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'path))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FreeNavGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'FreeNavGoal
    (cl:cons ':path (path msg))
))