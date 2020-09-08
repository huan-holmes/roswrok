; Auto-generated. Do not edit!


(cl:in-package custom_sys_msgs-msg)


;//! \htmlinclude dynamicFootPrint.msg.html

(cl:defclass <dynamicFootPrint> (roslisp-msg-protocol:ros-message)
  ((robot_radius
    :reader robot_radius
    :initarg :robot_radius
    :type cl:float
    :initform 0.0)
   (pole_distance
    :reader pole_distance
    :initarg :pole_distance
    :type cl:float
    :initform 0.0)
   (footprint
    :reader footprint
    :initarg :footprint
    :type cl:string
    :initform "")
   (pole_footprint
    :reader pole_footprint
    :initarg :pole_footprint
    :type cl:string
    :initform "")
   (pre_robot_radius
    :reader pre_robot_radius
    :initarg :pre_robot_radius
    :type cl:float
    :initform 0.0)
   (body_footprint
    :reader body_footprint
    :initarg :body_footprint
    :type cl:string
    :initform ""))
)

(cl:defclass dynamicFootPrint (<dynamicFootPrint>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <dynamicFootPrint>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'dynamicFootPrint)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name custom_sys_msgs-msg:<dynamicFootPrint> is deprecated: use custom_sys_msgs-msg:dynamicFootPrint instead.")))

(cl:ensure-generic-function 'robot_radius-val :lambda-list '(m))
(cl:defmethod robot_radius-val ((m <dynamicFootPrint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_sys_msgs-msg:robot_radius-val is deprecated.  Use custom_sys_msgs-msg:robot_radius instead.")
  (robot_radius m))

(cl:ensure-generic-function 'pole_distance-val :lambda-list '(m))
(cl:defmethod pole_distance-val ((m <dynamicFootPrint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_sys_msgs-msg:pole_distance-val is deprecated.  Use custom_sys_msgs-msg:pole_distance instead.")
  (pole_distance m))

(cl:ensure-generic-function 'footprint-val :lambda-list '(m))
(cl:defmethod footprint-val ((m <dynamicFootPrint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_sys_msgs-msg:footprint-val is deprecated.  Use custom_sys_msgs-msg:footprint instead.")
  (footprint m))

(cl:ensure-generic-function 'pole_footprint-val :lambda-list '(m))
(cl:defmethod pole_footprint-val ((m <dynamicFootPrint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_sys_msgs-msg:pole_footprint-val is deprecated.  Use custom_sys_msgs-msg:pole_footprint instead.")
  (pole_footprint m))

(cl:ensure-generic-function 'pre_robot_radius-val :lambda-list '(m))
(cl:defmethod pre_robot_radius-val ((m <dynamicFootPrint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_sys_msgs-msg:pre_robot_radius-val is deprecated.  Use custom_sys_msgs-msg:pre_robot_radius instead.")
  (pre_robot_radius m))

(cl:ensure-generic-function 'body_footprint-val :lambda-list '(m))
(cl:defmethod body_footprint-val ((m <dynamicFootPrint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_sys_msgs-msg:body_footprint-val is deprecated.  Use custom_sys_msgs-msg:body_footprint instead.")
  (body_footprint m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <dynamicFootPrint>) ostream)
  "Serializes a message object of type '<dynamicFootPrint>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'robot_radius))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'pole_distance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'footprint))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'footprint))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'pole_footprint))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'pole_footprint))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'pre_robot_radius))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'body_footprint))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'body_footprint))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <dynamicFootPrint>) istream)
  "Deserializes a message object of type '<dynamicFootPrint>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'robot_radius) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'pole_distance) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'footprint) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'footprint) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'pole_footprint) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'pole_footprint) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'pre_robot_radius) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'body_footprint) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'body_footprint) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<dynamicFootPrint>)))
  "Returns string type for a message object of type '<dynamicFootPrint>"
  "custom_sys_msgs/dynamicFootPrint")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'dynamicFootPrint)))
  "Returns string type for a message object of type 'dynamicFootPrint"
  "custom_sys_msgs/dynamicFootPrint")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<dynamicFootPrint>)))
  "Returns md5sum for a message object of type '<dynamicFootPrint>"
  "b198cd1c56ad3f0f3cc7882ae559bf05")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'dynamicFootPrint)))
  "Returns md5sum for a message object of type 'dynamicFootPrint"
  "b198cd1c56ad3f0f3cc7882ae559bf05")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<dynamicFootPrint>)))
  "Returns full string definition for message of type '<dynamicFootPrint>"
  (cl:format cl:nil "float64 robot_radius~%float64 pole_distance~%string footprint~%string pole_footprint~%float64 pre_robot_radius~%string body_footprint~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'dynamicFootPrint)))
  "Returns full string definition for message of type 'dynamicFootPrint"
  (cl:format cl:nil "float64 robot_radius~%float64 pole_distance~%string footprint~%string pole_footprint~%float64 pre_robot_radius~%string body_footprint~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <dynamicFootPrint>))
  (cl:+ 0
     8
     8
     4 (cl:length (cl:slot-value msg 'footprint))
     4 (cl:length (cl:slot-value msg 'pole_footprint))
     8
     4 (cl:length (cl:slot-value msg 'body_footprint))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <dynamicFootPrint>))
  "Converts a ROS message object to a list"
  (cl:list 'dynamicFootPrint
    (cl:cons ':robot_radius (robot_radius msg))
    (cl:cons ':pole_distance (pole_distance msg))
    (cl:cons ':footprint (footprint msg))
    (cl:cons ':pole_footprint (pole_footprint msg))
    (cl:cons ':pre_robot_radius (pre_robot_radius msg))
    (cl:cons ':body_footprint (body_footprint msg))
))
