; Auto-generated. Do not edit!


(cl:in-package custom_sys_msgs-msg)


;//! \htmlinclude TaskActionMsg.msg.html

(cl:defclass <TaskActionMsg> (roslisp-msg-protocol:ros-message)
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
   (action
    :reader action
    :initarg :action
    :type cl:string
    :initform "")
   (action_code
    :reader action_code
    :initarg :action_code
    :type cl:integer
    :initform 0)
   (immediately
    :reader immediately
    :initarg :immediately
    :type cl:string
    :initform ""))
)

(cl:defclass TaskActionMsg (<TaskActionMsg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TaskActionMsg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TaskActionMsg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name custom_sys_msgs-msg:<TaskActionMsg> is deprecated: use custom_sys_msgs-msg:TaskActionMsg instead.")))

(cl:ensure-generic-function 'task_id-val :lambda-list '(m))
(cl:defmethod task_id-val ((m <TaskActionMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_sys_msgs-msg:task_id-val is deprecated.  Use custom_sys_msgs-msg:task_id instead.")
  (task_id m))

(cl:ensure-generic-function 'task_type-val :lambda-list '(m))
(cl:defmethod task_type-val ((m <TaskActionMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_sys_msgs-msg:task_type-val is deprecated.  Use custom_sys_msgs-msg:task_type instead.")
  (task_type m))

(cl:ensure-generic-function 'action-val :lambda-list '(m))
(cl:defmethod action-val ((m <TaskActionMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_sys_msgs-msg:action-val is deprecated.  Use custom_sys_msgs-msg:action instead.")
  (action m))

(cl:ensure-generic-function 'action_code-val :lambda-list '(m))
(cl:defmethod action_code-val ((m <TaskActionMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_sys_msgs-msg:action_code-val is deprecated.  Use custom_sys_msgs-msg:action_code instead.")
  (action_code m))

(cl:ensure-generic-function 'immediately-val :lambda-list '(m))
(cl:defmethod immediately-val ((m <TaskActionMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_sys_msgs-msg:immediately-val is deprecated.  Use custom_sys_msgs-msg:immediately instead.")
  (immediately m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TaskActionMsg>) ostream)
  "Serializes a message object of type '<TaskActionMsg>"
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
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'action))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'action))
  (cl:let* ((signed (cl:slot-value msg 'action_code)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'immediately))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'immediately))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TaskActionMsg>) istream)
  "Deserializes a message object of type '<TaskActionMsg>"
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
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'action) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'action) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'action_code) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'immediately) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'immediately) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TaskActionMsg>)))
  "Returns string type for a message object of type '<TaskActionMsg>"
  "custom_sys_msgs/TaskActionMsg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TaskActionMsg)))
  "Returns string type for a message object of type 'TaskActionMsg"
  "custom_sys_msgs/TaskActionMsg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TaskActionMsg>)))
  "Returns md5sum for a message object of type '<TaskActionMsg>"
  "5591e51a0b146f386425b17fcb920bd8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TaskActionMsg)))
  "Returns md5sum for a message object of type 'TaskActionMsg"
  "5591e51a0b146f386425b17fcb920bd8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TaskActionMsg>)))
  "Returns full string definition for message of type '<TaskActionMsg>"
  (cl:format cl:nil "int32 task_id~%int32 task_type~%string action~%int32 action_code~%string immediately~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TaskActionMsg)))
  "Returns full string definition for message of type 'TaskActionMsg"
  (cl:format cl:nil "int32 task_id~%int32 task_type~%string action~%int32 action_code~%string immediately~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TaskActionMsg>))
  (cl:+ 0
     4
     4
     4 (cl:length (cl:slot-value msg 'action))
     4
     4 (cl:length (cl:slot-value msg 'immediately))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TaskActionMsg>))
  "Converts a ROS message object to a list"
  (cl:list 'TaskActionMsg
    (cl:cons ':task_id (task_id msg))
    (cl:cons ':task_type (task_type msg))
    (cl:cons ':action (action msg))
    (cl:cons ':action_code (action_code msg))
    (cl:cons ':immediately (immediately msg))
))
