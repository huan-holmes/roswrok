; Auto-generated. Do not edit!


(cl:in-package custom_sys_msgs-msg)


;//! \htmlinclude RawDataMsg.msg.html

(cl:defclass <RawDataMsg> (roslisp-msg-protocol:ros-message)
  ((route
    :reader route
    :initarg :route
    :type cl:string
    :initform "")
   (content
    :reader content
    :initarg :content
    :type cl:string
    :initform ""))
)

(cl:defclass RawDataMsg (<RawDataMsg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RawDataMsg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RawDataMsg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name custom_sys_msgs-msg:<RawDataMsg> is deprecated: use custom_sys_msgs-msg:RawDataMsg instead.")))

(cl:ensure-generic-function 'route-val :lambda-list '(m))
(cl:defmethod route-val ((m <RawDataMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_sys_msgs-msg:route-val is deprecated.  Use custom_sys_msgs-msg:route instead.")
  (route m))

(cl:ensure-generic-function 'content-val :lambda-list '(m))
(cl:defmethod content-val ((m <RawDataMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_sys_msgs-msg:content-val is deprecated.  Use custom_sys_msgs-msg:content instead.")
  (content m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RawDataMsg>) ostream)
  "Serializes a message object of type '<RawDataMsg>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'route))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'route))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'content))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'content))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RawDataMsg>) istream)
  "Deserializes a message object of type '<RawDataMsg>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'route) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'route) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'content) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'content) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RawDataMsg>)))
  "Returns string type for a message object of type '<RawDataMsg>"
  "custom_sys_msgs/RawDataMsg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RawDataMsg)))
  "Returns string type for a message object of type 'RawDataMsg"
  "custom_sys_msgs/RawDataMsg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RawDataMsg>)))
  "Returns md5sum for a message object of type '<RawDataMsg>"
  "6e2137428c7912f4349736c8aa4817ac")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RawDataMsg)))
  "Returns md5sum for a message object of type 'RawDataMsg"
  "6e2137428c7912f4349736c8aa4817ac")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RawDataMsg>)))
  "Returns full string definition for message of type '<RawDataMsg>"
  (cl:format cl:nil "string route~%string content~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RawDataMsg)))
  "Returns full string definition for message of type 'RawDataMsg"
  (cl:format cl:nil "string route~%string content~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RawDataMsg>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'route))
     4 (cl:length (cl:slot-value msg 'content))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RawDataMsg>))
  "Converts a ROS message object to a list"
  (cl:list 'RawDataMsg
    (cl:cons ':route (route msg))
    (cl:cons ':content (content msg))
))
