; Auto-generated. Do not edit!


(cl:in-package custom_sys_msgs-msg)


;//! \htmlinclude CrossingNodeMsg.msg.html

(cl:defclass <CrossingNodeMsg> (roslisp-msg-protocol:ros-message)
  ((node_acquired
    :reader node_acquired
    :initarg :node_acquired
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0))
   (node_released
    :reader node_released
    :initarg :node_released
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0))
   (node_fobbidden
    :reader node_fobbidden
    :initarg :node_fobbidden
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0)))
)

(cl:defclass CrossingNodeMsg (<CrossingNodeMsg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CrossingNodeMsg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CrossingNodeMsg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name custom_sys_msgs-msg:<CrossingNodeMsg> is deprecated: use custom_sys_msgs-msg:CrossingNodeMsg instead.")))

(cl:ensure-generic-function 'node_acquired-val :lambda-list '(m))
(cl:defmethod node_acquired-val ((m <CrossingNodeMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_sys_msgs-msg:node_acquired-val is deprecated.  Use custom_sys_msgs-msg:node_acquired instead.")
  (node_acquired m))

(cl:ensure-generic-function 'node_released-val :lambda-list '(m))
(cl:defmethod node_released-val ((m <CrossingNodeMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_sys_msgs-msg:node_released-val is deprecated.  Use custom_sys_msgs-msg:node_released instead.")
  (node_released m))

(cl:ensure-generic-function 'node_fobbidden-val :lambda-list '(m))
(cl:defmethod node_fobbidden-val ((m <CrossingNodeMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_sys_msgs-msg:node_fobbidden-val is deprecated.  Use custom_sys_msgs-msg:node_fobbidden instead.")
  (node_fobbidden m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CrossingNodeMsg>) ostream)
  "Serializes a message object of type '<CrossingNodeMsg>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'node_acquired))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    ))
   (cl:slot-value msg 'node_acquired))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'node_released))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    ))
   (cl:slot-value msg 'node_released))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'node_fobbidden))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    ))
   (cl:slot-value msg 'node_fobbidden))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CrossingNodeMsg>) istream)
  "Deserializes a message object of type '<CrossingNodeMsg>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'node_acquired) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'node_acquired)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296)))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'node_released) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'node_released)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296)))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'node_fobbidden) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'node_fobbidden)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296)))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CrossingNodeMsg>)))
  "Returns string type for a message object of type '<CrossingNodeMsg>"
  "custom_sys_msgs/CrossingNodeMsg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CrossingNodeMsg)))
  "Returns string type for a message object of type 'CrossingNodeMsg"
  "custom_sys_msgs/CrossingNodeMsg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CrossingNodeMsg>)))
  "Returns md5sum for a message object of type '<CrossingNodeMsg>"
  "9dc9fa7b6fdf580a4e6988a6147a64b6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CrossingNodeMsg)))
  "Returns md5sum for a message object of type 'CrossingNodeMsg"
  "9dc9fa7b6fdf580a4e6988a6147a64b6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CrossingNodeMsg>)))
  "Returns full string definition for message of type '<CrossingNodeMsg>"
  (cl:format cl:nil "int32[] node_acquired~%int32[] node_released~%int32[] node_fobbidden~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CrossingNodeMsg)))
  "Returns full string definition for message of type 'CrossingNodeMsg"
  (cl:format cl:nil "int32[] node_acquired~%int32[] node_released~%int32[] node_fobbidden~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CrossingNodeMsg>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'node_acquired) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'node_released) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'node_fobbidden) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CrossingNodeMsg>))
  "Converts a ROS message object to a list"
  (cl:list 'CrossingNodeMsg
    (cl:cons ':node_acquired (node_acquired msg))
    (cl:cons ':node_released (node_released msg))
    (cl:cons ':node_fobbidden (node_fobbidden msg))
))
