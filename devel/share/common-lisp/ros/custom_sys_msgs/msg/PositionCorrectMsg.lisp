; Auto-generated. Do not edit!


(cl:in-package custom_sys_msgs-msg)


;//! \htmlinclude PositionCorrectMsg.msg.html

(cl:defclass <PositionCorrectMsg> (roslisp-msg-protocol:ros-message)
  ((publisher
    :reader publisher
    :initarg :publisher
    :type cl:string
    :initform "")
   (src
    :reader src
    :initarg :src
    :type geometry_msgs-msg:PoseStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PoseStamped))
   (dest
    :reader dest
    :initarg :dest
    :type geometry_msgs-msg:PoseStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PoseStamped)))
)

(cl:defclass PositionCorrectMsg (<PositionCorrectMsg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PositionCorrectMsg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PositionCorrectMsg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name custom_sys_msgs-msg:<PositionCorrectMsg> is deprecated: use custom_sys_msgs-msg:PositionCorrectMsg instead.")))

(cl:ensure-generic-function 'publisher-val :lambda-list '(m))
(cl:defmethod publisher-val ((m <PositionCorrectMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_sys_msgs-msg:publisher-val is deprecated.  Use custom_sys_msgs-msg:publisher instead.")
  (publisher m))

(cl:ensure-generic-function 'src-val :lambda-list '(m))
(cl:defmethod src-val ((m <PositionCorrectMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_sys_msgs-msg:src-val is deprecated.  Use custom_sys_msgs-msg:src instead.")
  (src m))

(cl:ensure-generic-function 'dest-val :lambda-list '(m))
(cl:defmethod dest-val ((m <PositionCorrectMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_sys_msgs-msg:dest-val is deprecated.  Use custom_sys_msgs-msg:dest instead.")
  (dest m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PositionCorrectMsg>) ostream)
  "Serializes a message object of type '<PositionCorrectMsg>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'publisher))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'publisher))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'src) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'dest) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PositionCorrectMsg>) istream)
  "Deserializes a message object of type '<PositionCorrectMsg>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'publisher) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'publisher) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'src) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'dest) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PositionCorrectMsg>)))
  "Returns string type for a message object of type '<PositionCorrectMsg>"
  "custom_sys_msgs/PositionCorrectMsg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PositionCorrectMsg)))
  "Returns string type for a message object of type 'PositionCorrectMsg"
  "custom_sys_msgs/PositionCorrectMsg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PositionCorrectMsg>)))
  "Returns md5sum for a message object of type '<PositionCorrectMsg>"
  "8d4258103e89217fefb1bfba9a02eb62")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PositionCorrectMsg)))
  "Returns md5sum for a message object of type 'PositionCorrectMsg"
  "8d4258103e89217fefb1bfba9a02eb62")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PositionCorrectMsg>)))
  "Returns full string definition for message of type '<PositionCorrectMsg>"
  (cl:format cl:nil "string publisher~%geometry_msgs/PoseStamped src~%geometry_msgs/PoseStamped dest~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PositionCorrectMsg)))
  "Returns full string definition for message of type 'PositionCorrectMsg"
  (cl:format cl:nil "string publisher~%geometry_msgs/PoseStamped src~%geometry_msgs/PoseStamped dest~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PositionCorrectMsg>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'publisher))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'src))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'dest))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PositionCorrectMsg>))
  "Converts a ROS message object to a list"
  (cl:list 'PositionCorrectMsg
    (cl:cons ':publisher (publisher msg))
    (cl:cons ':src (src msg))
    (cl:cons ':dest (dest msg))
))
