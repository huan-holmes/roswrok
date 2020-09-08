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

class AutoDockMsg {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.direction = null;
      this.dist_to_stop = null;
      this.final_dist = null;
    }
    else {
      if (initObj.hasOwnProperty('direction')) {
        this.direction = initObj.direction
      }
      else {
        this.direction = 0;
      }
      if (initObj.hasOwnProperty('dist_to_stop')) {
        this.dist_to_stop = initObj.dist_to_stop
      }
      else {
        this.dist_to_stop = 0.0;
      }
      if (initObj.hasOwnProperty('final_dist')) {
        this.final_dist = initObj.final_dist
      }
      else {
        this.final_dist = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AutoDockMsg
    // Serialize message field [direction]
    bufferOffset = _serializer.int32(obj.direction, buffer, bufferOffset);
    // Serialize message field [dist_to_stop]
    bufferOffset = _serializer.float64(obj.dist_to_stop, buffer, bufferOffset);
    // Serialize message field [final_dist]
    bufferOffset = _serializer.float64(obj.final_dist, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AutoDockMsg
    let len;
    let data = new AutoDockMsg(null);
    // Deserialize message field [direction]
    data.direction = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [dist_to_stop]
    data.dist_to_stop = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [final_dist]
    data.final_dist = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 20;
  }

  static datatype() {
    // Returns string type for a message object
    return 'custom_sys_msgs/AutoDockMsg';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4151794017432cf3ab9616a1c6f5ab81';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 direction
    float64 dist_to_stop
    float64 final_dist
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new AutoDockMsg(null);
    if (msg.direction !== undefined) {
      resolved.direction = msg.direction;
    }
    else {
      resolved.direction = 0
    }

    if (msg.dist_to_stop !== undefined) {
      resolved.dist_to_stop = msg.dist_to_stop;
    }
    else {
      resolved.dist_to_stop = 0.0
    }

    if (msg.final_dist !== undefined) {
      resolved.final_dist = msg.final_dist;
    }
    else {
      resolved.final_dist = 0.0
    }

    return resolved;
    }
};

module.exports = AutoDockMsg;
