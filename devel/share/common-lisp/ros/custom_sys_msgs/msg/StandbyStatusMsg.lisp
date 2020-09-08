; Auto-generated. Do not edit!


(cl:in-package custom_sys_msgs-msg)


;//! \htmlinclude StandbyStatusMsg.msg.html

(cl:defclass <StandbyStatusMsg> (roslisp-msg-protocol:ros-message)
  ((task_id
    :reader task_id
    :initarg :task_id
    :type cl:integer
    :initform 0)
   (task_type
    :reader task_type
    :initarg :task_type
    :type cl:integer
    :initform 0)
   (status_code
    :reader status_code
    :initarg :status_code
    :type cl:integer
    :initform 0)
   (time_out
    :reader time_out
    :initarg :time_out
    :type cl:float
    :initform 0.0)
   (display_info
    :reader display_info
    :initarg :display_info
    :type cl:string
    :initform ""))
)

(cl:defclass StandbyStatusMsg (<StandbyStatusMsg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StandbyStatusMsg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StandbyStatusMsg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name custom_sys_msgs-msg:<StandbyStatusMsg> is deprecated: use custom_sys_msgs-msg:StandbyStatusMsg instead.")))

(cl:ensure-generic-function 'task_id-val :lambda-list '(m))
(cl:defmethod task_id-val ((m <StandbyStatusMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_sys_msgs-msg:task_id-val is deprecated.  Use custom_sys_msgs-msg:task_id instead.")
  (task_id m))

(cl:ensure-generic-function 'task_type-val :lambda-list '(m))
(cl:defmethod task_type-val ((m <StandbyStatusMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_sys_msgs-msg:task_type-val is deprecated.  Use custom_sys_msgs-msg:task_type instead.")
  (task_type m))

(cl:ensure-generic-function 'status_code-val :lambda-list '(m))
(cl:defmethod status_code-val ((m <StandbyStatusMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_sys_msgs-msg:status_code-val is deprecated.  Use custom_sys_msgs-msg:status_code instead.")
  (status_code m))

(cl:ensure-generic-function 'time_out-val :lambda-list '(m))
(cl:defmethod time_out-val ((m <StandbyStatusMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_sys_msgs-msg:time_out-val is deprecated.  Use custom_sys_msgs-msg:time_out instead.")
  (time_out m))

(cl:ensure-generic-function 'display_info-val :lambda-list '(m))
(cl:defmethod display_info-val ((m <StandbyStatusMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_sys_msgs-msg:display_info-val is deprecated.  Use custom_sys_msgs-msg:display_info instead.")
  (display_info m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StandbyStatusMsg>) ostream)
  "Serializes a message object of type '<StandbyStatusMsg>"
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
  (cl:let* ((signed (cl:slot-value msg 'status_code)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'time_out))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'display_info))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'display_info))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StandbyStatusMsg>) istream)
  "Deserializes a message object of type '<StandbyStatusMsg>"
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
      (cl:setf (cl:slot-value msg 'status_code) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'time_out) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'display_info) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'display_info) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StandbyStatusMsg>)))
  "Returns string type for a message object of type '<StandbyStatusMsg>"
  "custom_sys_msgs/StandbyStatusMsg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StandbyStatusMsg)))
  "Returns string type for a message object of type 'StandbyStatusMsg"
  "custom_sys_msgs/StandbyStatusMsg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StandbyStatusMsg>)))
  "Returns md5sum for a message object of type '<StandbyStatusMsg>"
  "3d76ddb95882158e393770b68e0862a9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StandbyStatusMsg)))
  "Returns md5sum for a message object of type 'StandbyStatusMsg"
  "3d76ddb95882158e393770b68e0862a9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StandbyStatusMsg>)))
  "Returns full string definition for message of type '<StandbyStatusMsg>"
  (cl:format cl:nil "int32 task_id~%int32 task_type~%int32 status_code~%float64 time_out~%string display_info~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StandbyStatusMsg)))
  "Returns full string definition for message of type 'StandbyStatusMsg"
  (cl:format cl:nil "int32 task_id~%int32 task_type~%int32 status_code~%float64 time_out~%string display_info~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StandbyStatusMsg>))
  (cl:+ 0
     4
     4
     4
     8
     4 (cl:length (cl:slot-value msg 'display_info))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StandbyStatusMsg>))
  "Converts a ROS message object to a list"
  (cl:list 'StandbyStatusMsg
    (cl:cons ':task_id (task_id msg))
    (cl:cons ':task_type (task_type msg))
    (cl:cons ':status_code (status_code msg))
    (cl:cons ':time_out (time_out msg))
    (cl:cons ':display_info (display_info msg))
))
