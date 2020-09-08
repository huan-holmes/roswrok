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

class boocax_versionRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type boocax_versionRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type boocax_versionRequest
    let len;
    let data = new boocax_versionRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'custom_sys_msgs/boocax_versionRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new boocax_versionRequest(null);
    return resolved;
    }
};

class boocax_versionResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.version_str = null;
    }
    else {
      if (initObj.hasOwnProperty('version_str')) {
        this.version_str = initObj.version_str
      }
      else {
        this.version_str = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type boocax_versionResponse
    // Serialize message field [version_str]
    bufferOffset = _serializer.string(obj.version_str, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type boocax_versionResponse
    let len;
    let data = new boocax_versionResponse(null);
    // Deserialize message field [version_str]
    data.version_str = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.version_str.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'custom_sys_msgs/boocax_versionResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4e95cccfdf0b9419ff2f6d45e4903934';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string version_str
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new boocax_versionResponse(null);
    if (msg.version_str !== undefined) {
      resolved.version_str = msg.version_str;
    }
    else {
      resolved.version_str = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: boocax_versionRequest,
  Response: boocax_versionResponse,
  md5sum() { return '4e95cccfdf0b9419ff2f6d45e4903934'; },
  datatype() { return 'custom_sys_msgs/boocax_version'; }
};
