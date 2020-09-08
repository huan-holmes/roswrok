; Auto-generated. Do not edit!


(cl:in-package custom_sys_msgs-msg)


;//! \htmlinclude AgvNodeMsg.msg.html

(cl:defclass <AgvNodeMsg> (roslisp-msg-protocol:ros-message)
  ((node_id
    :reader node_id
    :initarg :node_id
    :type cl:integer
    :initform 0)
   (node_name
    :reader node_name
    :initarg :node_name
    :type cl:string
    :initform "")
   (node_type
    :reader node_type
    :initarg :node_type
    :type cl:integer
    :initform 0)
   (ref_cnt
    :reader ref_cnt
    :initarg :ref_cnt
    :type cl:integer
    :initform 0)
   (pos
    :reader pos
    :initarg :pos
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose)))
)

(cl:defclass AgvNodeMsg (<AgvNodeMsg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AgvNodeMsg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AgvNodeMsg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name custom_sys_msgs-msg:<AgvNodeMsg> is deprecated: use custom_sys_msgs-msg:AgvNodeMsg instead.")))

(cl:ensure-generic-function 'node_id-val :lambda-list '(m))
(cl:defmethod node_id-val ((m <AgvNodeMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_sys_msgs-msg:node_id-val is deprecated.  Use custom_sys_msgs-msg:node_id instead.")
  (node_id m))

(cl:ensure-generic-function 'node_name-val :lambda-list '(m))
(cl:defmethod node_name-val ((m <AgvNodeMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_sys_msgs-msg:node_name-val is deprecated.  Use custom_sys_msgs-msg:node_name instead.")
  (node_name m))

(cl:ensure-generic-function 'node_type-val :lambda-list '(m))
(cl:defmethod node_type-val ((m <AgvNodeMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_sys_msgs-msg:node_type-val is deprecated.  Use custom_sys_msgs-msg:node_type instead.")
  (node_type m))

(cl:ensure-generic-function 'ref_cnt-val :lambda-list '(m))
(cl:defmethod ref_cnt-val ((m <AgvNodeMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_sys_msgs-msg:ref_cnt-val is deprecated.  Use custom_sys_msgs-msg:ref_cnt instead.")
  (ref_cnt m))

(cl:ensure-generic-function 'pos-val :lambda-list '(m))
(cl:defmethod pos-val ((m <AgvNodeMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_sys_msgs-msg:pos-val is deprecated.  Use custom_sys_msgs-msg:pos instead.")
  (pos m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AgvNodeMsg>) ostream)
  "Serializes a message object of type '<AgvNodeMsg>"
  (cl:let* ((signed (cl:slot-value msg 'node_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'node_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'node_name))
  (cl:let* ((signed (cl:slot-value msg 'node_type)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'ref_cnt)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pos) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AgvNodeMsg>) istream)
  "Deserializes a message object of type '<AgvNodeMsg>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'node_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'node_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'node_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'node_type) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ref_cnt) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pos) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AgvNodeMsg>)))
  "Returns string type for a message object of type '<AgvNodeMsg>"
  "custom_sys_msgs/AgvNodeMsg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AgvNodeMsg)))
  "Returns string type for a message object of type 'AgvNodeMsg"
  "custom_sys_msgs/AgvNodeMsg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AgvNodeMsg>)))
  "Returns md5sum for a message object of type '<AgvNodeMsg>"
  "425f24322817c1acfbde4fee56a7fac2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AgvNodeMsg)))
  "Returns md5sum for a message object of type 'AgvNodeMsg"
  "425f24322817c1acfbde4fee56a7fac2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AgvNodeMsg>)))
  "Returns full string definition for message of type '<AgvNodeMsg>"
  (cl:format cl:nil "int32 node_id~%string node_name~%int32 node_type~%int32 ref_cnt~%geometry_msgs/Pose pos~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AgvNodeMsg)))
  "Returns full string definition for message of type 'AgvNodeMsg"
  (cl:format cl:nil "int32 node_id~%string node_name~%int32 node_type~%int32 ref_cnt~%geometry_msgs/Pose pos~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AgvNodeMsg>))
  (cl:+ 0
     4
     4 (cl:length (cl:slot-value msg 'node_name))
     4
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pos))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AgvNodeMsg>))
  "Converts a ROS message object to a list"
  (cl:list 'AgvNodeMsg
    (cl:cons ':node_id (node_id msg))
    (cl:cons ':node_name (node_name msg))
    (cl:cons ':node_type (node_type msg))
    (cl:cons ':ref_cnt (ref_cnt msg))
    (cl:cons ':pos (pos msg))
))
