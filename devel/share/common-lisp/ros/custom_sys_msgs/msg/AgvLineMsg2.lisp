; Auto-generated. Do not edit!


(cl:in-package custom_sys_msgs-msg)


;//! \htmlinclude AgvLineMsg2.msg.html

(cl:defclass <AgvLineMsg2> (roslisp-msg-protocol:ros-message)
  ((segment_id
    :reader segment_id
    :initarg :segment_id
    :type cl:integer
    :initform 0)
   (segment_type
    :reader segment_type
    :initarg :segment_type
    :type cl:integer
    :initform 0)
   (attitude
    :reader attitude
    :initarg :attitude
    :type cl:integer
    :initform 0)
   (tracking_mode
    :reader tracking_mode
    :initarg :tracking_mode
    :type cl:integer
    :initform 0)
   (speed
    :reader speed
    :initarg :speed
    :type cl:float
    :initform 0.0)
   (precision
    :reader precision
    :initarg :precision
    :type cl:float
    :initform 0.0)
   (arrival_time
    :reader arrival_time
    :initarg :arrival_time
    :type cl:float
    :initform 0.0)
   (departure_time
    :reader departure_time
    :initarg :departure_time
    :type cl:float
    :initform 0.0)
   (redundancy_time
    :reader redundancy_time
    :initarg :redundancy_time
    :type cl:float
    :initform 0.0)
   (p_start
    :reader p_start
    :initarg :p_start
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose))
   (p_middle
    :reader p_middle
    :initarg :p_middle
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose))
   (p_end
    :reader p_end
    :initarg :p_end
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose))
   (start_node_id
    :reader start_node_id
    :initarg :start_node_id
    :type cl:integer
    :initform 0)
   (end_node_id
    :reader end_node_id
    :initarg :end_node_id
    :type cl:integer
    :initform 0)
   (crossing
    :reader crossing
    :initarg :crossing
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass AgvLineMsg2 (<AgvLineMsg2>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AgvLineMsg2>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AgvLineMsg2)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name custom_sys_msgs-msg:<AgvLineMsg2> is deprecated: use custom_sys_msgs-msg:AgvLineMsg2 instead.")))

(cl:ensure-generic-function 'segment_id-val :lambda-list '(m))
(cl:defmethod segment_id-val ((m <AgvLineMsg2>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_sys_msgs-msg:segment_id-val is deprecated.  Use custom_sys_msgs-msg:segment_id instead.")
  (segment_id m))

(cl:ensure-generic-function 'segment_type-val :lambda-list '(m))
(cl:defmethod segment_type-val ((m <AgvLineMsg2>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_sys_msgs-msg:segment_type-val is deprecated.  Use custom_sys_msgs-msg:segment_type instead.")
  (segment_type m))

(cl:ensure-generic-function 'attitude-val :lambda-list '(m))
(cl:defmethod attitude-val ((m <AgvLineMsg2>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_sys_msgs-msg:attitude-val is deprecated.  Use custom_sys_msgs-msg:attitude instead.")
  (attitude m))

(cl:ensure-generic-function 'tracking_mode-val :lambda-list '(m))
(cl:defmethod tracking_mode-val ((m <AgvLineMsg2>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_sys_msgs-msg:tracking_mode-val is deprecated.  Use custom_sys_msgs-msg:tracking_mode instead.")
  (tracking_mode m))

(cl:ensure-generic-function 'speed-val :lambda-list '(m))
(cl:defmethod speed-val ((m <AgvLineMsg2>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_sys_msgs-msg:speed-val is deprecated.  Use custom_sys_msgs-msg:speed instead.")
  (speed m))

(cl:ensure-generic-function 'precision-val :lambda-list '(m))
(cl:defmethod precision-val ((m <AgvLineMsg2>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_sys_msgs-msg:precision-val is deprecated.  Use custom_sys_msgs-msg:precision instead.")
  (precision m))

(cl:ensure-generic-function 'arrival_time-val :lambda-list '(m))
(cl:defmethod arrival_time-val ((m <AgvLineMsg2>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_sys_msgs-msg:arrival_time-val is deprecated.  Use custom_sys_msgs-msg:arrival_time instead.")
  (arrival_time m))

(cl:ensure-generic-function 'departure_time-val :lambda-list '(m))
(cl:defmethod departure_time-val ((m <AgvLineMsg2>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_sys_msgs-msg:departure_time-val is deprecated.  Use custom_sys_msgs-msg:departure_time instead.")
  (departure_time m))

(cl:ensure-generic-function 'redundancy_time-val :lambda-list '(m))
(cl:defmethod redundancy_time-val ((m <AgvLineMsg2>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_sys_msgs-msg:redundancy_time-val is deprecated.  Use custom_sys_msgs-msg:redundancy_time instead.")
  (redundancy_time m))

(cl:ensure-generic-function 'p_start-val :lambda-list '(m))
(cl:defmethod p_start-val ((m <AgvLineMsg2>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_sys_msgs-msg:p_start-val is deprecated.  Use custom_sys_msgs-msg:p_start instead.")
  (p_start m))

(cl:ensure-generic-function 'p_middle-val :lambda-list '(m))
(cl:defmethod p_middle-val ((m <AgvLineMsg2>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_sys_msgs-msg:p_middle-val is deprecated.  Use custom_sys_msgs-msg:p_middle instead.")
  (p_middle m))

(cl:ensure-generic-function 'p_end-val :lambda-list '(m))
(cl:defmethod p_end-val ((m <AgvLineMsg2>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_sys_msgs-msg:p_end-val is deprecated.  Use custom_sys_msgs-msg:p_end instead.")
  (p_end m))

(cl:ensure-generic-function 'start_node_id-val :lambda-list '(m))
(cl:defmethod start_node_id-val ((m <AgvLineMsg2>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_sys_msgs-msg:start_node_id-val is deprecated.  Use custom_sys_msgs-msg:start_node_id instead.")
  (start_node_id m))

(cl:ensure-generic-function 'end_node_id-val :lambda-list '(m))
(cl:defmethod end_node_id-val ((m <AgvLineMsg2>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_sys_msgs-msg:end_node_id-val is deprecated.  Use custom_sys_msgs-msg:end_node_id instead.")
  (end_node_id m))

(cl:ensure-generic-function 'crossing-val :lambda-list '(m))
(cl:defmethod crossing-val ((m <AgvLineMsg2>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_sys_msgs-msg:crossing-val is deprecated.  Use custom_sys_msgs-msg:crossing instead.")
  (crossing m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AgvLineMsg2>) ostream)
  "Serializes a message object of type '<AgvLineMsg2>"
  (cl:let* ((signed (cl:slot-value msg 'segment_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'segment_type)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'attitude)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'tracking_mode)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'speed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'precision))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'arrival_time))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'departure_time))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'redundancy_time))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'p_start) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'p_middle) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'p_end) ostream)
  (cl:let* ((signed (cl:slot-value msg 'start_node_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'end_node_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'crossing) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AgvLineMsg2>) istream)
  "Deserializes a message object of type '<AgvLineMsg2>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'segment_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'segment_type) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'attitude) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'tracking_mode) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'speed) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'precision) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'arrival_time) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'departure_time) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'redundancy_time) (roslisp-utils:decode-double-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'p_start) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'p_middle) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'p_end) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'start_node_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'end_node_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:setf (cl:slot-value msg 'crossing) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AgvLineMsg2>)))
  "Returns string type for a message object of type '<AgvLineMsg2>"
  "custom_sys_msgs/AgvLineMsg2")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AgvLineMsg2)))
  "Returns string type for a message object of type 'AgvLineMsg2"
  "custom_sys_msgs/AgvLineMsg2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AgvLineMsg2>)))
  "Returns md5sum for a message object of type '<AgvLineMsg2>"
  "2d421422889a341f7cf947ef206bc0e3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AgvLineMsg2)))
  "Returns md5sum for a message object of type 'AgvLineMsg2"
  "2d421422889a341f7cf947ef206bc0e3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AgvLineMsg2>)))
  "Returns full string definition for message of type '<AgvLineMsg2>"
  (cl:format cl:nil "int32 segment_id~%int32 segment_type~%int32 attitude~%int32 tracking_mode~%float64 speed~%float64 precision~%float64 arrival_time~%float64 departure_time~%float64 redundancy_time~%geometry_msgs/Pose p_start~%geometry_msgs/Pose p_middle~%geometry_msgs/Pose p_end~%int32 start_node_id~%int32 end_node_id~%bool crossing~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AgvLineMsg2)))
  "Returns full string definition for message of type 'AgvLineMsg2"
  (cl:format cl:nil "int32 segment_id~%int32 segment_type~%int32 attitude~%int32 tracking_mode~%float64 speed~%float64 precision~%float64 arrival_time~%float64 departure_time~%float64 redundancy_time~%geometry_msgs/Pose p_start~%geometry_msgs/Pose p_middle~%geometry_msgs/Pose p_end~%int32 start_node_id~%int32 end_node_id~%bool crossing~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AgvLineMsg2>))
  (cl:+ 0
     4
     4
     4
     4
     8
     8
     8
     8
     8
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'p_start))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'p_middle))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'p_end))
     4
     4
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AgvLineMsg2>))
  "Converts a ROS message object to a list"
  (cl:list 'AgvLineMsg2
    (cl:cons ':segment_id (segment_id msg))
    (cl:cons ':segment_type (segment_type msg))
    (cl:cons ':attitude (attitude msg))
    (cl:cons ':tracking_mode (tracking_mode msg))
    (cl:cons ':speed (speed msg))
    (cl:cons ':precision (precision msg))
    (cl:cons ':arrival_time (arrival_time msg))
    (cl:cons ':departure_time (departure_time msg))
    (cl:cons ':redundancy_time (redundancy_time msg))
    (cl:cons ':p_start (p_start msg))
    (cl:cons ':p_middle (p_middle msg))
    (cl:cons ':p_end (p_end msg))
    (cl:cons ':start_node_id (start_node_id msg))
    (cl:cons ':end_node_id (end_node_id msg))
    (cl:cons ':crossing (crossing msg))
))
