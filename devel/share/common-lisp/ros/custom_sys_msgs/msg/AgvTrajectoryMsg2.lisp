; Auto-generated. Do not edit!


(cl:in-package custom_sys_msgs-msg)


;//! \htmlinclude AgvTrajectoryMsg2.msg.html

(cl:defclass <AgvTrajectoryMsg2> (roslisp-msg-protocol:ros-message)
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
   (vehicle_id
    :reader vehicle_id
    :initarg :vehicle_id
    :type cl:integer
    :initform 0)
   (free_nav
    :reader free_nav
    :initarg :free_nav
    :type cl:integer
    :initform 0)
   (deadline
    :reader deadline
    :initarg :deadline
    :type cl:float
    :initform 0.0)
   (dst_pose
    :reader dst_pose
    :initarg :dst_pose
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose))
   (agv_trajectory
    :reader agv_trajectory
    :initarg :agv_trajectory
    :type (cl:vector custom_sys_msgs-msg:AgvLineMsg2)
   :initform (cl:make-array 0 :element-type 'custom_sys_msgs-msg:AgvLineMsg2 :initial-element (cl:make-instance 'custom_sys_msgs-msg:AgvLineMsg2)))
   (test
    :reader test
    :initarg :test
    :type cl:integer
    :initform 0))
)

