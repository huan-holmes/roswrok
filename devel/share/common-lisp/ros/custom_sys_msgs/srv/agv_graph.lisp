; Auto-generated. Do not edit!


(cl:in-package custom_sys_msgs-srv)


;//! \htmlinclude agv_graph-request.msg.html

(cl:defclass <agv_graph-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass agv_graph-request (<agv_graph-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <agv_graph-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'agv_graph-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name custom_sys_msgs-srv:<agv_graph-request> is deprecated: use custom_sys_msgs-srv:agv_graph-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <agv_graph-request>) ostream)
  "Serializes a message object of type '<agv_graph-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <agv_graph-request>) istream)
  "Deserializes a message object of type '<agv_graph-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<agv_graph-request>)))
  "Returns string type for a service object of type '<agv_graph-request>"
  "custom_sys_msgs/agv_graphRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'agv_graph-request)))
  "Returns string type for a service object of type 'agv_graph-request"
  "custom_sys_msgs/agv_graphRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<agv_graph-request>)))
  "Returns md5sum for a message object of type '<agv_graph-request>"
  "e9c74557c444af09c8ff470ac412ba81")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'agv_graph-request)))
  "Returns md5sum for a message object of type 'agv_graph-request"
  "e9c74557c444af09c8ff470ac412ba81")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<agv_graph-request>)))
  "Returns full string definition for message of type '<agv_graph-request>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'agv_graph-request)))
  "Returns full string definition for message of type 'agv_graph-request"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <agv_graph-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <agv_graph-request>))
  "Converts a ROS message object to a list"
  (cl:list 'agv_graph-request
))
;//! \htmlinclude agv_graph-response.msg.html

(cl:defclass <agv_graph-response> (roslisp-msg-protocol:ros-message)
  ((agv_graph
    :reader agv_graph
    :initarg :agv_graph
    :type custom_sys_msgs-msg:AgvTrajectoryMsg2
    :initform (cl:make-instance 'custom_sys_msgs-msg:AgvTrajectoryMsg2)))
)

(cl:defclass agv_graph-response (<agv_graph-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <agv_graph-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'agv_graph-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name custom_sys_msgs-srv:<agv_graph-response> is deprecated: use custom_sys_msgs-srv:agv_graph-response instead.")))

(cl:ensure-generic-function 'agv_graph-val :lambda-list '(m))
(cl:defmethod agv_graph-val ((m <agv_graph-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_sys_msgs-srv:agv_graph-val is deprecated.  Use custom_sys_msgs-srv:agv_graph instead.")
  (agv_graph m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <agv_graph-response>) ostream)
  "Serializes a message object of type '<agv_graph-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'agv_graph) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <agv_graph-response>) istream)
  "Deserializes a message object of type '<agv_graph-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'agv_graph) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<agv_graph-response>)))
  "Returns string type for a service object of type '<agv_graph-response>"
  "custom_sys_msgs/agv_graphResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'agv_graph-response)))
  "Returns string type for a service object of type 'agv_graph-response"
  "custom_sys_msgs/agv_graphResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<agv_graph-response>)))
  "Returns md5sum for a message object of type '<agv_graph-response>"
  "e9c74557c444af09c8ff470ac412ba81")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'agv_graph-response)))
  "Returns md5sum for a message object of type 'agv_graph-response"
  "e9c74557c444af09c8ff470ac412ba81")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<agv_graph-response>)))
  "Returns full string definition for message of type '<agv_graph-response>"
  (cl:format cl:nil "custom_sys_msgs/AgvTrajectoryMsg2 agv_graph~%~%~%================================================================================~%MSG: custom_sys_msgs/AgvTrajectoryMsg2~%int32 task_id~%int32 task_type~%int32 vehicle_id~%int32 free_nav~%float64 deadline~%geometry_msgs/Pose dst_pose~%custom_sys_msgs/AgvLineMsg2[] agv_trajectory~%int32 test~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: custom_sys_msgs/AgvLineMsg2~%int32 segment_id~%int32 segment_type~%int32 attitude~%int32 tracking_mode~%float64 speed~%float64 precision~%float64 arrival_time~%float64 departure_time~%float64 redundancy_time~%geometry_msgs/Pose p_start~%geometry_msgs/Pose p_middle~%geometry_msgs/Pose p_end~%int32 start_node_id~%int32 end_node_id~%bool crossing~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'agv_graph-response)))
  "Returns full string definition for message of type 'agv_graph-response"
  (cl:format cl:nil "custom_sys_msgs/AgvTrajectoryMsg2 agv_graph~%~%~%================================================================================~%MSG: custom_sys_msgs/AgvTrajectoryMsg2~%int32 task_id~%int32 task_type~%int32 vehicle_id~%int32 free_nav~%float64 deadline~%geometry_msgs/Pose dst_pose~%custom_sys_msgs/AgvLineMsg2[] agv_trajectory~%int32 test~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: custom_sys_msgs/AgvLineMsg2~%int32 segment_id~%int32 segment_type~%int32 attitude~%int32 tracking_mode~%float64 speed~%float64 precision~%float64 arrival_time~%float64 departure_time~%float64 redundancy_time~%geometry_msgs/Pose p_start~%geometry_msgs/Pose p_middle~%geometry_msgs/Pose p_end~%int32 start_node_id~%int32 end_node_id~%bool crossing~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <agv_graph-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'agv_graph))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <agv_graph-response>))
  "Converts a ROS message object to a list"
  (cl:list 'agv_graph-response
    (cl:cons ':agv_graph (agv_graph msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'agv_graph)))
  'agv_graph-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'agv_graph)))
  'agv_graph-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'agv_graph)))
  "Returns string type for a service object of type '<agv_graph>"
  "custom_sys_msgs/agv_graph")