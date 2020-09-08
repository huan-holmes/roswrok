; Auto-generated. Do not edit!


(cl:in-package teb_local_planner-msg)


;//! \htmlinclude AgvTrajectoryMsg.msg.html

(cl:defclass <AgvTrajectoryMsg> (roslisp-msg-protocol:ros-message)
  ((agv_trajectory
    :reader agv_trajectory
    :initarg :agv_trajectory
    :type (cl:vector teb_local_planner-msg:AgvLineMsg)
   :initform (cl:make-array 0 :element-type 'teb_local_planner-msg:AgvLineMsg :initial-element (cl:make-instance 'teb_local_planner-msg:AgvLineMsg)))
   (move_dir
    :reader move_dir
    :initarg :move_dir
    :type cl:integer
    :initform 0))
)

(cl:defclass AgvTrajectoryMsg (<AgvTrajectoryMsg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AgvTrajectoryMsg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AgvTrajectoryMsg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name teb_local_planner-msg:<AgvTrajectoryMsg> is deprecated: use teb_local_planner-msg:AgvTrajectoryMsg instead.")))

(cl:ensure-generic-function 'agv_trajectory-val :lambda-list '(m))
(cl:defmethod agv_trajectory-val ((m <AgvTrajectoryMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader teb_local_planner-msg:agv_trajectory-val is deprecated.  Use teb_local_planner-msg:agv_trajectory instead.")
  (agv_trajectory m))

(cl:ensure-generic-function 'move_dir-val :lambda-list '(m))
(cl:defmethod move_dir-val ((m <AgvTrajectoryMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader teb_local_planner-msg:move_dir-val is deprecated.  Use teb_local_planner-msg:move_dir instead.")
  (move_dir m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AgvTrajectoryMsg>) ostream)
  "Serializes a message object of type '<AgvTrajectoryMsg>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'agv_trajectory))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'agv_trajectory))
  (cl:let* ((signed (cl:slot-value msg 'move_dir)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AgvTrajectoryMsg>) istream)
  "Deserializes a message object of type '<AgvTrajectoryMsg>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'agv_trajectory) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'agv_trajectory)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'teb_local_planner-msg:AgvLineMsg))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'move_dir) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AgvTrajectoryMsg>)))
  "Returns string type for a message object of type '<AgvTrajectoryMsg>"
  "teb_local_planner/AgvTrajectoryMsg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AgvTrajectoryMsg)))
  "Returns string type for a message object of type 'AgvTrajectoryMsg"
  "teb_local_planner/AgvTrajectoryMsg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AgvTrajectoryMsg>)))
  "Returns md5sum for a message object of type '<AgvTrajectoryMsg>"
  "8ea844040bae943d8f96401ca7a88393")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AgvTrajectoryMsg)))
  "Returns md5sum for a message object of type 'AgvTrajectoryMsg"
  "8ea844040bae943d8f96401ca7a88393")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AgvTrajectoryMsg>)))
  "Returns full string definition for message of type '<AgvTrajectoryMsg>"
  (cl:format cl:nil "teb_local_planner/AgvLineMsg[] agv_trajectory~%int32 move_dir~%~%================================================================================~%MSG: teb_local_planner/AgvLineMsg~%# The pose of the robot~%geometry_msgs/Pose[3] poses~%~%std_msgs/Int32 type~%~%std_msgs/Int32 path_id~%~%float64 vel~%~%int32 crossing~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: std_msgs/Int32~%int32 data~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AgvTrajectoryMsg)))
  "Returns full string definition for message of type 'AgvTrajectoryMsg"
  (cl:format cl:nil "teb_local_planner/AgvLineMsg[] agv_trajectory~%int32 move_dir~%~%================================================================================~%MSG: teb_local_planner/AgvLineMsg~%# The pose of the robot~%geometry_msgs/Pose[3] poses~%~%std_msgs/Int32 type~%~%std_msgs/Int32 path_id~%~%float64 vel~%~%int32 crossing~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: std_msgs/Int32~%int32 data~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AgvTrajectoryMsg>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'agv_trajectory) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AgvTrajectoryMsg>))
  "Converts a ROS message object to a list"
  (cl:list 'AgvTrajectoryMsg
    (cl:cons ':agv_trajectory (agv_trajectory msg))
    (cl:cons ':move_dir (move_dir msg))
))
