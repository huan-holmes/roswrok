// Auto-generated. Do not edit!

// (in-package custom_sys_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let AgvTrajectoryMsg2 = require('./AgvTrajectoryMsg2.js');
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class FreeNav {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.target_pose = null;
      this.target_path = null;
      this.type = null;
    }
    else {
      if (initObj.hasOwnProperty('target_pose')) {
        this.target_pose = initObj.target_pose
      }
      else {
        this.target_pose = new geometry_msgs.msg.PoseStamped();
      }
      if (initObj.hasOwnProperty('target_path')) {
        this.target_path = initObj.target_path
      }
      else {
        this.target_path = new AgvTrajectoryMsg2();
      }
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type FreeNav
    // Serialize message field [target_pose]
    bufferOffset = geometry_msgs.msg.PoseStamped.serialize(obj.target_pose, buffer, bufferOffset);
    // Serialize message field [target_path]
    bufferOffset = AgvTrajectoryMsg2.serialize(obj.target_path, buffer, bufferOffset);
    // Serialize message field [type]
    bufferOffset = _serializer.int32(obj.type, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type FreeNav
    let len;
    let data = new FreeNav(null);
    // Deserialize message field [target_pose]
    data.target_pose = geometry_msgs.msg.PoseStamped.deserialize(buffer, bufferOffset);
    // Deserialize message field [target_path]
    data.target_path = AgvTrajectoryMsg2.deserialize(buffer, bufferOffset);
    // Deserialize message field [type]
    data.type = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += geometry_msgs.msg.PoseStamped.getMessageSize(object.target_pose);
    length += AgvTrajectoryMsg2.getMessageSize(object.target_path);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'custom_sys_msgs/FreeNav';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '23022d59f10203932fccb77d648e4155';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    geometry_msgs/PoseStamped target_pose
    custom_sys_msgs/AgvTrajectoryMsg2 target_path
    int32 type
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
    
    ================================================================================
    MSG: custom_sys_msgs/AgvTrajectoryMsg2
    int32 task_id
    int32 task_type
    int32 vehicle_id
    int32 free_nav
    float64 deadline
    geometry_msgs/Pose dst_pose
    custom_sys_msgs/AgvLineMsg2[] agv_trajectory
    int32 test
    ================================================================================
    MSG: custom_sys_msgs/AgvLineMsg2
    int32 segment_id
    int32 segment_type
    int32 attitude
    int32 tracking_mode
    float64 speed
    float64 precision
    float64 arrival_time
    float64 departure_time
    float64 redundancy_time
    geometry_msgs/Pose p_start
    geometry_msgs/Pose p_middle
    geometry_msgs/Pose p_end
    int32 start_node_id
    int32 end_node_id
    bool crossing
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new FreeNav(null);
    if (msg.target_pose !== undefined) {
      resolved.target_pose = geometry_msgs.msg.PoseStamped.Resolve(msg.target_pose)
    }
    else {
      resolved.target_pose = new geometry_msgs.msg.PoseStamped()
    }

    if (msg.target_path !== undefined) {
      resolved.target_path = AgvTrajectoryMsg2.Resolve(msg.target_path)
    }
    else {
      resolved.target_path = new AgvTrajectoryMsg2()
    }

    if (msg.type !== undefined) {
      resolved.type = msg.type;
    }
    else {
      resolved.type = 0
    }

    return resolved;
    }
};

module.exports = FreeNav;