(cl:defclass AgvTrajectoryMsg2 (<AgvTrajectoryMsg2>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AgvTrajectoryMsg2>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AgvTrajectoryMsg2)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name custom_sys_msgs-msg:<AgvTrajectoryMsg2> is deprecated: use custom_sys_msgs-msg:AgvTrajectoryMsg2 instead.")))

(cl:ensure-generic-function 'task_id-val :lambda-list '(m))
(cl:defmethod task_id-val ((m <AgvTrajectoryMsg2>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_sys_msgs-msg:task_id-val is deprecated.  Use custom_sys_msgs-msg:task_id instead.")
  (task_id m))

(cl:ensure-generic-function 'task_type-val :lambda-list '(m))
(cl:defmethod task_type-val ((m <AgvTrajectoryMsg2>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_sys_msgs-msg:task_type-val is deprecated.  Use custom_sys_msgs-msg:task_type instead.")
  (task_type m))

(cl:ensure-generic-function 'vehicle_id-val :lambda-list '(m))
(cl:defmethod vehicle_id-val ((m <AgvTrajectoryMsg2>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_sys_msgs-msg:vehicle_id-val is deprecated.  Use custom_sys_msgs-msg:vehicle_id instead.")
  (vehicle_id m))

(cl:ensure-generic-function 'free_nav-val :lambda-list '(m))
(cl:defmethod free_nav-val ((m <AgvTrajectoryMsg2>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_sys_msgs-msg:free_nav-val is deprecated.  Use custom_sys_msgs-msg:free_nav instead.")
  (free_nav m))

(cl:ensure-generic-function 'deadline-val :lambda-list '(m))
(cl:defmethod deadline-val ((m <AgvTrajectoryMsg2>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_sys_msgs-msg:deadline-val is deprecated.  Use custom_sys_msgs-msg:deadline instead.")
  (deadline m))

(cl:ensure-generic-function 'dst_pose-val :lambda-list '(m))
(cl:defmethod dst_pose-val ((m <AgvTrajectoryMsg2>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_sys_msgs-msg:dst_pose-val is deprecated.  Use custom_sys_msgs-msg:dst_pose instead.")
  (dst_pose m))

(cl:ensure-generic-function 'agv_trajectory-val :lambda-list '(m))
(cl:defmethod agv_trajectory-val ((m <AgvTrajectoryMsg2>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_sys_msgs-msg:agv_trajectory-val is deprecated.  Use custom_sys_msgs-msg:agv_trajectory instead.")
  (agv_trajectory m))

(cl:ensure-generic-function 'test-val :lambda-list '(m))
(cl:defmethod test-val ((m <AgvTrajectoryMsg2>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_sys_msgs-msg:test-val is deprecated.  Use custom_sys_msgs-msg:test instead.")
  (test m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AgvTrajectoryMsg2>) ostream)
  "Serializes a message object of type '<AgvTrajectoryMsg2>"
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
  (cl:let* ((signed (cl:slot-value msg 'vehicle_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'free_nav)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'deadline))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'dst_pose) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'agv_trajectory))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'agv_trajectory))
  (cl:let* ((signed (cl:slot-value msg 'test)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AgvTrajectoryMsg2>) istream)
  "Deserializes a message object of type '<AgvTrajectoryMsg2>"
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
      (cl:setf (cl:slot-value msg 'vehicle_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'free_nav) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'deadline) (roslisp-utils:decode-double-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'dst_pose) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'agv_trajectory) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'agv_trajectory)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'custom_sys_msgs-msg:AgvLineMsg2))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'test) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AgvTrajectoryMsg2>)))
  "Returns string type for a message object of type '<AgvTrajectoryMsg2>"
  "custom_sys_msgs/AgvTrajectoryMsg2")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AgvTrajectoryMsg2)))
  "Returns string type for a message object of type 'AgvTrajectoryMsg2"
  "custom_sys_msgs/AgvTrajectoryMsg2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AgvTrajectoryMsg2>)))
  "Returns md5sum for a message object of type '<AgvTrajectoryMsg2>"
  "6b07c1f81ca25d93ada13ba8f99101b8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AgvTrajectoryMsg2)))
  "Returns md5sum for a message object of type 'AgvTrajectoryMsg2"
  "6b07c1f81ca25d93ada13ba8f99101b8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AgvTrajectoryMsg2>)))
  "Returns full string definition for message of type '<AgvTrajectoryMsg2>"
  (cl:format cl:nil "int32 task_id~%int32 task_type~%int32 vehicle_id~%int32 free_nav~%float64 deadline~%geometry_msgs/Pose dst_pose~%custom_sys_msgs/AgvLineMsg2[] agv_trajectory~%int32 test~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: custom_sys_msgs/AgvLineMsg2~%int32 segment_id~%int32 segment_type~%int32 attitude~%int32 tracking_mode~%float64 speed~%float64 precision~%float64 arrival_time~%float64 departure_time~%float64 redundancy_time~%geometry_msgs/Pose p_start~%geometry_msgs/Pose p_middle~%geometry_msgs/Pose p_end~%int32 start_node_id~%int32 end_node_id~%bool crossing~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AgvTrajectoryMsg2)))
  "Returns full string definition for message of type 'AgvTrajectoryMsg2"
  (cl:format cl:nil "int32 task_id~%int32 task_type~%int32 vehicle_id~%int32 free_nav~%float64 deadline~%geometry_msgs/Pose dst_pose~%custom_sys_msgs/AgvLineMsg2[] agv_trajectory~%int32 test~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: custom_sys_msgs/AgvLineMsg2~%int32 segment_id~%int32 segment_type~%int32 attitude~%int32 tracking_mode~%float64 speed~%float64 precision~%float64 arrival_time~%float64 departure_time~%float64 redundancy_time~%geometry_msgs/Pose p_start~%geometry_msgs/Pose p_middle~%geometry_msgs/Pose p_end~%int32 start_node_id~%int32 end_node_id~%bool crossing~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AgvTrajectoryMsg2>))
  (cl:+ 0
     4
     4
     4
     4
     8
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'dst_pose))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'agv_trajectory) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AgvTrajectoryMsg2>))
  "Converts a ROS message object to a list"
  (cl:list 'AgvTrajectoryMsg2
    (cl:cons ':task_id (task_id msg))
    (cl:cons ':task_type (task_type msg))
    (cl:cons ':vehicle_id (vehicle_id msg))
    (cl:cons ':free_nav (free_nav msg))
    (cl:cons ':deadline (deadline msg))
    (cl:cons ':dst_pose (dst_pose msg))
    (cl:cons ':agv_trajectory (agv_trajectory msg))
    (cl:cons ':test (test msg))
))
