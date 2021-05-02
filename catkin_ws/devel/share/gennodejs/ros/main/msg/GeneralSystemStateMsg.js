// Auto-generated. Do not edit!

// (in-package main.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class GeneralSystemStateMsg {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.run_mode_active = null;
      this.standby_mode_active = null;
      this.contamination_warning = null;
      this.contamination_error = null;
      this.reference_contour_status = null;
      this.manipulation_status = null;
      this.safe_cut_off_path = null;
      this.non_safe_cut_off_path = null;
      this.reset_required_cut_off_path = null;
      this.current_monitoring_case_no_table_1 = null;
      this.current_monitoring_case_no_table_2 = null;
      this.current_monitoring_case_no_table_3 = null;
      this.current_monitoring_case_no_table_4 = null;
      this.application_error = null;
      this.device_error = null;
    }
    else {
      if (initObj.hasOwnProperty('run_mode_active')) {
        this.run_mode_active = initObj.run_mode_active
      }
      else {
        this.run_mode_active = false;
      }
      if (initObj.hasOwnProperty('standby_mode_active')) {
        this.standby_mode_active = initObj.standby_mode_active
      }
      else {
        this.standby_mode_active = false;
      }
      if (initObj.hasOwnProperty('contamination_warning')) {
        this.contamination_warning = initObj.contamination_warning
      }
      else {
        this.contamination_warning = false;
      }
      if (initObj.hasOwnProperty('contamination_error')) {
        this.contamination_error = initObj.contamination_error
      }
      else {
        this.contamination_error = false;
      }
      if (initObj.hasOwnProperty('reference_contour_status')) {
        this.reference_contour_status = initObj.reference_contour_status
      }
      else {
        this.reference_contour_status = false;
      }
      if (initObj.hasOwnProperty('manipulation_status')) {
        this.manipulation_status = initObj.manipulation_status
      }
      else {
        this.manipulation_status = false;
      }
      if (initObj.hasOwnProperty('safe_cut_off_path')) {
        this.safe_cut_off_path = initObj.safe_cut_off_path
      }
      else {
        this.safe_cut_off_path = [];
      }
      if (initObj.hasOwnProperty('non_safe_cut_off_path')) {
        this.non_safe_cut_off_path = initObj.non_safe_cut_off_path
      }
      else {
        this.non_safe_cut_off_path = [];
      }
      if (initObj.hasOwnProperty('reset_required_cut_off_path')) {
        this.reset_required_cut_off_path = initObj.reset_required_cut_off_path
      }
      else {
        this.reset_required_cut_off_path = [];
      }
      if (initObj.hasOwnProperty('current_monitoring_case_no_table_1')) {
        this.current_monitoring_case_no_table_1 = initObj.current_monitoring_case_no_table_1
      }
      else {
        this.current_monitoring_case_no_table_1 = 0;
      }
      if (initObj.hasOwnProperty('current_monitoring_case_no_table_2')) {
        this.current_monitoring_case_no_table_2 = initObj.current_monitoring_case_no_table_2
      }
      else {
        this.current_monitoring_case_no_table_2 = 0;
      }
      if (initObj.hasOwnProperty('current_monitoring_case_no_table_3')) {
        this.current_monitoring_case_no_table_3 = initObj.current_monitoring_case_no_table_3
      }
      else {
        this.current_monitoring_case_no_table_3 = 0;
      }
      if (initObj.hasOwnProperty('current_monitoring_case_no_table_4')) {
        this.current_monitoring_case_no_table_4 = initObj.current_monitoring_case_no_table_4
      }
      else {
        this.current_monitoring_case_no_table_4 = 0;
      }
      if (initObj.hasOwnProperty('application_error')) {
        this.application_error = initObj.application_error
      }
      else {
        this.application_error = false;
      }
      if (initObj.hasOwnProperty('device_error')) {
        this.device_error = initObj.device_error
      }
      else {
        this.device_error = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GeneralSystemStateMsg
    // Serialize message field [run_mode_active]
    bufferOffset = _serializer.bool(obj.run_mode_active, buffer, bufferOffset);
    // Serialize message field [standby_mode_active]
    bufferOffset = _serializer.bool(obj.standby_mode_active, buffer, bufferOffset);
    // Serialize message field [contamination_warning]
    bufferOffset = _serializer.bool(obj.contamination_warning, buffer, bufferOffset);
    // Serialize message field [contamination_error]
    bufferOffset = _serializer.bool(obj.contamination_error, buffer, bufferOffset);
    // Serialize message field [reference_contour_status]
    bufferOffset = _serializer.bool(obj.reference_contour_status, buffer, bufferOffset);
    // Serialize message field [manipulation_status]
    bufferOffset = _serializer.bool(obj.manipulation_status, buffer, bufferOffset);
    // Serialize message field [safe_cut_off_path]
    bufferOffset = _arraySerializer.bool(obj.safe_cut_off_path, buffer, bufferOffset, null);
    // Serialize message field [non_safe_cut_off_path]
    bufferOffset = _arraySerializer.bool(obj.non_safe_cut_off_path, buffer, bufferOffset, null);
    // Serialize message field [reset_required_cut_off_path]
    bufferOffset = _arraySerializer.bool(obj.reset_required_cut_off_path, buffer, bufferOffset, null);
    // Serialize message field [current_monitoring_case_no_table_1]
    bufferOffset = _serializer.uint8(obj.current_monitoring_case_no_table_1, buffer, bufferOffset);
    // Serialize message field [current_monitoring_case_no_table_2]
    bufferOffset = _serializer.uint8(obj.current_monitoring_case_no_table_2, buffer, bufferOffset);
    // Serialize message field [current_monitoring_case_no_table_3]
    bufferOffset = _serializer.uint8(obj.current_monitoring_case_no_table_3, buffer, bufferOffset);
    // Serialize message field [current_monitoring_case_no_table_4]
    bufferOffset = _serializer.uint8(obj.current_monitoring_case_no_table_4, buffer, bufferOffset);
    // Serialize message field [application_error]
    bufferOffset = _serializer.bool(obj.application_error, buffer, bufferOffset);
    // Serialize message field [device_error]
    bufferOffset = _serializer.bool(obj.device_error, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GeneralSystemStateMsg
    let len;
    let data = new GeneralSystemStateMsg(null);
    // Deserialize message field [run_mode_active]
    data.run_mode_active = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [standby_mode_active]
    data.standby_mode_active = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [contamination_warning]
    data.contamination_warning = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [contamination_error]
    data.contamination_error = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [reference_contour_status]
    data.reference_contour_status = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [manipulation_status]
    data.manipulation_status = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [safe_cut_off_path]
    data.safe_cut_off_path = _arrayDeserializer.bool(buffer, bufferOffset, null)
    // Deserialize message field [non_safe_cut_off_path]
    data.non_safe_cut_off_path = _arrayDeserializer.bool(buffer, bufferOffset, null)
    // Deserialize message field [reset_required_cut_off_path]
    data.reset_required_cut_off_path = _arrayDeserializer.bool(buffer, bufferOffset, null)
    // Deserialize message field [current_monitoring_case_no_table_1]
    data.current_monitoring_case_no_table_1 = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [current_monitoring_case_no_table_2]
    data.current_monitoring_case_no_table_2 = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [current_monitoring_case_no_table_3]
    data.current_monitoring_case_no_table_3 = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [current_monitoring_case_no_table_4]
    data.current_monitoring_case_no_table_4 = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [application_error]
    data.application_error = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [device_error]
    data.device_error = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.safe_cut_off_path.length;
    length += object.non_safe_cut_off_path.length;
    length += object.reset_required_cut_off_path.length;
    return length + 24;
  }

  static datatype() {
    // Returns string type for a message object
    return 'main/GeneralSystemStateMsg';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'fda37ee099981af2c442eec5d758ecbd';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool run_mode_active
    bool standby_mode_active
    bool contamination_warning
    bool contamination_error
    bool reference_contour_status
    bool manipulation_status
    
    bool[] safe_cut_off_path
    bool[] non_safe_cut_off_path
    bool[] reset_required_cut_off_path
    
    uint8 current_monitoring_case_no_table_1
    uint8 current_monitoring_case_no_table_2
    uint8 current_monitoring_case_no_table_3
    uint8 current_monitoring_case_no_table_4
    
    bool application_error
    bool device_error
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GeneralSystemStateMsg(null);
    if (msg.run_mode_active !== undefined) {
      resolved.run_mode_active = msg.run_mode_active;
    }
    else {
      resolved.run_mode_active = false
    }

    if (msg.standby_mode_active !== undefined) {
      resolved.standby_mode_active = msg.standby_mode_active;
    }
    else {
      resolved.standby_mode_active = false
    }

    if (msg.contamination_warning !== undefined) {
      resolved.contamination_warning = msg.contamination_warning;
    }
    else {
      resolved.contamination_warning = false
    }

    if (msg.contamination_error !== undefined) {
      resolved.contamination_error = msg.contamination_error;
    }
    else {
      resolved.contamination_error = false
    }

    if (msg.reference_contour_status !== undefined) {
      resolved.reference_contour_status = msg.reference_contour_status;
    }
    else {
      resolved.reference_contour_status = false
    }

    if (msg.manipulation_status !== undefined) {
      resolved.manipulation_status = msg.manipulation_status;
    }
    else {
      resolved.manipulation_status = false
    }

    if (msg.safe_cut_off_path !== undefined) {
      resolved.safe_cut_off_path = msg.safe_cut_off_path;
    }
    else {
      resolved.safe_cut_off_path = []
    }

    if (msg.non_safe_cut_off_path !== undefined) {
      resolved.non_safe_cut_off_path = msg.non_safe_cut_off_path;
    }
    else {
      resolved.non_safe_cut_off_path = []
    }

    if (msg.reset_required_cut_off_path !== undefined) {
      resolved.reset_required_cut_off_path = msg.reset_required_cut_off_path;
    }
    else {
      resolved.reset_required_cut_off_path = []
    }

    if (msg.current_monitoring_case_no_table_1 !== undefined) {
      resolved.current_monitoring_case_no_table_1 = msg.current_monitoring_case_no_table_1;
    }
    else {
      resolved.current_monitoring_case_no_table_1 = 0
    }

    if (msg.current_monitoring_case_no_table_2 !== undefined) {
      resolved.current_monitoring_case_no_table_2 = msg.current_monitoring_case_no_table_2;
    }
    else {
      resolved.current_monitoring_case_no_table_2 = 0
    }

    if (msg.current_monitoring_case_no_table_3 !== undefined) {
      resolved.current_monitoring_case_no_table_3 = msg.current_monitoring_case_no_table_3;
    }
    else {
      resolved.current_monitoring_case_no_table_3 = 0
    }

    if (msg.current_monitoring_case_no_table_4 !== undefined) {
      resolved.current_monitoring_case_no_table_4 = msg.current_monitoring_case_no_table_4;
    }
    else {
      resolved.current_monitoring_case_no_table_4 = 0
    }

    if (msg.application_error !== undefined) {
      resolved.application_error = msg.application_error;
    }
    else {
      resolved.application_error = false
    }

    if (msg.device_error !== undefined) {
      resolved.device_error = msg.device_error;
    }
    else {
      resolved.device_error = false
    }

    return resolved;
    }
};

module.exports = GeneralSystemStateMsg;
