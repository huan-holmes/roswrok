; Auto-generated. Do not edit!


(cl:in-package custom_sys_msgs-srv)


;//! \htmlinclude boocax_version-request.msg.html

(cl:defclass <boocax_version-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass boocax_version-request (<boocax_version-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <boocax_version-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'boocax_version-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name custom_sys_msgs-srv:<boocax_version-request> is deprecated: use custom_sys_msgs-srv:boocax_version-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <boocax_version-request>) ostream)
  "Serializes a message object of type '<boocax_version-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <boocax_version-request>) istream)
  "Deserializes a message object of type '<boocax_version-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<boocax_version-request>)))
  "Returns string type for a service object of type '<boocax_version-request>"
  "custom_sys_msgs/boocax_versionRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'boocax_version-request)))
  "Returns string type for a service object of type 'boocax_version-request"
  "custom_sys_msgs/boocax_versionRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<boocax_version-request>)))
  "Returns md5sum for a message object of type '<boocax_version-request>"
  "4e95cccfdf0b9419ff2f6d45e4903934")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'boocax_version-request)))
  "Returns md5sum for a message object of type 'boocax_version-request"
  "4e95cccfdf0b9419ff2f6d45e4903934")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<boocax_version-request>)))
  "Returns full string definition for message of type '<boocax_version-request>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'boocax_version-request)))
  "Returns full string definition for message of type 'boocax_version-request"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <boocax_version-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <boocax_version-request>))
  "Converts a ROS message object to a list"
  (cl:list 'boocax_version-request
))
;//! \htmlinclude boocax_version-response.msg.html

(cl:defclass <boocax_version-response> (roslisp-msg-protocol:ros-message)
  ((version_str
    :reader version_str
    :initarg :version_str
    :type cl:string
    :initform ""))
)

(cl:defclass boocax_version-response (<boocax_version-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <boocax_version-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'boocax_version-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name custom_sys_msgs-srv:<boocax_version-response> is deprecated: use custom_sys_msgs-srv:boocax_version-response instead.")))

(cl:ensure-generic-function 'version_str-val :lambda-list '(m))
(cl:defmethod version_str-val ((m <boocax_version-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_sys_msgs-srv:version_str-val is deprecated.  Use custom_sys_msgs-srv:version_str instead.")
  (version_str m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <boocax_version-response>) ostream)
  "Serializes a message object of type '<boocax_version-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'version_str))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'version_str))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <boocax_version-response>) istream)
  "Deserializes a message object of type '<boocax_version-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'version_str) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'version_str) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<boocax_version-response>)))
  "Returns string type for a service object of type '<boocax_version-response>"
  "custom_sys_msgs/boocax_versionResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'boocax_version-response)))
  "Returns string type for a service object of type 'boocax_version-response"
  "custom_sys_msgs/boocax_versionResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<boocax_version-response>)))
  "Returns md5sum for a message object of type '<boocax_version-response>"
  "4e95cccfdf0b9419ff2f6d45e4903934")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'boocax_version-response)))
  "Returns md5sum for a message object of type 'boocax_version-response"
  "4e95cccfdf0b9419ff2f6d45e4903934")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<boocax_version-response>)))
  "Returns full string definition for message of type '<boocax_version-response>"
  (cl:format cl:nil "string version_str~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'boocax_version-response)))
  "Returns full string definition for message of type 'boocax_version-response"
  (cl:format cl:nil "string version_str~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <boocax_version-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'version_str))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <boocax_version-response>))
  "Converts a ROS message object to a list"
  (cl:list 'boocax_version-response
    (cl:cons ':version_str (version_str msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'boocax_version)))
  'boocax_version-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'boocax_version)))
  'boocax_version-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'boocax_version)))
  "Returns string type for a service object of type '<boocax_version>"
  "custom_sys_msgs/boocax_version")