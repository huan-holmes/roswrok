; Auto-generated. Do not edit!


(cl:in-package custom_sys_msgs-msg)


;//! \htmlinclude AgvNodeListMsg.msg.html

(cl:defclass <AgvNodeListMsg> (roslisp-msg-protocol:ros-message)
  ((node_list
    :reader node_list
    :initarg :node_list
    :type (cl:vector custom_sys_msgs-msg:AgvNodeMsg)
   :initform (cl:make-array 0 :element-type 'custom_sys_msgs-msg:AgvNodeMsg :initial-element (cl:make-instance 'custom_sys_msgs-msg:AgvNodeMsg))))
)

(cl:defclass AgvNodeListMsg (<AgvNodeListMsg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AgvNodeListMsg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AgvNodeListMsg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name custom_sys_msgs-msg:<AgvNodeListMsg> is deprecated: use custom_sys_msgs-msg:AgvNodeListMsg instead.")))

(cl:ensure-generic-function 'node_list-val :lambda-list '(m))
(cl:defmethod node_list-val ((m <AgvNodeListMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_sys_msgs-msg:node_list-val is deprecated.  Use custom_sys_msgs-msg:node_list instead.")
  (node_list m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AgvNodeListMsg>) ostream)
  "Serializes a message object of type '<AgvNodeListMsg>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'node_list))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'node_list))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AgvNodeListMsg>) istream)
  "Deserializes a message object of type '<AgvNodeListMsg>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'node_list) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'node_list)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'custom_sys_msgs-msg:AgvNodeMsg))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AgvNodeListMsg>)))
  "Returns string type for a message object of type '<AgvNodeListMsg>"
  "custom_sys_msgs/AgvNodeListMsg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AgvNodeListMsg)))
  "Returns string type for a message object of type 'AgvNodeListMsg"
  "custom_sys_msgs/AgvNodeListMsg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AgvNodeListMsg>)))
  "Returns md5sum for a message object of type '<AgvNodeListMsg>"
  "2203275847428c3096be7271d54ad404")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AgvNodeListMsg)))
  "Returns md5sum for a message object of type 'AgvNodeListMsg"
  "2203275847428c3096be7271d54ad404")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AgvNodeListMsg>)))
  "Returns full string definition for message of type '<AgvNodeListMsg>"
  (cl:format cl:nil "custom_sys_msgs/AgvNodeMsg[] node_list~%~%================================================================================~%MSG: custom_sys_msgs/AgvNodeMsg~%int32 node_id~%string node_name~%int32 node_type~%int32 ref_cnt~%geometry_msgs/Pose pos~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AgvNodeListMsg)))
  "Returns full string definition for message of type 'AgvNodeListMsg"
  (cl:format cl:nil "custom_sys_msgs/AgvNodeMsg[] node_list~%~%================================================================================~%MSG: custom_sys_msgs/AgvNodeMsg~%int32 node_id~%string node_name~%int32 node_type~%int32 ref_cnt~%geometry_msgs/Pose pos~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AgvNodeListMsg>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'node_list) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AgvNodeListMsg>))
  "Converts a ROS message object to a list"
  (cl:list 'AgvNodeListMsg
    (cl:cons ':node_list (node_list msg))
))
