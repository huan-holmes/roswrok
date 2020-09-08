; Auto-generated. Do not edit!


(cl:in-package custom_sys_msgs-msg)


;//! \htmlinclude PositionVerificationInfo.msg.html

(cl:defclass <PositionVerificationInfo> (roslisp-msg-protocol:ros-message)
  ((loc_status
    :reader loc_status
    :initarg :loc_status
    :type cl:integer
    :initform 0)
   (suggest_max_vx
    :reader suggest_max_vx
    :initarg :suggest_max_vx
    :type cl:float
    :initform 0.0)
   (suggest_max_vtheta
    :reader suggest_max_vtheta
    :initarg :suggest_max_vtheta
    :type cl:float
    :initform 0.0))
)

(cl:defclass PositionVerificationInfo (<PositionVerificationInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PositionVerificationInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PositionVerificationInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name custom_sys_msgs-msg:<PositionVerificationInfo> is deprecated: use custom_sys_msgs-msg:PositionVerificationInfo instead.")))

(cl:ensure-generic-function 'loc_status-val :lambda-list '(m))
(cl:defmethod loc_status-val ((m <PositionVerificationInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_sys_msgs-msg:loc_status-val is deprecated.  Use custom_sys_msgs-msg:loc_status instead.")
  (loc_status m))

(cl:ensure-generic-function 'suggest_max_vx-val :lambda-list '(m))
(cl:defmethod suggest_max_vx-val ((m <PositionVerificationInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_sys_msgs-msg:suggest_max_vx-val is deprecated.  Use custom_sys_msgs-msg:suggest_max_vx instead.")
  (suggest_max_vx m))

(cl:ensure-generic-function 'suggest_max_vtheta-val :lambda-list '(m))
(cl:defmethod suggest_max_vtheta-val ((m <PositionVerificationInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_sys_msgs-msg:suggest_max_vtheta-val is deprecated.  Use custom_sys_msgs-msg:suggest_max_vtheta instead.")
  (suggest_max_vtheta m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PositionVerificationInfo>) ostream)
  "Serializes a message object of type '<PositionVerificationInfo>"
  (cl:let* ((signed (cl:slot-value msg 'loc_status)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'suggest_max_vx))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'suggest_max_vtheta))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PositionVerificationInfo>) istream)
  "Deserializes a message object of type '<PositionVerificationInfo>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'loc_status) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'suggest_max_vx) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'suggest_max_vtheta) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PositionVerificationInfo>)))
  "Returns string type for a message object of type '<PositionVerificationInfo>"
  "custom_sys_msgs/PositionVerificationInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PositionVerificationInfo)))
  "Returns string type for a message object of type 'PositionVerificationInfo"
  "custom_sys_msgs/PositionVerificationInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PositionVerificationInfo>)))
  "Returns md5sum for a message object of type '<PositionVerificationInfo>"
  "7ce66b05d8b3d1f15000aa53d885fc04")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PositionVerificationInfo)))
  "Returns md5sum for a message object of type 'PositionVerificationInfo"
  "7ce66b05d8b3d1f15000aa53d885fc04")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PositionVerificationInfo>)))
  "Returns full string definition for message of type '<PositionVerificationInfo>"
  (cl:format cl:nil "int32 loc_status~%float64 suggest_max_vx~%float64 suggest_max_vtheta~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PositionVerificationInfo)))
  "Returns full string definition for message of type 'PositionVerificationInfo"
  (cl:format cl:nil "int32 loc_status~%float64 suggest_max_vx~%float64 suggest_max_vtheta~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PositionVerificationInfo>))
  (cl:+ 0
     4
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PositionVerificationInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'PositionVerificationInfo
    (cl:cons ':loc_status (loc_status msg))
    (cl:cons ':suggest_max_vx (suggest_max_vx msg))
    (cl:cons ':suggest_max_vtheta (suggest_max_vtheta msg))
))
