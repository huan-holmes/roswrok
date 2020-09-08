// Auto-generated. Do not edit!

// (in-package boocax_base.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class mappathRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.uuid = null;
    }
    else {
      if (initObj.hasOwnProperty('uuid')) {
        this.uuid = initObj.uuid
      }
      else {
        this.uuid = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type mappathRequest
    // Serialize message field [uuid]
    bufferOffset = _serializer.string(obj.uuid, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type mappathRequest
    let len;
    let data = new mappathRequest(null);
    // Deserialize message field [uuid]
    data.uuid = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.uuid.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'boocax_base/mappathRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '18ad0215778d252d8f14959901273e8d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string uuid
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new mappathRequest(null);
    if (msg.uuid !== undefined) {
      resolved.uuid = msg.uuid;
    }
    else {
      resolved.uuid = ''
    }

    return resolved;
    }
};

class mappathResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.path = null;
    }
    else {
      if (initObj.hasOwnProperty('path')) {
        this.path = initObj.path
      }
      else {
        this.path = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type mappathResponse
    // Serialize message field [path]
    bufferOffset = _serializer.string(obj.path, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type mappathResponse
    let len;
    let data = new mappathResponse(null);
    // Deserialize message field [path]
    data.path = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.path.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'boocax_base/mappathResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1d00cd540af97efeb6b1589112fab63e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string path
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new mappathResponse(null);
    if (msg.path !== undefined) {
      resolved.path = msg.path;
    }
    else {
      resolved.path = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: mappathRequest,
  Response: mappathResponse,
  md5sum() { return '2e5c72b90d775d2232dce461905b4f18'; },
  datatype() { return 'boocax_base/mappath'; }
};
