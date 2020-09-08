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

class RawDataMsg {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.route = null;
      this.content = null;
    }
    else {
      if (initObj.hasOwnProperty('route')) {
        this.route = initObj.route
      }
      else {
        this.route = '';
      }
      if (initObj.hasOwnProperty('content')) {
        this.content = initObj.content
      }
      else {
        this.content = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RawDataMsg
    // Serialize message field [route]
    bufferOffset = _serializer.string(obj.route, buffer, bufferOffset);
    // Serialize message field [content]
    bufferOffset = _serializer.string(obj.content, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RawDataMsg
    let len;
    let data = new RawDataMsg(null);
    // Deserialize message field [route]
    data.route = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [content]
    data.content = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.route.length;
    length += object.content.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'custom_sys_msgs/RawDataMsg';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6e2137428c7912f4349736c8aa4817ac';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string route
    string content
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RawDataMsg(null);
    if (msg.route !== undefined) {
      resolved.route = msg.route;
    }
    else {
      resolved.route = ''
    }

    if (msg.content !== undefined) {
      resolved.content = msg.content;
    }
    else {
      resolved.content = ''
    }

    return resolved;
    }
};

module.exports = RawDataMsg;
