// Auto-generated. Do not edit!

// (in-package custom_sys_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class PositionCorrectMsg {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.publisher = null;
      this.src = null;
      this.dest = null;
    }
    else {
      if (initObj.hasOwnProperty('publisher')) {
        this.publisher = initObj.publisher
      }
      else {
        this.publisher = '';
      }
      if (initObj.hasOwnProperty('src')) {
        this.src = initObj.src
      }
      else {
        this.src = new geometry_msgs.msg.PoseStamped();
      }
      if (initObj.hasOwnProperty('dest')) {
        this.dest = initObj.dest
      }
      else {
        this.dest = new geometry_msgs.msg.PoseStamped();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PositionCorrectMsg
    // Serialize message field [publisher]
    bufferOffset = _serializer.string(obj.publisher, buffer, bufferOffset);
    // Serialize message field [src]
    bufferOffset = geometry_msgs.msg.PoseStamped.serialize(obj.src, buffer, bufferOffset);
    // Serialize message field [dest]
    bufferOffset = geometry_msgs.msg.PoseStamped.serialize(obj.dest, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PositionCorrectMsg
    let len;
    let data = new PositionCorrectMsg(null);
    // Deserialize message field [publisher]
    data.publisher = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [src]
    data.src = geometry_msgs.msg.PoseStamped.deserialize(buffer, bufferOffset);
    // Deserialize message field [dest]
    data.dest = geometry_msgs.msg.PoseStamped.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.publisher.length;
    length += geometry_msgs.msg.PoseStamped.getMessageSize(object.src);
    length += geometry_msgs.msg.PoseStamped.getMessageSize(object.dest);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'custom_sys_msgs/PositionCorrectMsg';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8d4258103e89217fefb1bfba9a02eb62';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string publisher
    geometry_msgs/PoseStamped src
    geometry_msgs/PoseStamped dest
    
    ================================================================================
    MSG: geometry_msgs/PoseStamped
    # A Pose with reference coordinate frame and timestamp
    Header header
    Pose pose
    
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
    const resolved = new PositionCorrectMsg(null);
    if (msg.publisher !== undefined) {
      resolved.publisher = msg.publisher;
    }
    else {
      resolved.publisher = ''
    }

    if (msg.src !== undefined) {
      resolved.src = geometry_msgs.msg.PoseStamped.Resolve(msg.src)
    }
    else {
      resolved.src = new geometry_msgs.msg.PoseStamped()
    }

    if (msg.dest !== undefined) {
      resolved.dest = geometry_msgs.msg.PoseStamped.Resolve(msg.dest)
    }
    else {
      resolved.dest = new geometry_msgs.msg.PoseStamped()
    }

    return resolved;
    }
};

module.exports = PositionCorrectMsg;
