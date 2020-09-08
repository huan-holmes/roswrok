; Auto-generated. Do not edit!


(cl:in-package custom_sys_msgs-msg)


;//! \htmlinclude AutoDockMsg.msg.html

(cl:defclass <AutoDockMsg> (roslisp-msg-protocol:ros-message)
  ((direction
    :reader direction
    :initarg :direction
    :type cl:integer
    :initform 0)
   (dist_to_stop
    :reader dist_to_stop
    :initarg :dist_to_stop
    :type cl:float
    :initform 0.0)
   (final_dist
    :reader final_dist
    :initarg :final_dist
    :type cl:float
    :initform 0.0))
)

(cl:defclass AutoDockMsg (<AutoDockMsg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AutoDockMsg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AutoDockMsg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name custom_sys_msgs-msg:<AutoDockMsg> is deprecated: use custom_sys_msgs-msg:AutoDockMsg instead.")))

(cl:ensure-generic-function 'direction-val :lambda-list '(m))
(cl:defmethod direction-val ((m <AutoDockMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_sys_msgs-msg:direction-val is deprecated.  Use custom_sys_msgs-msg:direction instead.")
  (direction m))

(cl:ensure-generic-function 'dist_to_stop-val :lambda-list '(m))
(cl:defmethod dist_to_stop-val ((m <AutoDockMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_sys_msgs-msg:dist_to_stop-val is deprecated.  Use custom_sys_msgs-msg:dist_to_stop instead.")
  (dist_to_stop m))

(cl:ensure-generic-function 'final_dist-val :lambda-list '(m))
(cl:defmethod final_dist-val ((m <AutoDockMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_sys_msgs-msg:final_dist-val is deprecated.  Use custom_sys_msgs-msg:final_dist instead.")
  (final_dist m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AutoDockMsg>) ostream)
  "Serializes a message object of type '<AutoDockMsg>"
  (cl:let* ((signed (cl:slot-value msg 'direction)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'dist_to_stop))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'final_dist))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AutoDockMsg>) istream)
  "Deserializes a message object of type '<AutoDockMsg>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'direction) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'dist_to_stop) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'final_dist) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AutoDockMsg>)))
  "Returns string type for a message object of type '<AutoDockMsg>"
  "custom_sys_msgs/AutoDockMsg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AutoDockMsg)))
  "Returns string type for a message object of type 'AutoDockMsg"
  "custom_sys_msgs/AutoDockMsg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AutoDockMsg>)))
  "Returns md5sum for a message object of type '<AutoDockMsg>"
  "4151794017432cf3ab9616a1c6f5ab81")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AutoDockMsg)))
  "Returns md5sum for a message object of type 'AutoDockMsg"
  "4151794017432cf3ab9616a1c6f5ab81")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AutoDockMsg>)))
  "Returns full string definition for message of type '<AutoDockMsg>"
  (cl:format cl:nil "int32 direction~%float64 dist_to_stop~%float64 final_dist~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AutoDockMsg)))
  "Returns full string definition for message of type 'AutoDockMsg"
  (cl:format cl:nil "int32 direction~%float64 dist_to_stop~%float64 final_dist~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AutoDockMsg>))
  (cl:+ 0
     4
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AutoDockMsg>))
  "Converts a ROS message object to a list"
  (cl:list 'AutoDockMsg
    (cl:cons ':direction (direction msg))
    (cl:cons ':dist_to_stop (dist_to_stop msg))
    (cl:cons ':final_dist (final_dist msg))
))
