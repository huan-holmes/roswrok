// Auto-generated. Do not edit!

// (in-package custom_sys_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let AlvarMarker = require('./AlvarMarker.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class AlvarMarkers {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.rt = null;
      this.makers = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('rt')) {
        this.rt = initObj.rt
      }
      else {
        this.rt = false;
      }
      if (initObj.hasOwnProperty('makers')) {
        this.makers = initObj.makers
      }
      else {
        this.makers = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AlvarMarkers
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [rt]
    bufferOffset = _serializer.bool(obj.rt, buffer, bufferOffset);
    // Serialize message field [makers]
    // Serialize the length for message field [makers]
    bufferOffset = _serializer.uint32(obj.makers.length, buffer, bufferOffset);
    obj.makers.forEach((val) => {
      bufferOffset = AlvarMarker.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AlvarMarkers
    let len;
    let data = new AlvarMarkers(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [rt]
    data.rt = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [makers]
    // Deserialize array length for message field [makers]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.makers = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.makers[i] = AlvarMarker.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.makers.forEach((val) => {
      length += AlvarMarker.getMessageSize(val);
    });
    return length + 5;
  }

  static datatype() {
    // Returns string type for a message object
    return 'custom_sys_msgs/AlvarMarkers';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '482f7d740dba8f6b77df1734db153e78';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    bool rt
    AlvarMarker[] makers
    
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    # 0: no frame
    # 1: global frame
    string frame_id
    
    ================================================================================
    MSG: custom_sys_msgs/AlvarMarker
    Header header
    uint32 id
    uint32 confidence
    geometry_msgs/PoseStamped pose
    
    
    ================================================================================
    MSG: geometry_msgs/PoseStamped
    # A Pose with reference coordinate frame and timestamp
    Header header
    Pose pose
    
    ================================================================================
    MSG: geometry_msgs/Pose
    # A representation of pose in free space, composed of position and orientation. 
    Point position
    Quaternion orientation
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: geometry_msgs/Quaternion
    # This represents an orientation in free space in quaternion form.
    
    float64 x
    float64 y
    float64 z
    float64 w
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new AlvarMarkers(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.rt !== undefined) {
      resolved.rt = msg.rt;
    }
    else {
      resolved.rt = false
    }

    if (msg.makers !== undefined) {
      resolved.makers = new Array(msg.makers.length);
      for (let i = 0; i < resolved.makers.length; ++i) {
        resolved.makers[i] = AlvarMarker.Resolve(msg.makers[i]);
      }
    }
    else {
      resolved.makers = []
    }

    return resolved;
    }
};

module.exports = AlvarMarkers;
