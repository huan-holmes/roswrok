; Auto-generated. Do not edit!


(cl:in-package custom_sys_msgs-msg)


;//! \htmlinclude InitalPoseMsg.msg.html

(cl:defclass <InitalPoseMsg> (roslisp-msg-protocol:ros-message)
  ((pos
    :reader pos
    :initarg :pos
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose))
   (pos_var
    :reader pos_var
    :initarg :pos_var
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose))
   (yaw_var
    :reader yaw_var
    :initarg :yaw_var
    :type cl:float
    :initform 0.0))
)

(cl:defclass InitalPoseMsg (<InitalPoseMsg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <InitalPoseMsg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'InitalPoseMsg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name custom_sys_msgs-msg:<InitalPoseMsg> is deprecated: use custom_sys_msgs-msg:InitalPoseMsg instead.")))

(cl:ensure-generic-function 'pos-val :lambda-list '(m))
(cl:defmethod pos-val ((m <InitalPoseMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_sys_msgs-msg:pos-val is deprecated.  Use custom_sys_msgs-msg:pos instead.")
  (pos m))

(cl:ensure-generic-function 'pos_var-val :lambda-list '(m))
(cl:defmethod pos_var-val ((m <InitalPoseMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_sys_msgs-msg:pos_var-val is deprecated.  Use custom_sys_msgs-msg:pos_var instead.")
  (pos_var m))

(cl:ensure-generic-function 'yaw_var-val :lambda-list '(m))
(cl:defmethod yaw_var-val ((m <InitalPoseMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_sys_msgs-msg:yaw_var-val is deprecated.  Use custom_sys_msgs-msg:yaw_var instead.")
  (yaw_var m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <InitalPoseMsg>) ostream)
  "Serializes a message object of type '<InitalPoseMsg>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pos) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pos_var) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'yaw_var))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <InitalPoseMsg>) istream)
  "Deserializes a message object of type '<InitalPoseMsg>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pos) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pos_var) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'yaw_var) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<InitalPoseMsg>)))
  "Returns string type for a message object of type '<InitalPoseMsg>"
  "custom_sys_msgs/InitalPoseMsg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'InitalPoseMsg)))
  "Returns string type for a message object of type 'InitalPoseMsg"
  "custom_sys_msgs/InitalPoseMsg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<InitalPoseMsg>)))
  "Returns md5sum for a message object of type '<InitalPoseMsg>"
  "23af2ff86744279d9501d4df9ddadc6e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'InitalPoseMsg)))
  "Returns md5sum for a message object of type 'InitalPoseMsg"
  "23af2ff86744279d9501d4df9ddadc6e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<InitalPoseMsg>)))
  "Returns full string definition for message of type '<InitalPoseMsg>"
  (cl:format cl:nil "geometry_msgs/Pose pos~%geometry_msgs/Pose pos_var~%float64 yaw_var~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'InitalPoseMsg)))
  "Returns full string definition for message of type 'InitalPoseMsg"
  (cl:format cl:nil "geometry_msgs/Pose pos~%geometry_msgs/Pose pos_var~%float64 yaw_var~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <InitalPoseMsg>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pos))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pos_var))
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <InitalPoseMsg>))
  "Converts a ROS message object to a list"
  (cl:list 'InitalPoseMsg
    (cl:cons ':pos (pos msg))
    (cl:cons ':pos_var (pos_var msg))
    (cl:cons ':yaw_var (yaw_var msg))
))
