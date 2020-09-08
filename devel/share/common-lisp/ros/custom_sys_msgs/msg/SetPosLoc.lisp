; Auto-generated. Do not edit!


(cl:in-package custom_sys_msgs-msg)


;//! \htmlinclude SetPosLoc.msg.html

(cl:defclass <SetPosLoc> (roslisp-msg-protocol:ros-message)
  ((pose
    :reader pose
    :initarg :pose
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose))
   (search_dist
    :reader search_dist
    :initarg :search_dist
    :type cl:float
    :initform 0.0)
   (search_yaw
    :reader search_yaw
    :initarg :search_yaw
    :type cl:float
    :initform 0.0))
)

(cl:defclass SetPosLoc (<SetPosLoc>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetPosLoc>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetPosLoc)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name custom_sys_msgs-msg:<SetPosLoc> is deprecated: use custom_sys_msgs-msg:SetPosLoc instead.")))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <SetPosLoc>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_sys_msgs-msg:pose-val is deprecated.  Use custom_sys_msgs-msg:pose instead.")
  (pose m))

(cl:ensure-generic-function 'search_dist-val :lambda-list '(m))
(cl:defmethod search_dist-val ((m <SetPosLoc>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_sys_msgs-msg:search_dist-val is deprecated.  Use custom_sys_msgs-msg:search_dist instead.")
  (search_dist m))

(cl:ensure-generic-function 'search_yaw-val :lambda-list '(m))
(cl:defmethod search_yaw-val ((m <SetPosLoc>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_sys_msgs-msg:search_yaw-val is deprecated.  Use custom_sys_msgs-msg:search_yaw instead.")
  (search_yaw m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetPosLoc>) ostream)
  "Serializes a message object of type '<SetPosLoc>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'search_dist))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'search_yaw))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetPosLoc>) istream)
  "Deserializes a message object of type '<SetPosLoc>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'search_dist) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'search_yaw) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetPosLoc>)))
  "Returns string type for a message object of type '<SetPosLoc>"
  "custom_sys_msgs/SetPosLoc")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetPosLoc)))
  "Returns string type for a message object of type 'SetPosLoc"
  "custom_sys_msgs/SetPosLoc")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetPosLoc>)))
  "Returns md5sum for a message object of type '<SetPosLoc>"
  "78c9abe59b92be81b769bcaf9d65589c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetPosLoc)))
  "Returns md5sum for a message object of type 'SetPosLoc"
  "78c9abe59b92be81b769bcaf9d65589c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetPosLoc>)))
  "Returns full string definition for message of type '<SetPosLoc>"
  (cl:format cl:nil "geometry_msgs/Pose pose~%float64 search_dist~%float64 search_yaw~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetPosLoc)))
  "Returns full string definition for message of type 'SetPosLoc"
  (cl:format cl:nil "geometry_msgs/Pose pose~%float64 search_dist~%float64 search_yaw~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetPosLoc>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetPosLoc>))
  "Converts a ROS message object to a list"
  (cl:list 'SetPosLoc
    (cl:cons ':pose (pose msg))
    (cl:cons ':search_dist (search_dist msg))
    (cl:cons ':search_yaw (search_yaw msg))
))
