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

class GripTaskMsg {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.src_dir = null;
      this.src_height = null;
      this.dst_dir = null;
      this.dst_height = null;
      this.final_homing = null;
    }
    else {
      if (initObj.hasOwnProperty('src_dir')) {
        this.src_dir = initObj.src_dir
      }
      else {
        this.src_dir = 0;
      }
      if (initObj.hasOwnProperty('src_height')) {
        this.src_height = initObj.src_height
      }
      else {
        this.src_height = 0.0;
      }
      if (initObj.hasOwnProperty('dst_dir')) {
        this.dst_dir = initObj.dst_dir
      }
      else {
        this.dst_dir = 0;
      }
      if (initObj.hasOwnProperty('dst_height')) {
        this.dst_height = initObj.dst_height
      }
      else {
        this.dst_height = 0.0;
      }
      if (initObj.hasOwnProperty('final_homing')) {
        this.final_homing = initObj.final_homing
      }
      else {
        this.final_homing = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GripTaskMsg
    // Serialize message field [src_dir]
    bufferOffset = _serializer.int8(obj.src_dir, buffer, bufferOffset);
    // Serialize message field [src_height]
    bufferOffset = _serializer.float32(obj.src_height, buffer, bufferOffset);
    // Serialize message field [dst_dir]
    bufferOffset = _serializer.int8(obj.dst_dir, buffer, bufferOffset);
    // Serialize message field [dst_height]
    bufferOffset = _serializer.float32(obj.dst_height, buffer, bufferOffset);
    // Serialize message field [final_homing]
    bufferOffset = _serializer.int8(obj.final_homing, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GripTaskMsg
    let len;
    let data = new GripTaskMsg(null);
    // Deserialize message field [src_dir]
    data.src_dir = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [src_height]
    data.src_height = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [dst_dir]
    data.dst_dir = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [dst_height]
    data.dst_height = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [final_homing]
    data.final_homing = _deserializer.int8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 11;
  }

  static datatype() {
    // Returns string type for a message object
    return 'custom_sys_msgs/GripTaskMsg';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'edcdb33fee8dd1cca389a115bb5f85d4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int8 src_dir
    float32 src_height
    int8 dst_dir
    float32 dst_height
    int8 final_homing
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GripTaskMsg(null);
    if (msg.src_dir !== undefined) {
      resolved.src_dir = msg.src_dir;
    }
    else {
      resolved.src_dir = 0
    }

    if (msg.src_height !== undefined) {
      resolved.src_height = msg.src_height;
    }
    else {
      resolved.src_height = 0.0
    }

    if (msg.dst_dir !== undefined) {
      resolved.dst_dir = msg.dst_dir;
    }
    else {
      resolved.dst_dir = 0
    }

    if (msg.dst_height !== undefined) {
      resolved.dst_height = msg.dst_height;
    }
    else {
      resolved.dst_height = 0.0
    }

    if (msg.final_homing !== undefined) {
      resolved.final_homing = msg.final_homing;
    }
    else {
      resolved.final_homing = 0
    }

    return resolved;
    }
};

module.exports = GripTaskMsg;
