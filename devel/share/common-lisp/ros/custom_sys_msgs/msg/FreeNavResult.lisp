; Auto-generated. Do not edit!


(cl:in-package custom_sys_msgs-msg)


;//! \htmlinclude FreeNavResult.msg.html

(cl:defclass <FreeNavResult> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass FreeNavResult (<FreeNavResult>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FreeNavResult>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FreeNavResult)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name custom_sys_msgs-msg:<FreeNavResult> is deprecated: use custom_sys_msgs-msg:FreeNavResult instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FreeNavResult>) ostream)
  "Serializes a message object of type '<FreeNavResult>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FreeNavResult>) istream)
  "Deserializes a message object of type '<FreeNavResult>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FreeNavResult>)))
  "Returns string type for a message object of type '<FreeNavResult>"
  "custom_sys_msgs/FreeNavResult")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FreeNavResult)))
  "Returns string type for a message object of type 'FreeNavResult"
  "custom_sys_msgs/FreeNavResult")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FreeNavResult>)))
  "Returns md5sum for a message object of type '<FreeNavResult>"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FreeNavResult)))
  "Returns md5sum for a message object of type 'FreeNavResult"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FreeNavResult>)))
  "Returns full string definition for message of type '<FreeNavResult>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# no result currently~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FreeNavResult)))
  "Returns full string definition for message of type 'FreeNavResult"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# no result currently~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FreeNavResult>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FreeNavResult>))
  "Converts a ROS message object to a list"
  (cl:list 'FreeNavResult
))
