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

class InitalPoseMsg {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.pos = null;
      this.pos_var = null;
      this.yaw_var = null;
    }
    else {
      if (initObj.hasOwnProperty('pos')) {
        this.pos = initObj.pos
      }
      else {
        this.pos = new geometry_msgs.msg.Pose();
      }
      if (initObj.hasOwnProperty('pos_var')) {
        this.pos_var = initObj.pos_var
      }
      else {
        this.pos_var = new geometry_msgs.msg.Pose();
      }
      if (initObj.hasOwnProperty('yaw_var')) {
        this.yaw_var = initObj.yaw_var
      }
      else {
        this.yaw_var = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type InitalPoseMsg
    // Serialize message field [pos]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.pos, buffer, bufferOffset);
    // Serialize message field [pos_var]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.pos_var, buffer, bufferOffset);
    // Serialize message field [yaw_var]
    bufferOffset = _serializer.float64(obj.yaw_var, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type InitalPoseMsg
    let len;
    let data = new InitalPoseMsg(null);
    // Deserialize message field [pos]
    data.pos = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    // Deserialize message field [pos_var]
    data.pos_var = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    // Deserialize message field [yaw_var]
    data.yaw_var = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 120;
  }

  static datatype() {
    // Returns string type for a message object
    return 'custom_sys_msgs/InitalPoseMsg';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '23af2ff86744279d9501d4df9ddadc6e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    geometry_msgs/Pose pos
    geometry_msgs/Pose pos_var
    float64 yaw_var
    
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
    const resolved = new InitalPoseMsg(null);
    if (msg.pos !== undefined) {
      resolved.pos = geometry_msgs.msg.Pose.Resolve(msg.pos)
    }
    else {
      resolved.pos = new geometry_msgs.msg.Pose()
    }

    if (msg.pos_var !== undefined) {
      resolved.pos_var = geometry_msgs.msg.Pose.Resolve(msg.pos_var)
    }
    else {
      resolved.pos_var = new geometry_msgs.msg.Pose()
    }

    if (msg.yaw_var !== undefined) {
      resolved.yaw_var = msg.yaw_var;
    }
    else {
      resolved.yaw_var = 0.0
    }

    return resolved;
    }
};

module.exports = InitalPoseMsg;
