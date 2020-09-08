; Auto-generated. Do not edit!


(cl:in-package boocax_base-srv)


;//! \htmlinclude mappath-request.msg.html

(cl:defclass <mappath-request> (roslisp-msg-protocol:ros-message)
  ((uuid
    :reader uuid
    :initarg :uuid
    :type cl:string
    :initform ""))
)

(cl:defclass mappath-request (<mappath-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <mappath-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'mappath-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name boocax_base-srv:<mappath-request> is deprecated: use boocax_base-srv:mappath-request instead.")))

(cl:ensure-generic-function 'uuid-val :lambda-list '(m))
(cl:defmethod uuid-val ((m <mappath-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader boocax_base-srv:uuid-val is deprecated.  Use boocax_base-srv:uuid instead.")
  (uuid m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <mappath-request>) ostream)
  "Serializes a message object of type '<mappath-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'uuid))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'uuid))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <mappath-request>) istream)
  "Deserializes a message object of type '<mappath-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'uuid) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'uuid) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<mappath-request>)))
  "Returns string type for a service object of type '<mappath-request>"
  "boocax_base/mappathRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'mappath-request)))
  "Returns string type for a service object of type 'mappath-request"
  "boocax_base/mappathRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<mappath-request>)))
  "Returns md5sum for a message object of type '<mappath-request>"
  "2e5c72b90d775d2232dce461905b4f18")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'mappath-request)))
  "Returns md5sum for a message object of type 'mappath-request"
  "2e5c72b90d775d2232dce461905b4f18")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<mappath-request>)))
  "Returns full string definition for message of type '<mappath-request>"
  (cl:format cl:nil "string uuid~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'mappath-request)))
  "Returns full string definition for message of type 'mappath-request"
  (cl:format cl:nil "string uuid~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <mappath-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'uuid))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <mappath-request>))
  "Converts a ROS message object to a list"
  (cl:list 'mappath-request
    (cl:cons ':uuid (uuid msg))
))
;//! \htmlinclude mappath-response.msg.html

(cl:defclass <mappath-response> (roslisp-msg-protocol:ros-message)
  ((path
    :reader path
    :initarg :path
    :type cl:string
    :initform ""))
)

(cl:defclass mappath-response (<mappath-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <mappath-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'mappath-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name boocax_base-srv:<mappath-response> is deprecated: use boocax_base-srv:mappath-response instead.")))

(cl:ensure-generic-function 'path-val :lambda-list '(m))
(cl:defmethod path-val ((m <mappath-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader boocax_base-srv:path-val is deprecated.  Use boocax_base-srv:path instead.")
  (path m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <mappath-response>) ostream)
  "Serializes a message object of type '<mappath-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'path))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'path))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <mappath-response>) istream)
  "Deserializes a message object of type '<mappath-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'path) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'path) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<mappath-response>)))
  "Returns string type for a service object of type '<mappath-response>"
  "boocax_base/mappathResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'mappath-response)))
  "Returns string type for a service object of type 'mappath-response"
  "boocax_base/mappathResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<mappath-response>)))
  "Returns md5sum for a message object of type '<mappath-response>"
  "2e5c72b90d775d2232dce461905b4f18")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'mappath-response)))
  "Returns md5sum for a message object of type 'mappath-response"
  "2e5c72b90d775d2232dce461905b4f18")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<mappath-response>)))
  "Returns full string definition for message of type '<mappath-response>"
  (cl:format cl:nil "string path~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'mappath-response)))
  "Returns full string definition for message of type 'mappath-response"
  (cl:format cl:nil "string path~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <mappath-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'path))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <mappath-response>))
  "Converts a ROS message object to a list"
  (cl:list 'mappath-response
    (cl:cons ':path (path msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'mappath)))
  'mappath-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'mappath)))
  'mappath-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'mappath)))
  "Returns string type for a service object of type '<mappath>"
  "boocax_base/mappath")