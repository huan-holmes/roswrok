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

class CrossingNodeMsg {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.node_acquired = null;
      this.node_released = null;
      this.node_fobbidden = null;
    }
    else {
      if (initObj.hasOwnProperty('node_acquired')) {
        this.node_acquired = initObj.node_acquired
      }
      else {
        this.node_acquired = [];
      }
      if (initObj.hasOwnProperty('node_released')) {
        this.node_released = initObj.node_released
      }
      else {
        this.node_released = [];
      }
      if (initObj.hasOwnProperty('node_fobbidden')) {
        this.node_fobbidden = initObj.node_fobbidden
      }
      else {
        this.node_fobbidden = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CrossingNodeMsg
    // Serialize message field [node_acquired]
    bufferOffset = _arraySerializer.int32(obj.node_acquired, buffer, bufferOffset, null);
    // Serialize message field [node_released]
    bufferOffset = _arraySerializer.int32(obj.node_released, buffer, bufferOffset, null);
    // Serialize message field [node_fobbidden]
    bufferOffset = _arraySerializer.int32(obj.node_fobbidden, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CrossingNodeMsg
    let len;
    let data = new CrossingNodeMsg(null);
    // Deserialize message field [node_acquired]
    data.node_acquired = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [node_released]
    data.node_released = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [node_fobbidden]
    data.node_fobbidden = _arrayDeserializer.int32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.node_acquired.length;
    length += 4 * object.node_released.length;
    length += 4 * object.node_fobbidden.length;
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'custom_sys_msgs/CrossingNodeMsg';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9dc9fa7b6fdf580a4e6988a6147a64b6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32[] node_acquired
    int32[] node_released
    int32[] node_fobbidden
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CrossingNodeMsg(null);
    if (msg.node_acquired !== undefined) {
      resolved.node_acquired = msg.node_acquired;
    }
    else {
      resolved.node_acquired = []
    }

    if (msg.node_released !== undefined) {
      resolved.node_released = msg.node_released;
    }
    else {
      resolved.node_released = []
    }

    if (msg.node_fobbidden !== undefined) {
      resolved.node_fobbidden = msg.node_fobbidden;
    }
    else {
      resolved.node_fobbidden = []
    }

    return resolved;
    }
};

module.exports = CrossingNodeMsg;
