; Auto-generated. Do not edit!


(cl:in-package custom_sys_msgs-msg)


;//! \htmlinclude FreeNav.msg.html

(cl:defclass <FreeNav> (roslisp-msg-protocol:ros-message)
  ((target_pose
    :reader target_pose
    :initarg :target_pose
    :type geometry_msgs-msg:PoseStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PoseStamped))
   (target_path
    :reader target_path
    :initarg :target_path
    :type custom_sys_msgs-msg:AgvTrajectoryMsg2
    :initform (cl:make-instance 'custom_sys_msgs-msg:AgvTrajectoryMsg2))
   (type
    :reader type
    :initarg :type
    :type cl:integer
    :initform 0))
)

(cl:defclass FreeNav (<FreeNav>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FreeNav>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FreeNav)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name custom_sys_msgs-msg:<FreeNav> is deprecated: use custom_sys_msgs-msg:FreeNav instead.")))

(cl:ensure-generic-function 'target_pose-val :lambda-list '(m))
(cl:defmethod target_pose-val ((m <FreeNav>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_sys_msgs-msg:target_pose-val is deprecated.  Use custom_sys_msgs-msg:target_pose instead.")
  (target_pose m))

(cl:ensure-generic-function 'target_path-val :lambda-list '(m))
(cl:defmethod target_path-val ((m <FreeNav>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_sys_msgs-msg:target_path-val is deprecated.  Use custom_sys_msgs-msg:target_path instead.")
  (target_path m))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <FreeNav>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_sys_msgs-msg:type-val is deprecated.  Use custom_sys_msgs-msg:type instead.")
  (type m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FreeNav>) ostream)
  "Serializes a message object of type '<FreeNav>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'target_pose) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'target_path) ostream)
  (cl:let* ((signed (cl:slot-value msg 'type)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FreeNav>) istream)
  "Deserializes a message object of type '<FreeNav>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'target_pose) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'target_path) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'type) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FreeNav>)))
  "Returns string type for a message object of type '<FreeNav>"
  "custom_sys_msgs/FreeNav")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FreeNav)))
  "Returns string type for a message object of type 'FreeNav"
  "custom_sys_msgs/FreeNav")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FreeNav>)))
  "Returns md5sum for a message object of type '<FreeNav>"
  "23022d59f10203932fccb77d648e4155")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FreeNav)))
  "Returns md5sum for a message object of type 'FreeNav"
  "23022d59f10203932fccb77d648e4155")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FreeNav>)))
  "Returns full string definition for message of type '<FreeNav>"
  (cl:format cl:nil "geometry_msgs/PoseStamped target_pose~%custom_sys_msgs/AgvTrajectoryMsg2 target_path~%int32 type~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: custom_sys_msgs/AgvTrajectoryMsg2~%int32 task_id~%int32 task_type~%int32 vehicle_id~%int32 free_nav~%float64 deadline~%geometry_msgs/Pose dst_pose~%custom_sys_msgs/AgvLineMsg2[] agv_trajectory~%int32 test~%================================================================================~%MSG: custom_sys_msgs/AgvLineMsg2~%int32 segment_id~%int32 segment_type~%int32 attitude~%int32 tracking_mode~%float64 speed~%float64 precision~%float64 arrival_time~%float64 departure_time~%float64 redundancy_time~%geometry_msgs/Pose p_start~%geometry_msgs/Pose p_middle~%geometry_msgs/Pose p_end~%int32 start_node_id~%int32 end_node_id~%bool crossing~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FreeNav)))
  "Returns full string definition for message of type 'FreeNav"
  (cl:format cl:nil "geometry_msgs/PoseStamped target_pose~%custom_sys_msgs/AgvTrajectoryMsg2 target_path~%int32 type~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: custom_sys_msgs/AgvTrajectoryMsg2~%int32 task_id~%int32 task_type~%int32 vehicle_id~%int32 free_nav~%float64 deadline~%geometry_msgs/Pose dst_pose~%custom_sys_msgs/AgvLineMsg2[] agv_trajectory~%int32 test~%================================================================================~%MSG: custom_sys_msgs/AgvLineMsg2~%int32 segment_id~%int32 segment_type~%int32 attitude~%int32 tracking_mode~%float64 speed~%float64 precision~%float64 arrival_time~%float64 departure_time~%float64 redundancy_time~%geometry_msgs/Pose p_start~%geometry_msgs/Pose p_middle~%geometry_msgs/Pose p_end~%int32 start_node_id~%int32 end_node_id~%bool crossing~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FreeNav>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'target_pose))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'target_path))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FreeNav>))
  "Converts a ROS message object to a list"
  (cl:list 'FreeNav
    (cl:cons ':target_pose (target_pose msg))
    (cl:cons ':target_path (target_path msg))
    (cl:cons ':type (type msg))
))
