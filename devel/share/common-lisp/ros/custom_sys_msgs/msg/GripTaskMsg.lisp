; Auto-generated. Do not edit!


(cl:in-package custom_sys_msgs-msg)


;//! \htmlinclude GripTaskMsg.msg.html

(cl:defclass <GripTaskMsg> (roslisp-msg-protocol:ros-message)
  ((src_dir
    :reader src_dir
    :initarg :src_dir
    :type cl:fixnum
    :initform 0)
   (src_height
    :reader src_height
    :initarg :src_height
    :type cl:float
    :initform 0.0)
   (dst_dir
    :reader dst_dir
    :initarg :dst_dir
    :type cl:fixnum
    :initform 0)
   (dst_height
    :reader dst_height
    :initarg :dst_height
    :type cl:float
    :initform 0.0)
   (final_homing
    :reader final_homing
    :initarg :final_homing
    :type cl:fixnum
    :initform 0))
)

(cl:defclass GripTaskMsg (<GripTaskMsg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GripTaskMsg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GripTaskMsg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name custom_sys_msgs-msg:<GripTaskMsg> is deprecated: use custom_sys_msgs-msg:GripTaskMsg instead.")))

(cl:ensure-generic-function 'src_dir-val :lambda-list '(m))
(cl:defmethod src_dir-val ((m <GripTaskMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_sys_msgs-msg:src_dir-val is deprecated.  Use custom_sys_msgs-msg:src_dir instead.")
  (src_dir m))

(cl:ensure-generic-function 'src_height-val :lambda-list '(m))
(cl:defmethod src_height-val ((m <GripTaskMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_sys_msgs-msg:src_height-val is deprecated.  Use custom_sys_msgs-msg:src_height instead.")
  (src_height m))

(cl:ensure-generic-function 'dst_dir-val :lambda-list '(m))
(cl:defmethod dst_dir-val ((m <GripTaskMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_sys_msgs-msg:dst_dir-val is deprecated.  Use custom_sys_msgs-msg:dst_dir instead.")
  (dst_dir m))

(cl:ensure-generic-function 'dst_height-val :lambda-list '(m))
(cl:defmethod dst_height-val ((m <GripTaskMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_sys_msgs-msg:dst_height-val is deprecated.  Use custom_sys_msgs-msg:dst_height instead.")
  (dst_height m))

(cl:ensure-generic-function 'final_homing-val :lambda-list '(m))
(cl:defmethod final_homing-val ((m <GripTaskMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_sys_msgs-msg:final_homing-val is deprecated.  Use custom_sys_msgs-msg:final_homing instead.")
  (final_homing m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GripTaskMsg>) ostream)
  "Serializes a message object of type '<GripTaskMsg>"
  (cl:let* ((signed (cl:slot-value msg 'src_dir)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'src_height))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'dst_dir)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'dst_height))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'final_homing)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GripTaskMsg>) istream)
  "Deserializes a message object of type '<GripTaskMsg>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'src_dir) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'src_height) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'dst_dir) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'dst_height) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'final_homing) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GripTaskMsg>)))
  "Returns string type for a message object of type '<GripTaskMsg>"
  "custom_sys_msgs/GripTaskMsg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GripTaskMsg)))
  "Returns string type for a message object of type 'GripTaskMsg"
  "custom_sys_msgs/GripTaskMsg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GripTaskMsg>)))
  "Returns md5sum for a message object of type '<GripTaskMsg>"
  "edcdb33fee8dd1cca389a115bb5f85d4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GripTaskMsg)))
  "Returns md5sum for a message object of type 'GripTaskMsg"
  "edcdb33fee8dd1cca389a115bb5f85d4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GripTaskMsg>)))
  "Returns full string definition for message of type '<GripTaskMsg>"
  (cl:format cl:nil "int8 src_dir~%float32 src_height~%int8 dst_dir~%float32 dst_height~%int8 final_homing~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GripTaskMsg)))
  "Returns full string definition for message of type 'GripTaskMsg"
  (cl:format cl:nil "int8 src_dir~%float32 src_height~%int8 dst_dir~%float32 dst_height~%int8 final_homing~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GripTaskMsg>))
  (cl:+ 0
     1
     4
     1
     4
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GripTaskMsg>))
  "Converts a ROS message object to a list"
  (cl:list 'GripTaskMsg
    (cl:cons ':src_dir (src_dir msg))
    (cl:cons ':src_height (src_height msg))
    (cl:cons ':dst_dir (dst_dir msg))
    (cl:cons ':dst_height (dst_height msg))
    (cl:cons ':final_homing (final_homing msg))
))
