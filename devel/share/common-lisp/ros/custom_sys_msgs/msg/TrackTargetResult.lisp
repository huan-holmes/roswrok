; Auto-generated. Do not edit!


(cl:in-package custom_sys_msgs-msg)


;//! \htmlinclude TrackTargetResult.msg.html

(cl:defclass <TrackTargetResult> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass TrackTargetResult (<TrackTargetResult>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TrackTargetResult>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TrackTargetResult)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name custom_sys_msgs-msg:<TrackTargetResult> is deprecated: use custom_sys_msgs-msg:TrackTargetResult instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TrackTargetResult>) ostream)
  "Serializes a message object of type '<TrackTargetResult>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TrackTargetResult>) istream)
  "Deserializes a message object of type '<TrackTargetResult>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TrackTargetResult>)))
  "Returns string type for a message object of type '<TrackTargetResult>"
  "custom_sys_msgs/TrackTargetResult")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TrackTargetResult)))
  "Returns string type for a message object of type 'TrackTargetResult"
  "custom_sys_msgs/TrackTargetResult")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TrackTargetResult>)))
  "Returns md5sum for a message object of type '<TrackTargetResult>"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TrackTargetResult)))
  "Returns md5sum for a message object of type 'TrackTargetResult"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TrackTargetResult>)))
  "Returns full string definition for message of type '<TrackTargetResult>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# no result currently~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TrackTargetResult)))
  "Returns full string definition for message of type 'TrackTargetResult"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# no result currently~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TrackTargetResult>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TrackTargetResult>))
  "Converts a ROS message object to a list"
  (cl:list 'TrackTargetResult
))
