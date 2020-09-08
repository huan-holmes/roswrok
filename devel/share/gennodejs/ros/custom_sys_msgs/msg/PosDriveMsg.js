// Auto-generated. Do not edit!

// (in-package custom_sys_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class PosDriveMsg {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.woke_mode = null;
      this.vel = null;
      this.dt = null;
    }
    else {
      if (initObj.hasOwnProperty('woke_mode')) {
        this.woke_mode = initObj.woke_mode
      }
      else {
        this.woke_mode = 0;
      }
      if (initObj.hasOwnProperty('vel')) {
        this.vel = initObj.vel
      }
      else {
        this.vel = 0.0;
      }
      if (initObj.hasOwnProperty('dt')) {
        this.dt = initObj.dt
      }
      else {
        this.dt = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PosDriveMsg
    // Serialize message field [woke_mode]
    bufferOffset = _serializer.int8(obj.woke_mode, buffer, bufferOffset);
    // Serialize message field [vel]
    bufferOffset = _serializer.float32(obj.vel, buffer, bufferOffset);
    // Serialize message field [dt]
    bufferOffset = _serializer.float32(obj.dt, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PosDriveMsg
    let len;
    let data = new PosDriveMsg(null);
    // Deserialize message field [woke_mode]
    data.woke_mode = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [vel]
    data.vel = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [dt]
    data.dt = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 9;
  }

  static datatype() {
    // Returns string type for a message object
    return 'custom_sys_msgs/PosDriveMsg';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7bb6b3d9b61499e839f2b3aff8cedd55';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int8 woke_mode
    float32 vel
    float32 dt
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PosDriveMsg(null);
    if (msg.woke_mode !== undefined) {
      resolved.woke_mode = msg.woke_mode;
    }
    else {
      resolved.woke_mode = 0
    }

    if (msg.vel !== undefined) {
      resolved.vel = msg.vel;
    }
    else {
      resolved.vel = 0.0
    }

    if (msg.dt !== undefined) {
      resolved.dt = msg.dt;
    }
    else {
      resolved.dt = 0.0
    }

    return resolved;
    }
};

module.exports = PosDriveMsg;
