; Auto-generated. Do not edit!


(cl:in-package custom_sys_msgs-msg)


;//! \htmlinclude AoaTrackingMsg.msg.html

(cl:defclass <AoaTrackingMsg> (roslisp-msg-protocol:ros-message)
  ((serial_switch
    :reader serial_switch
    :initarg :serial_switch
    :type cl:boolean
    :initform cl:nil)
   (task_id
    :reader task_id
    :initarg :task_id
    :type cl:integer
    :initform 0)
   (task_type
    :reader task_type
    :initarg :task_type
    :type cl:integer
    :initform 0)
   (vehicle_id
    :reader vehicle_id
    :initarg :vehicle_id
    :type cl:integer
    :initform 0)
   (remote_control_id
    :reader remote_control_id
    :initarg :remote_control_id
    :type cl:fixnum
    :initform 0))
)

(cl:defclass AoaTrackingMsg (<AoaTrackingMsg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AoaTrackingMsg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AoaTrackingMsg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name custom_sys_msgs-msg:<AoaTrackingMsg> is deprecated: use custom_sys_msgs-msg:AoaTrackingMsg instead.")))

(cl:ensure-generic-function 'serial_switch-val :lambda-list '(m))
(cl:defmethod serial_switch-val ((m <AoaTrackingMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_sys_msgs-msg:serial_switch-val is deprecated.  Use custom_sys_msgs-msg:serial_switch instead.")
  (serial_switch m))

(cl:ensure-generic-function 'task_id-val :lambda-list '(m))
(cl:defmethod task_id-val ((m <AoaTrackingMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_sys_msgs-msg:task_id-val is deprecated.  Use custom_sys_msgs-msg:task_id instead.")
  (task_id m))

(cl:ensure-generic-function 'task_type-val :lambda-list '(m))
(cl:defmethod task_type-val ((m <AoaTrackingMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_sys_msgs-msg:task_type-val is deprecated.  Use custom_sys_msgs-msg:task_type instead.")
  (task_type m))

(cl:ensure-generic-function 'vehicle_id-val :lambda-list '(m))
(cl:defmethod vehicle_id-val ((m <AoaTrackingMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_sys_msgs-msg:vehicle_id-val is deprecated.  Use custom_sys_msgs-msg:vehicle_id instead.")
  (vehicle_id m))

(cl:ensure-generic-function 'remote_control_id-val :lambda-list '(m))
(cl:defmethod remote_control_id-val ((m <AoaTrackingMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_sys_msgs-msg:remote_control_id-val is deprecated.  Use custom_sys_msgs-msg:remote_control_id instead.")
  (remote_control_id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AoaTrackingMsg>) ostream)
  "Serializes a message object of type '<AoaTrackingMsg>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'serial_switch) 1 0)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'task_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'task_type)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'vehicle_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'remote_control_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'remote_control_id)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AoaTrackingMsg>) istream)
  "Deserializes a message object of type '<AoaTrackingMsg>"
    (cl:setf (cl:slot-value msg 'serial_switch) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'task_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'task_type) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'vehicle_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'remote_control_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'remote_control_id)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AoaTrackingMsg>)))
  "Returns string type for a message object of type '<AoaTrackingMsg>"
  "custom_sys_msgs/AoaTrackingMsg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AoaTrackingMsg)))
  "Returns string type for a message object of type 'AoaTrackingMsg"
  "custom_sys_msgs/AoaTrackingMsg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AoaTrackingMsg>)))
  "Returns md5sum for a message object of type '<AoaTrackingMsg>"
  "8382739c3a150bd5ebcf30730920d2e8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AoaTrackingMsg)))
  "Returns md5sum for a message object of type 'AoaTrackingMsg"
  "8382739c3a150bd5ebcf30730920d2e8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AoaTrackingMsg>)))
  "Returns full string definition for message of type '<AoaTrackingMsg>"
  (cl:format cl:nil "bool serial_switch~%int32 task_id~%int32 task_type~%int32 vehicle_id~%uint16 remote_control_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AoaTrackingMsg)))
  "Returns full string definition for message of type 'AoaTrackingMsg"
  (cl:format cl:nil "bool serial_switch~%int32 task_id~%int32 task_type~%int32 vehicle_id~%uint16 remote_control_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AoaTrackingMsg>))
  (cl:+ 0
     1
     4
     4
     4
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AoaTrackingMsg>))
  "Converts a ROS message object to a list"
  (cl:list 'AoaTrackingMsg
    (cl:cons ':serial_switch (serial_switch msg))
    (cl:cons ':task_id (task_id msg))
    (cl:cons ':task_type (task_type msg))
    (cl:cons ':vehicle_id (vehicle_id msg))
    (cl:cons ':remote_control_id (remote_control_id msg))
))
