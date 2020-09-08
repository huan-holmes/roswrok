; Auto-generated. Do not edit!


(cl:in-package sicknav350-msg)


;//! \htmlinclude Reflector.msg.html

(cl:defclass <Reflector> (roslisp-msg-protocol:ros-message)
  ((filter
    :reader filter
    :initarg :filter
    :type cl:integer
    :initform 0)
   (num_reflector
    :reader num_reflector
    :initarg :num_reflector
    :type cl:integer
    :initform 0)
   (cart
    :reader cart
    :initarg :cart
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0))
   (x
    :reader x
    :initarg :x
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (y
    :reader y
    :initarg :y
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (polar
    :reader polar
    :initarg :polar
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0)))
)

(cl:defclass Reflector (<Reflector>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Reflector>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Reflector)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sicknav350-msg:<Reflector> is deprecated: use sicknav350-msg:Reflector instead.")))

(cl:ensure-generic-function 'filter-val :lambda-list '(m))
(cl:defmethod filter-val ((m <Reflector>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sicknav350-msg:filter-val is deprecated.  Use sicknav350-msg:filter instead.")
  (filter m))

(cl:ensure-generic-function 'num_reflector-val :lambda-list '(m))
(cl:defmethod num_reflector-val ((m <Reflector>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sicknav350-msg:num_reflector-val is deprecated.  Use sicknav350-msg:num_reflector instead.")
  (num_reflector m))

(cl:ensure-generic-function 'cart-val :lambda-list '(m))
(cl:defmethod cart-val ((m <Reflector>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sicknav350-msg:cart-val is deprecated.  Use sicknav350-msg:cart instead.")
  (cart m))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <Reflector>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sicknav350-msg:x-val is deprecated.  Use sicknav350-msg:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <Reflector>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sicknav350-msg:y-val is deprecated.  Use sicknav350-msg:y instead.")
  (y m))

(cl:ensure-generic-function 'polar-val :lambda-list '(m))
(cl:defmethod polar-val ((m <Reflector>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sicknav350-msg:polar-val is deprecated.  Use sicknav350-msg:polar instead.")
  (polar m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Reflector>) ostream)
  "Serializes a message object of type '<Reflector>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'filter)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'filter)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'filter)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'filter)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'num_reflector)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'num_reflector)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'num_reflector)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'num_reflector)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'cart))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) ele) ostream))
   (cl:slot-value msg 'cart))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'x))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'y))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'polar))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) ele) ostream))
   (cl:slot-value msg 'polar))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Reflector>) istream)
  "Deserializes a message object of type '<Reflector>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'filter)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'filter)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'filter)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'filter)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'num_reflector)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'num_reflector)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'num_reflector)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'num_reflector)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'cart) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'cart)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:aref vals i)) (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'x) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'x)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'y) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'y)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'polar) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'polar)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:aref vals i)) (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Reflector>)))
  "Returns string type for a message object of type '<Reflector>"
  "sicknav350/Reflector")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Reflector)))
  "Returns string type for a message object of type 'Reflector"
  "sicknav350/Reflector")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Reflector>)))
  "Returns md5sum for a message object of type '<Reflector>"
  "011340bf811926a91f45981bd574d1c3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Reflector)))
  "Returns md5sum for a message object of type 'Reflector"
  "011340bf811926a91f45981bd574d1c3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Reflector>)))
  "Returns full string definition for message of type '<Reflector>"
  (cl:format cl:nil "uint32 filter	~%uint32 num_reflector~%uint32[] cart~%float32[] x~%float32[] y~%uint64[] polar~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Reflector)))
  "Returns full string definition for message of type 'Reflector"
  (cl:format cl:nil "uint32 filter	~%uint32 num_reflector~%uint32[] cart~%float32[] x~%float32[] y~%uint64[] polar~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Reflector>))
  (cl:+ 0
     4
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'cart) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'x) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'y) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'polar) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Reflector>))
  "Converts a ROS message object to a list"
  (cl:list 'Reflector
    (cl:cons ':filter (filter msg))
    (cl:cons ':num_reflector (num_reflector msg))
    (cl:cons ':cart (cart msg))
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
    (cl:cons ':polar (polar msg))
))
