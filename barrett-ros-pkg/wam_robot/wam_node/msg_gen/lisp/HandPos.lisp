; Auto-generated. Do not edit!


(cl:in-package wam_node-msg)


;//! \htmlinclude HandPos.msg.html

(cl:defclass <HandPos> (roslisp-msg-protocol:ros-message)
  ((f1
    :reader f1
    :initarg :f1
    :type cl:integer
    :initform 0)
   (f2
    :reader f2
    :initarg :f2
    :type cl:integer
    :initform 0)
   (f3
    :reader f3
    :initarg :f3
    :type cl:integer
    :initform 0)
   (spread
    :reader spread
    :initarg :spread
    :type cl:integer
    :initform 0))
)

(cl:defclass HandPos (<HandPos>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <HandPos>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'HandPos)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name wam_node-msg:<HandPos> is deprecated: use wam_node-msg:HandPos instead.")))

(cl:ensure-generic-function 'f1-val :lambda-list '(m))
(cl:defmethod f1-val ((m <HandPos>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader wam_node-msg:f1-val is deprecated.  Use wam_node-msg:f1 instead.")
  (f1 m))

(cl:ensure-generic-function 'f2-val :lambda-list '(m))
(cl:defmethod f2-val ((m <HandPos>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader wam_node-msg:f2-val is deprecated.  Use wam_node-msg:f2 instead.")
  (f2 m))

(cl:ensure-generic-function 'f3-val :lambda-list '(m))
(cl:defmethod f3-val ((m <HandPos>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader wam_node-msg:f3-val is deprecated.  Use wam_node-msg:f3 instead.")
  (f3 m))

(cl:ensure-generic-function 'spread-val :lambda-list '(m))
(cl:defmethod spread-val ((m <HandPos>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader wam_node-msg:spread-val is deprecated.  Use wam_node-msg:spread instead.")
  (spread m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <HandPos>) ostream)
  "Serializes a message object of type '<HandPos>"
  (cl:let* ((signed (cl:slot-value msg 'f1)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'f2)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'f3)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'spread)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <HandPos>) istream)
  "Deserializes a message object of type '<HandPos>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'f1) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'f2) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'f3) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'spread) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<HandPos>)))
  "Returns string type for a message object of type '<HandPos>"
  "wam_node/HandPos")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'HandPos)))
  "Returns string type for a message object of type 'HandPos"
  "wam_node/HandPos")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<HandPos>)))
  "Returns md5sum for a message object of type '<HandPos>"
  "82d22a9cd69bfae0453346c187d5c4d2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'HandPos)))
  "Returns md5sum for a message object of type 'HandPos"
  "82d22a9cd69bfae0453346c187d5c4d2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<HandPos>)))
  "Returns full string definition for message of type '<HandPos>"
  (cl:format cl:nil "int32 f1~%int32 f2~%int32 f3~%int32 spread~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'HandPos)))
  "Returns full string definition for message of type 'HandPos"
  (cl:format cl:nil "int32 f1~%int32 f2~%int32 f3~%int32 spread~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <HandPos>))
  (cl:+ 0
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <HandPos>))
  "Converts a ROS message object to a list"
  (cl:list 'HandPos
    (cl:cons ':f1 (f1 msg))
    (cl:cons ':f2 (f2 msg))
    (cl:cons ':f3 (f3 msg))
    (cl:cons ':spread (spread msg))
))
