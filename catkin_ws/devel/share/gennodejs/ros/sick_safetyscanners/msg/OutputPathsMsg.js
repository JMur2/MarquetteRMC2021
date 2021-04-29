// Auto-generated. Do not edit!

// (in-package sick_safetyscanners.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class OutputPathsMsg {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.status = null;
      this.is_safe = null;
      this.is_valid = null;
      this.active_monitoring_case = null;
    }
    else {
      if (initObj.hasOwnProperty('status')) {
        this.status = initObj.status
      }
      else {
        this.status = [];
      }
      if (initObj.hasOwnProperty('is_safe')) {
        this.is_safe = initObj.is_safe
      }
      else {
        this.is_safe = [];
      }
      if (initObj.hasOwnProperty('is_valid')) {
        this.is_valid = initObj.is_valid
      }
      else {
        this.is_valid = [];
      }
      if (initObj.hasOwnProperty('active_monitoring_case')) {
        this.active_monitoring_case = initObj.active_monitoring_case
      }
      else {
        this.active_monitoring_case = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type OutputPathsMsg
    // Serialize message field [status]
    bufferOffset = _arraySerializer.bool(obj.status, buffer, bufferOffset, null);
    // Serialize message field [is_safe]
    bufferOffset = _arraySerializer.bool(obj.is_safe, buffer, bufferOffset, null);
    // Serialize message field [is_valid]
    bufferOffset = _arraySerializer.bool(obj.is_valid, buffer, bufferOffset, null);
    // Serialize message field [active_monitoring_case]
    bufferOffset = _serializer.int32(obj.active_monitoring_case, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type OutputPathsMsg
    let len;
    let data = new OutputPathsMsg(null);
    // Deserialize message field [status]
    data.status = _arrayDeserializer.bool(buffer, bufferOffset, null)
    // Deserialize message field [is_safe]
    data.is_safe = _arrayDeserializer.bool(buffer, bufferOffset, null)
    // Deserialize message field [is_valid]
    data.is_valid = _arrayDeserializer.bool(buffer, bufferOffset, null)
    // Deserialize message field [active_monitoring_case]
    data.active_monitoring_case = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.status.length;
    length += object.is_safe.length;
    length += object.is_valid.length;
    return length + 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'sick_safetyscanners/OutputPathsMsg';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '10ce675a2a87077eb6fb8c168c348972';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool[] status
    bool[] is_safe
    bool[] is_valid
    int32 active_monitoring_case
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new OutputPathsMsg(null);
    if (msg.status !== undefined) {
      resolved.status = msg.status;
    }
    else {
      resolved.status = []
    }

    if (msg.is_safe !== undefined) {
      resolved.is_safe = msg.is_safe;
    }
    else {
      resolved.is_safe = []
    }

    if (msg.is_valid !== undefined) {
      resolved.is_valid = msg.is_valid;
    }
    else {
      resolved.is_valid = []
    }

    if (msg.active_monitoring_case !== undefined) {
      resolved.active_monitoring_case = msg.active_monitoring_case;
    }
    else {
      resolved.active_monitoring_case = 0
    }

    return resolved;
    }
};

module.exports = OutputPathsMsg;
