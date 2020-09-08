; Auto-generated. Do not edit!


(cl:in-package custom_sys_msgs-srv)


;//! \htmlinclude read_rfid-request.msg.html

(cl:defclass <read_rfid-request> (roslisp-msg-protocol:ros-message)
  ((rfid
    :reader rfid
    :initarg :rfid
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0)))
)

(cl:defclass read_rfid-request (<read_rfid-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <read_rfid-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'read_rfid-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name custom_sys_msgs-srv:<read_rfid-request> is deprecated: use custom_sys_msgs-srv:read_rfid-request instead.")))

(cl:ensure-generic-function 'rfid-val :lambda-list '(m))
(cl:defmethod rfid-val ((m <read_rfid-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_sys_msgs-srv:rfid-val is deprecated.  Use custom_sys_msgs-srv:rfid instead.")
  (rfid m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <read_rfid-request>) ostream)
  "Serializes a message object of type '<read_rfid-request>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'rfid))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    ))
   (cl:slot-value msg 'rfid))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <read_rfid-request>) istream)
  "Deserializes a message object of type '<read_rfid-request>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'rfid) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'rfid)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296)))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<read_rfid-request>)))
  "Returns string type for a service object of type '<read_rfid-request>"
  "custom_sys_msgs/read_rfidRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'read_rfid-request)))
  "Returns string type for a service object of type 'read_rfid-request"
  "custom_sys_msgs/read_rfidRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<read_rfid-request>)))
  "Returns md5sum for a message object of type '<read_rfid-request>"
  "18de2e0b7d7ef6caf5f88adb50d8ab40")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'read_rfid-request)))
  "Returns md5sum for a message object of type 'read_rfid-request"
  "18de2e0b7d7ef6caf5f88adb50d8ab40")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<read_rfid-request>)))
  "Returns full string definition for message of type '<read_rfid-request>"
  (cl:format cl:nil "int32[] rfid~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'read_rfid-request)))
  "Returns full string definition for message of type 'read_rfid-request"
  (cl:format cl:nil "int32[] rfid~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <read_rfid-request>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'rfid) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <read_rfid-request>))
  "Converts a ROS message object to a list"
  (cl:list 'read_rfid-request
    (cl:cons ':rfid (rfid msg))
))
;//! \htmlinclude read_rfid-response.msg.html

(cl:defclass <read_rfid-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass read_rfid-response (<read_rfid-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <read_rfid-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'read_rfid-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name custom_sys_msgs-srv:<read_rfid-response> is deprecated: use custom_sys_msgs-srv:read_rfid-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <read_rfid-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_sys_msgs-srv:result-val is deprecated.  Use custom_sys_msgs-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <read_rfid-response>) ostream)
  "Serializes a message object of type '<read_rfid-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <read_rfid-response>) istream)
  "Deserializes a message object of type '<read_rfid-response>"
    (cl:setf (cl:slot-value msg 'result) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<read_rfid-response>)))
  "Returns string type for a service object of type '<read_rfid-response>"
  "custom_sys_msgs/read_rfidResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'read_rfid-response)))
  "Returns string type for a service object of type 'read_rfid-response"
  "custom_sys_msgs/read_rfidResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<read_rfid-response>)))
  "Returns md5sum for a message object of type '<read_rfid-response>"
  "18de2e0b7d7ef6caf5f88adb50d8ab40")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'read_rfid-response)))
  "Returns md5sum for a message object of type 'read_rfid-response"
  "18de2e0b7d7ef6caf5f88adb50d8ab40")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<read_rfid-response>)))
  "Returns full string definition for message of type '<read_rfid-response>"
  (cl:format cl:nil "bool result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'read_rfid-response)))
  "Returns full string definition for message of type 'read_rfid-response"
  (cl:format cl:nil "bool result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <read_rfid-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <read_rfid-response>))
  "Converts a ROS message object to a list"
  (cl:list 'read_rfid-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'read_rfid)))
  'read_rfid-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'read_rfid)))
  'read_rfid-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'read_rfid)))
  "Returns string type for a service object of type '<read_rfid>"
  "custom_sys_msgs/read_rfid")