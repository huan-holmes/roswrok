// Auto-generated. Do not edit!

// (in-package custom_sys_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class read_rfidRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.rfid = null;
    }
    else {
      if (initObj.hasOwnProperty('rfid')) {
        this.rfid = initObj.rfid
      }
      else {
        this.rfid = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type read_rfidRequest
    // Serialize message field [rfid]
    bufferOffset = _arraySerializer.int32(obj.rfid, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type read_rfidRequest
    let len;
    let data = new read_rfidRequest(null);
    // Deserialize message field [rfid]
    data.rfid = _arrayDeserializer.int32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.rfid.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'custom_sys_msgs/read_rfidRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '71937ebb5398ecec907c34ee711d1a8b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32[] rfid
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new read_rfidRequest(null);
    if (msg.rfid !== undefined) {
      resolved.rfid = msg.rfid;
    }
    else {
      resolved.rfid = []
    }

    return resolved;
    }
};

class read_rfidResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.result = null;
    }
    else {
      if (initObj.hasOwnProperty('result')) {
        this.result = initObj.result
      }
      else {
        this.result = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type read_rfidResponse
    // Serialize message field [result]
    bufferOffset = _serializer.bool(obj.result, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type read_rfidResponse
    let len;
    let data = new read_rfidResponse(null);
    // Deserialize message field [result]
    data.result = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'custom_sys_msgs/read_rfidResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'eb13ac1f1354ccecb7941ee8fa2192e8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool result
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new read_rfidResponse(null);
    if (msg.result !== undefined) {
      resolved.result = msg.result;
    }
    else {
      resolved.result = false
    }

    return resolved;
    }
};

module.exports = {
  Request: read_rfidRequest,
  Response: read_rfidResponse,
  md5sum() { return '18de2e0b7d7ef6caf5f88adb50d8ab40'; },
  datatype() { return 'custom_sys_msgs/read_rfid'; }
};
