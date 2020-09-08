; Auto-generated. Do not edit!


(cl:in-package custom_sys_msgs-msg)


;//! \htmlinclude AutoChargeStatus.msg.html

(cl:defclass <AutoChargeStatus> (roslisp-msg-protocol:ros-message)
  ((task_id
    :reader task_id
    :initarg :task_id
    :type cl:integer
    :initform 0)
   (status_code
    :reader status_code
    :initarg :status_code
    :type cl:integer
    :initform 0)
   (sub_code
    :reader sub_code
    :initarg :sub_code
    :type cl:integer
    :initform 0))
)

(cl:defclass AutoChargeStatus (<AutoChargeStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AutoChargeStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AutoChargeStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name custom_sys_msgs-msg:<AutoChargeStatus> is deprecated: use custom_sys_msgs-msg:AutoChargeStatus instead.")))

(cl:ensure-generic-function 'task_id-val :lambda-list '(m))
(cl:defmethod task_id-val ((m <AutoChargeStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_sys_msgs-msg:task_id-val is deprecated.  Use custom_sys_msgs-msg:task_id instead.")
  (task_id m))

(cl:ensure-generic-function 'status_code-val :lambda-list '(m))
(cl:defmethod status_code-val ((m <AutoChargeStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_sys_msgs-msg:status_code-val is deprecated.  Use custom_sys_msgs-msg:status_code instead.")
  (status_code m))

(cl:ensure-generic-function 'sub_code-val :lambda-list '(m))
(cl:defmethod sub_code-val ((m <AutoChargeStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_sys_msgs-msg:sub_code-val is deprecated.  Use custom_sys_msgs-msg:sub_code instead.")
  (sub_code m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AutoChargeStatus>) ostream)
  "Serializes a message object of type '<AutoChargeStatus>"
  (cl:let* ((signed (cl:slot-value msg 'task_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
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
  (cl:let* ((signed (cl:slot-value msg 'sub_code)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AutoChargeStatus>) istream)
  "Deserializes a message object of type '<AutoChargeStatus>"
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
      (cl:setf (cl:slot-value msg 'status_code) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'sub_code) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AutoChargeStatus>)))
  "Returns string type for a message object of type '<AutoChargeStatus>"
  "custom_sys_msgs/AutoChargeStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AutoChargeStatus)))
  "Returns string type for a message object of type 'AutoChargeStatus"
  "custom_sys_msgs/AutoChargeStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AutoChargeStatus>)))
  "Returns md5sum for a message object of type '<AutoChargeStatus>"
  "222e503d05f857472237b6a227645e69")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AutoChargeStatus)))
  "Returns md5sum for a message object of type 'AutoChargeStatus"
  "222e503d05f857472237b6a227645e69")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AutoChargeStatus>)))
  "Returns full string definition for message of type '<AutoChargeStatus>"
  (cl:format cl:nil "int32 task_id~%int32 status_code~%int32 sub_code~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AutoChargeStatus)))
  "Returns full string definition for message of type 'AutoChargeStatus"
  (cl:format cl:nil "int32 task_id~%int32 status_code~%int32 sub_code~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AutoChargeStatus>))
  (cl:+ 0
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AutoChargeStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'AutoChargeStatus
    (cl:cons ':task_id (task_id msg))
    (cl:cons ':status_code (status_code msg))
    (cl:cons ':sub_code (sub_code msg))
))
