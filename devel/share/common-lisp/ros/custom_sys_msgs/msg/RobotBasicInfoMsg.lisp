; Auto-generated. Do not edit!


(cl:in-package custom_sys_msgs-msg)


;//! \htmlinclude RobotBasicInfoMsg.msg.html

(cl:defclass <RobotBasicInfoMsg> (roslisp-msg-protocol:ros-message)
  ((robot_name
    :reader robot_name
    :initarg :robot_name
    :type cl:string
    :initform "")
   (robot_ip
    :reader robot_ip
    :initarg :robot_ip
    :type cl:string
    :initform "")
   (robot_mac
    :reader robot_mac
    :initarg :robot_mac
    :type cl:string
    :initform "")
   (if_name
    :reader if_name
    :initarg :if_name
    :type cl:string
    :initform "")
   (robot_id
    :reader robot_id
    :initarg :robot_id
    :type cl:integer
    :initform 0))
)

(cl:defclass RobotBasicInfoMsg (<RobotBasicInfoMsg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RobotBasicInfoMsg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RobotBasicInfoMsg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name custom_sys_msgs-msg:<RobotBasicInfoMsg> is deprecated: use custom_sys_msgs-msg:RobotBasicInfoMsg instead.")))

(cl:ensure-generic-function 'robot_name-val :lambda-list '(m))
(cl:defmethod robot_name-val ((m <RobotBasicInfoMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_sys_msgs-msg:robot_name-val is deprecated.  Use custom_sys_msgs-msg:robot_name instead.")
  (robot_name m))

(cl:ensure-generic-function 'robot_ip-val :lambda-list '(m))
(cl:defmethod robot_ip-val ((m <RobotBasicInfoMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_sys_msgs-msg:robot_ip-val is deprecated.  Use custom_sys_msgs-msg:robot_ip instead.")
  (robot_ip m))

(cl:ensure-generic-function 'robot_mac-val :lambda-list '(m))
(cl:defmethod robot_mac-val ((m <RobotBasicInfoMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_sys_msgs-msg:robot_mac-val is deprecated.  Use custom_sys_msgs-msg:robot_mac instead.")
  (robot_mac m))

(cl:ensure-generic-function 'if_name-val :lambda-list '(m))
(cl:defmethod if_name-val ((m <RobotBasicInfoMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_sys_msgs-msg:if_name-val is deprecated.  Use custom_sys_msgs-msg:if_name instead.")
  (if_name m))

(cl:ensure-generic-function 'robot_id-val :lambda-list '(m))
(cl:defmethod robot_id-val ((m <RobotBasicInfoMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_sys_msgs-msg:robot_id-val is deprecated.  Use custom_sys_msgs-msg:robot_id instead.")
  (robot_id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RobotBasicInfoMsg>) ostream)
  "Serializes a message object of type '<RobotBasicInfoMsg>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'robot_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'robot_name))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'robot_ip))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'robot_ip))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'robot_mac))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'robot_mac))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'if_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'if_name))
  (cl:let* ((signed (cl:slot-value msg 'robot_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RobotBasicInfoMsg>) istream)
  "Deserializes a message object of type '<RobotBasicInfoMsg>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'robot_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'robot_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'robot_ip) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'robot_ip) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'robot_mac) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'robot_mac) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'if_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'if_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'robot_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RobotBasicInfoMsg>)))
  "Returns string type for a message object of type '<RobotBasicInfoMsg>"
  "custom_sys_msgs/RobotBasicInfoMsg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RobotBasicInfoMsg)))
  "Returns string type for a message object of type 'RobotBasicInfoMsg"
  "custom_sys_msgs/RobotBasicInfoMsg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RobotBasicInfoMsg>)))
  "Returns md5sum for a message object of type '<RobotBasicInfoMsg>"
  "a20f282b03acc33dd1a5d6098520f933")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RobotBasicInfoMsg)))
  "Returns md5sum for a message object of type 'RobotBasicInfoMsg"
  "a20f282b03acc33dd1a5d6098520f933")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RobotBasicInfoMsg>)))
  "Returns full string definition for message of type '<RobotBasicInfoMsg>"
  (cl:format cl:nil "string robot_name~%string robot_ip~%string robot_mac~%string if_name~%int32 robot_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RobotBasicInfoMsg)))
  "Returns full string definition for message of type 'RobotBasicInfoMsg"
  (cl:format cl:nil "string robot_name~%string robot_ip~%string robot_mac~%string if_name~%int32 robot_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RobotBasicInfoMsg>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'robot_name))
     4 (cl:length (cl:slot-value msg 'robot_ip))
     4 (cl:length (cl:slot-value msg 'robot_mac))
     4 (cl:length (cl:slot-value msg 'if_name))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RobotBasicInfoMsg>))
  "Converts a ROS message object to a list"
  (cl:list 'RobotBasicInfoMsg
    (cl:cons ':robot_name (robot_name msg))
    (cl:cons ':robot_ip (robot_ip msg))
    (cl:cons ':robot_mac (robot_mac msg))
    (cl:cons ':if_name (if_name msg))
    (cl:cons ':robot_id (robot_id msg))
))
