// Auto-generated. Do not edit!

// (in-package main.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

let FieldMsg = require('../msg/FieldMsg.js');
let MonitoringCaseMsg = require('../msg/MonitoringCaseMsg.js');

//-----------------------------------------------------------

class FieldDataRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type FieldDataRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type FieldDataRequest
    let len;
    let data = new FieldDataRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'main/FieldDataRequest';
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
    const resolved = new FieldDataRequest(null);
    return resolved;
    }
};

class FieldDataResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.fields = null;
      this.device_name = null;
      this.monitoring_cases = null;
    }
    else {
      if (initObj.hasOwnProperty('fields')) {
        this.fields = initObj.fields
      }
      else {
        this.fields = [];
      }
      if (initObj.hasOwnProperty('device_name')) {
        this.device_name = initObj.device_name
      }
      else {
        this.device_name = '';
      }
      if (initObj.hasOwnProperty('monitoring_cases')) {
        this.monitoring_cases = initObj.monitoring_cases
      }
      else {
        this.monitoring_cases = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type FieldDataResponse
    // Serialize message field [fields]
    // Serialize the length for message field [fields]
    bufferOffset = _serializer.uint32(obj.fields.length, buffer, bufferOffset);
    obj.fields.forEach((val) => {
      bufferOffset = FieldMsg.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [device_name]
    bufferOffset = _serializer.string(obj.device_name, buffer, bufferOffset);
    // Serialize message field [monitoring_cases]
    // Serialize the length for message field [monitoring_cases]
    bufferOffset = _serializer.uint32(obj.monitoring_cases.length, buffer, bufferOffset);
    obj.monitoring_cases.forEach((val) => {
      bufferOffset = MonitoringCaseMsg.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type FieldDataResponse
    let len;
    let data = new FieldDataResponse(null);
    // Deserialize message field [fields]
    // Deserialize array length for message field [fields]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.fields = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.fields[i] = FieldMsg.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [device_name]
    data.device_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [monitoring_cases]
    // Deserialize array length for message field [monitoring_cases]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.monitoring_cases = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.monitoring_cases[i] = MonitoringCaseMsg.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.fields.forEach((val) => {
      length += FieldMsg.getMessageSize(val);
    });
    length += object.device_name.length;
    object.monitoring_cases.forEach((val) => {
      length += MonitoringCaseMsg.getMessageSize(val);
    });
    return length + 12;
  }

  static datatype() {
    // Returns string type for a service object
    return 'main/FieldDataResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '649f88740cfa9dc91cefbf73ed47045b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    main/FieldMsg[] fields
    string device_name
    main/MonitoringCaseMsg[] monitoring_cases
    
    
    ================================================================================
    MSG: main/FieldMsg
    float32[] ranges
    float32 start_angle
    float32 angular_resolution
    bool protective_field
    
    ================================================================================
    MSG: main/MonitoringCaseMsg
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
    const resolved = new FieldDataResponse(null);
    if (msg.fields !== undefined) {
      resolved.fields = new Array(msg.fields.length);
      for (let i = 0; i < resolved.fields.length; ++i) {
        resolved.fields[i] = FieldMsg.Resolve(msg.fields[i]);
      }
    }
    else {
      resolved.fields = []
    }

    if (msg.device_name !== undefined) {
      resolved.device_name = msg.device_name;
    }
    else {
      resolved.device_name = ''
    }

    if (msg.monitoring_cases !== undefined) {
      resolved.monitoring_cases = new Array(msg.monitoring_cases.length);
      for (let i = 0; i < resolved.monitoring_cases.length; ++i) {
        resolved.monitoring_cases[i] = MonitoringCaseMsg.Resolve(msg.monitoring_cases[i]);
      }
    }
    else {
      resolved.monitoring_cases = []
    }

    return resolved;
    }
};

module.exports = {
  Request: FieldDataRequest,
  Response: FieldDataResponse,
  md5sum() { return '649f88740cfa9dc91cefbf73ed47045b'; },
  datatype() { return 'main/FieldData'; }
};
