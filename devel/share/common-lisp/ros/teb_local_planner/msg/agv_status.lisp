; Auto-generated. Do not edit!


(cl:in-package teb_local_planner-msg)


;//! \htmlinclude agv_status.msg.html

(cl:defclass <agv_status> (roslisp-msg-protocol:ros-message)
  ((index
    :reader index
    :initarg :index
    :type cl:integer
    :initform 0)
   (status
    :reader status
    :initarg :status
    :type cl:integer
    :initform 0)
   (action
    :reader action
    :initarg :action
    :type cl:integer
    :initform 0))
)

(cl:defclass agv_status (<agv_status>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <agv_status>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'agv_status)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name teb_local_planner-msg:<agv_status> is deprecated: use teb_local_planner-msg:agv_status instead.")))

(cl:ensure-generic-function 'index-val :lambda-list '(m))
(cl:defmethod index-val ((m <agv_status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader teb_local_planner-msg:index-val is deprecated.  Use teb_local_planner-msg:index instead.")
  (index m))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <agv_status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader teb_local_planner-msg:status-val is deprecated.  Use teb_local_planner-msg:status instead.")
  (status m))

(cl:ensure-generic-function 'action-val :lambda-list '(m))
(cl:defmethod action-val ((m <agv_status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader teb_local_planner-msg:action-val is deprecated.  Use teb_local_planner-msg:action instead.")
  (action m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <agv_status>) ostream)
  "Serializes a message object of type '<agv_status>"
  (cl:let* ((signed (cl:slot-value msg 'index)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'status)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'action)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <agv_status>) istream)
  "Deserializes a message object of type '<agv_status>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'index) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'status) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'action) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<agv_status>)))
  "Returns string type for a message object of type '<agv_status>"
  "teb_local_planner/agv_status")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'agv_status)))
  "Returns string type for a message object of type 'agv_status"
  "teb_local_planner/agv_status")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<agv_status>)))
  "Returns md5sum for a message object of type '<agv_status>"
  "6c49cdd3739b25fb4bba189eb7af82b5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'agv_status)))
  "Returns md5sum for a message object of type 'agv_status"
  "6c49cdd3739b25fb4bba189eb7af82b5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<agv_status>)))
  "Returns full string definition for message of type '<agv_status>"
  (cl:format cl:nil "int32 index~%int32 status~%int32 action~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'agv_status)))
  "Returns full string definition for message of type 'agv_status"
  (cl:format cl:nil "int32 index~%int32 status~%int32 action~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <agv_status>))
  (cl:+ 0
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <agv_status>))
  "Converts a ROS message object to a list"
  (cl:list 'agv_status
    (cl:cons ':index (index msg))
    (cl:cons ':status (status msg))
    (cl:cons ':action (action msg))
))
