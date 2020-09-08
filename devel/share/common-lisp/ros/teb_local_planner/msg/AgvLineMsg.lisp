; Auto-generated. Do not edit!


(cl:in-package teb_local_planner-msg)


;//! \htmlinclude AgvLineMsg.msg.html

(cl:defclass <AgvLineMsg> (roslisp-msg-protocol:ros-message)
  ((poses
    :reader poses
    :initarg :poses
    :type (cl:vector geometry_msgs-msg:Pose)
   :initform (cl:make-array 3 :element-type 'geometry_msgs-msg:Pose :initial-element (cl:make-instance 'geometry_msgs-msg:Pose)))
   (type
    :reader type
    :initarg :type
    :type std_msgs-msg:Int32
    :initform (cl:make-instance 'std_msgs-msg:Int32))
   (path_id
    :reader path_id
    :initarg :path_id
    :type std_msgs-msg:Int32
    :initform (cl:make-instance 'std_msgs-msg:Int32))
   (vel
    :reader vel
    :initarg :vel
    :type cl:float
    :initform 0.0)
   (crossing
    :reader crossing
    :initarg :crossing
    :type cl:integer
    :initform 0))
)

(cl:defclass AgvLineMsg (<AgvLineMsg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AgvLineMsg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AgvLineMsg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name teb_local_planner-msg:<AgvLineMsg> is deprecated: use teb_local_planner-msg:AgvLineMsg instead.")))

(cl:ensure-generic-function 'poses-val :lambda-list '(m))
(cl:defmethod poses-val ((m <AgvLineMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader teb_local_planner-msg:poses-val is deprecated.  Use teb_local_planner-msg:poses instead.")
  (poses m))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <AgvLineMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader teb_local_planner-msg:type-val is deprecated.  Use teb_local_planner-msg:type instead.")
  (type m))

(cl:ensure-generic-function 'path_id-val :lambda-list '(m))
(cl:defmethod path_id-val ((m <AgvLineMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader teb_local_planner-msg:path_id-val is deprecated.  Use teb_local_planner-msg:path_id instead.")
  (path_id m))

(cl:ensure-generic-function 'vel-val :lambda-list '(m))
(cl:defmethod vel-val ((m <AgvLineMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader teb_local_planner-msg:vel-val is deprecated.  Use teb_local_planner-msg:vel instead.")
  (vel m))

(cl:ensure-generic-function 'crossing-val :lambda-list '(m))
(cl:defmethod crossing-val ((m <AgvLineMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader teb_local_planner-msg:crossing-val is deprecated.  Use teb_local_planner-msg:crossing instead.")
  (crossing m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AgvLineMsg>) ostream)
  "Serializes a message object of type '<AgvLineMsg>"
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'poses))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'type) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'path_id) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'vel))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'crossing)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AgvLineMsg>) istream)
  "Deserializes a message object of type '<AgvLineMsg>"
  (cl:setf (cl:slot-value msg 'poses) (cl:make-array 3))
  (cl:let ((vals (cl:slot-value msg 'poses)))
    (cl:dotimes (i 3)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:Pose))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'type) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'path_id) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'vel) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'crossing) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AgvLineMsg>)))
  "Returns string type for a message object of type '<AgvLineMsg>"
  "teb_local_planner/AgvLineMsg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AgvLineMsg)))
  "Returns string type for a message object of type 'AgvLineMsg"
  "teb_local_planner/AgvLineMsg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AgvLineMsg>)))
  "Returns md5sum for a message object of type '<AgvLineMsg>"
  "8a938cc1a16df264a8bdf537bad11201")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AgvLineMsg)))
  "Returns md5sum for a message object of type 'AgvLineMsg"
  "8a938cc1a16df264a8bdf537bad11201")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AgvLineMsg>)))
  "Returns full string definition for message of type '<AgvLineMsg>"
  (cl:format cl:nil "# The pose of the robot~%geometry_msgs/Pose[3] poses~%~%std_msgs/Int32 type~%~%std_msgs/Int32 path_id~%~%float64 vel~%~%int32 crossing~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: std_msgs/Int32~%int32 data~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AgvLineMsg)))
  "Returns full string definition for message of type 'AgvLineMsg"
  (cl:format cl:nil "# The pose of the robot~%geometry_msgs/Pose[3] poses~%~%std_msgs/Int32 type~%~%std_msgs/Int32 path_id~%~%float64 vel~%~%int32 crossing~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: std_msgs/Int32~%int32 data~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AgvLineMsg>))
  (cl:+ 0
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'poses) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'type))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'path_id))
     8
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AgvLineMsg>))
  "Converts a ROS message object to a list"
  (cl:list 'AgvLineMsg
    (cl:cons ':poses (poses msg))
    (cl:cons ':type (type msg))
    (cl:cons ':path_id (path_id msg))
    (cl:cons ':vel (vel msg))
    (cl:cons ':crossing (crossing msg))
))
