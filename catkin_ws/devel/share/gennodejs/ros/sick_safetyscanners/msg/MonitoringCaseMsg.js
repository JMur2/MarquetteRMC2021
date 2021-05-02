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

class MonitoringCaseMsg {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.monitoring_case_number = null;
      this.fields = null;
      this.fields_valid = null;
    }
    else {
      if (initObj.hasOwnProperty('monitoring_case_number')) {
        this.monitoring_case_number = initObj.monitoring_case_number
      }
      else {
        this.monitoring_case_number = 0;
      }
      if (initObj.hasOwnProperty('fields')) {
        this.fields = initObj.fields
      }
      else {
        this.fields = [];
      }
      if (initObj.hasOwnProperty('fields_valid')) {
        this.fields_valid = initObj.fields_valid
      }
      else {
        this.fields_valid = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MonitoringCaseMsg
    // Serialize message field [monitoring_case_number]
    bufferOffset = _serializer.int32(obj.monitoring_case_number, buffer, bufferOffset);
    // Serialize message field [fields]
    bufferOffset = _arraySerializer.int32(obj.fields, buffer, bufferOffset, null);
    // Serialize message field [fields_valid]
    bufferOffset = _arraySerializer.bool(obj.fields_valid, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MonitoringCaseMsg
    let len;
    let data = new MonitoringCaseMsg(null);
    // Deserialize message field [monitoring_case_number]
    data.monitoring_case_number = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [fields]
    data.fields = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [fields_valid]
    data.fields_valid = _arrayDeserializer.bool(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.fields.length;
    length += object.fields_valid.length;
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'sick_safetyscanners/MonitoringCaseMsg';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'df965c1c062890e5bdd7ee897e4f2d65';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 monitoring_case_number
    int32[] fields
    bool[] fields_valid
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MonitoringCaseMsg(null);
    if (msg.monitoring_case_number !== undefined) {
      resolved.monitoring_case_number = msg.monitoring_case_number;
    }
    else {
      resolved.monitoring_case_number = 0
    }

    if (msg.fields !== undefined) {
      resolved.fields = msg.fields;
    }
    else {
      resolved.fields = []
    }

    if (msg.fields_valid !== undefined) {
      resolved.fields_valid = msg.fields_valid;
    }
    else {
      resolved.fields_valid = []
    }

    return resolved;
    }
};

module.exports = MonitoringCaseMsg;
