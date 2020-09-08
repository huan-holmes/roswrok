; Auto-generated. Do not edit!


(cl:in-package custom_sys_msgs-msg)


;//! \htmlinclude PosDriveMsg.msg.html

(cl:defclass <PosDriveMsg> (roslisp-msg-protocol:ros-message)
  ((woke_mode
    :reader woke_mode
    :initarg :woke_mode
    :type cl:fixnum
    :initform 0)
   (vel
    :reader vel
    :initarg :vel
    :type cl:float
    :initform 0.0)
   (dt
    :reader dt
    :initarg :dt
    :type cl:float
    :initform 0.0))
)

(cl:defclass PosDriveMsg (<PosDriveMsg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PosDriveMsg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PosDriveMsg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name custom_sys_msgs-msg:<PosDriveMsg> is deprecated: use custom_sys_msgs-msg:PosDriveMsg instead.")))

(cl:ensure-generic-function 'woke_mode-val :lambda-list '(m))
(cl:defmethod woke_mode-val ((m <PosDriveMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_sys_msgs-msg:woke_mode-val is deprecated.  Use custom_sys_msgs-msg:woke_mode instead.")
  (woke_mode m))

(cl:ensure-generic-function 'vel-val :lambda-list '(m))
(cl:defmethod vel-val ((m <PosDriveMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_sys_msgs-msg:vel-val is deprecated.  Use custom_sys_msgs-msg:vel instead.")
  (vel m))

(cl:ensure-generic-function 'dt-val :lambda-list '(m))
(cl:defmethod dt-val ((m <PosDriveMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_sys_msgs-msg:dt-val is deprecated.  Use custom_sys_msgs-msg:dt instead.")
  (dt m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PosDriveMsg>) ostream)
  "Serializes a message object of type '<PosDriveMsg>"
  (cl:let* ((signed (cl:slot-value msg 'woke_mode)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'vel))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'dt))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PosDriveMsg>) istream)
  "Deserializes a message object of type '<PosDriveMsg>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'woke_mode) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'vel) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'dt) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PosDriveMsg>)))
  "Returns string type for a message object of type '<PosDriveMsg>"
  "custom_sys_msgs/PosDriveMsg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PosDriveMsg)))
  "Returns string type for a message object of type 'PosDriveMsg"
  "custom_sys_msgs/PosDriveMsg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PosDriveMsg>)))
  "Returns md5sum for a message object of type '<PosDriveMsg>"
  "7bb6b3d9b61499e839f2b3aff8cedd55")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PosDriveMsg)))
  "Returns md5sum for a message object of type 'PosDriveMsg"
  "7bb6b3d9b61499e839f2b3aff8cedd55")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PosDriveMsg>)))
  "Returns full string definition for message of type '<PosDriveMsg>"
  (cl:format cl:nil "int8 woke_mode~%float32 vel~%float32 dt~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PosDriveMsg)))
  "Returns full string definition for message of type 'PosDriveMsg"
  (cl:format cl:nil "int8 woke_mode~%float32 vel~%float32 dt~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PosDriveMsg>))
  (cl:+ 0
     1
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PosDriveMsg>))
  "Converts a ROS message object to a list"
  (cl:list 'PosDriveMsg
    (cl:cons ':woke_mode (woke_mode msg))
    (cl:cons ':vel (vel msg))
    (cl:cons ':dt (dt msg))
))
