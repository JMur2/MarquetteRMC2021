// Auto-generated. Do not edit!

// (in-package sick_safetyscanners.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let DataHeaderMsg = require('./DataHeaderMsg.js');
let DerivedValuesMsg = require('./DerivedValuesMsg.js');
let GeneralSystemStateMsg = require('./GeneralSystemStateMsg.js');
let MeasurementDataMsg = require('./MeasurementDataMsg.js');
let IntrusionDataMsg = require('./IntrusionDataMsg.js');
let ApplicationDataMsg = require('./ApplicationDataMsg.js');

//-----------------------------------------------------------

class RawMicroScanDataMsg {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.derived_values = null;
      this.general_system_state = null;
      this.measurement_data = null;
      this.intrusion_data = null;
      this.application_data = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new DataHeaderMsg();
      }
      if (initObj.hasOwnProperty('derived_values')) {
        this.derived_values = initObj.derived_values
      }
      else {
        this.derived_values = new DerivedValuesMsg();
      }
      if (initObj.hasOwnProperty('general_system_state')) {
        this.general_system_state = initObj.general_system_state
      }
      else {
        this.general_system_state = new GeneralSystemStateMsg();
      }
      if (initObj.hasOwnProperty('measurement_data')) {
        this.measurement_data = initObj.measurement_data
      }
      else {
        this.measurement_data = new MeasurementDataMsg();
      }
      if (initObj.hasOwnProperty('intrusion_data')) {
        this.intrusion_data = initObj.intrusion_data
      }
      else {
        this.intrusion_data = new IntrusionDataMsg();
      }
      if (initObj.hasOwnProperty('application_data')) {
        this.application_data = initObj.application_data
      }
      else {
        this.application_data = new ApplicationDataMsg();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RawMicroScanDataMsg
    // Serialize message field [header]
    bufferOffset = DataHeaderMsg.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [derived_values]
    bufferOffset = DerivedValuesMsg.serialize(obj.derived_values, buffer, bufferOffset);
    // Serialize message field [general_system_state]
    bufferOffset = GeneralSystemStateMsg.serialize(obj.general_system_state, buffer, bufferOffset);
    // Serialize message field [measurement_data]
    bufferOffset = MeasurementDataMsg.serialize(obj.measurement_data, buffer, bufferOffset);
    // Serialize message field [intrusion_data]
    bufferOffset = IntrusionDataMsg.serialize(obj.intrusion_data, buffer, bufferOffset);
    // Serialize message field [application_data]
    bufferOffset = ApplicationDataMsg.serialize(obj.application_data, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RawMicroScanDataMsg
    let len;
    let data = new RawMicroScanDataMsg(null);
    // Deserialize message field [header]
    data.header = DataHeaderMsg.deserialize(buffer, bufferOffset);
    // Deserialize message field [derived_values]
    data.derived_values = DerivedValuesMsg.deserialize(buffer, bufferOffset);
    // Deserialize message field [general_system_state]
    data.general_system_state = GeneralSystemStateMsg.deserialize(buffer, bufferOffset);
    // Deserialize message field [measurement_data]
    data.measurement_data = MeasurementDataMsg.deserialize(buffer, bufferOffset);
    // Deserialize message field [intrusion_data]
    data.intrusion_data = IntrusionDataMsg.deserialize(buffer, bufferOffset);
    // Deserialize message field [application_data]
    data.application_data = ApplicationDataMsg.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += GeneralSystemStateMsg.getMessageSize(object.general_system_state);
    length += MeasurementDataMsg.getMessageSize(object.measurement_data);
    length += IntrusionDataMsg.getMessageSize(object.intrusion_data);
    length += ApplicationDataMsg.getMessageSize(object.application_data);
    return length + 45;
  }

  static datatype() {
    // Returns string type for a message object
    return 'sick_safetyscanners/RawMicroScanDataMsg';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5fc254cfba77c4b6406f3301d7d54b81';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    DataHeaderMsg header
    DerivedValuesMsg derived_values
    GeneralSystemStateMsg general_system_state
    MeasurementDataMsg measurement_data
    IntrusionDataMsg intrusion_data
    ApplicationDataMsg application_data
    
    ================================================================================
    MSG: sick_safetyscanners/DataHeaderMsg
    uint8 version_version
    uint8 version_major_version
    uint8 version_minor_version
    uint8 version_release
    
    uint32 serial_number_of_device
    uint32 serial_number_of_channel_plug
    uint8 channel_number
    
    uint32 sequence_number
    uint32 scan_number
    
    uint16 timestamp_date
    uint32 timestamp_time
    
    ================================================================================
    MSG: sick_safetyscanners/DerivedValuesMsg
    uint16 multiplication_factor
    uint16 number_of_beams
    uint16 scan_time
    float32 start_angle
    float32 angular_beam_resolution
    uint32 interbeam_period
    
    ================================================================================
    MSG: sick_safetyscanners/GeneralSystemStateMsg
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
    
    ================================================================================
    MSG: sick_safetyscanners/MeasurementDataMsg
    uint32 number_of_beams
    ScanPointMsg[] scan_points
    
    
    ================================================================================
    MSG: sick_safetyscanners/ScanPointMsg
    float32 angle
    uint16 distance
    uint8 reflectivity
    bool valid
    bool infinite
    bool glare
    bool reflector
    bool contamination
    bool contamination_warning
    
    ================================================================================
    MSG: sick_safetyscanners/IntrusionDataMsg
    IntrusionDatumMsg[] data
    
    ================================================================================
    MSG: sick_safetyscanners/IntrusionDatumMsg
    uint32 size
    bool[] flags
    
    ================================================================================
    MSG: sick_safetyscanners/ApplicationDataMsg
    ApplicationInputsMsg inputs
    ApplicationOutputsMsg outputs
    
    ================================================================================
    MSG: sick_safetyscanners/ApplicationInputsMsg
    bool[] unsafe_inputs_input_sources
    bool[] unsafe_inputs_flags
    
    uint16[] monitoring_case_number_inputs
    bool[] monitoring_case_number_inputs_flags
    
    int16 linear_velocity_inputs_velocity_0
    bool linear_velocity_inputs_velocity_0_valid
    bool linear_velocity_inputs_velocity_0_transmitted_safely
    
    int16 linear_velocity_inputs_velocity_1
    bool linear_velocity_inputs_velocity_1_valid
    bool linear_velocity_inputs_velocity_1_transmitted_safely
    
    uint8 sleep_mode_input
    
    
    ================================================================================
    MSG: sick_safetyscanners/ApplicationOutputsMsg
    bool[] evaluation_path_outputs_eval_out
    bool[] evaluation_path_outputs_is_safe
    bool[] evaluation_path_outputs_is_valid
    
    uint16[] monitoring_case_number_outputs 
    bool[] monitoring_case_number_outputs_flags
    
    uint8 sleep_mode_output
    bool sleep_mode_output_valid
    
    bool error_flag_contamination_warning
    bool error_flag_contamination_error
    bool error_flag_manipulation_error
    bool error_flag_glare
    bool error_flag_reference_contour_intruded
    bool error_flag_critical_error
    bool error_flags_are_valid
    
    
    int16 linear_velocity_outputs_velocity_0
    bool linear_velocity_outputs_velocity_0_valid
    bool linear_velocity_outputs_velocity_0_transmitted_safely
    
    int16 linear_velocity_outputs_velocity_1
    bool linear_velocity_outputs_velocity_1_valid
    bool linear_velocity_outputs_velocity_1_transmitted_safely
    
    int16[] resulting_velocity
    bool[] resulting_velocity_flags
    
     
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RawMicroScanDataMsg(null);
    if (msg.header !== undefined) {
      resolved.header = DataHeaderMsg.Resolve(msg.header)
    }
    else {
      resolved.header = new DataHeaderMsg()
    }

    if (msg.derived_values !== undefined) {
      resolved.derived_values = DerivedValuesMsg.Resolve(msg.derived_values)
    }
    else {
      resolved.derived_values = new DerivedValuesMsg()
    }

    if (msg.general_system_state !== undefined) {
      resolved.general_system_state = GeneralSystemStateMsg.Resolve(msg.general_system_state)
    }
    else {
      resolved.general_system_state = new GeneralSystemStateMsg()
    }

    if (msg.measurement_data !== undefined) {
      resolved.measurement_data = MeasurementDataMsg.Resolve(msg.measurement_data)
    }
    else {
      resolved.measurement_data = new MeasurementDataMsg()
    }

    if (msg.intrusion_data !== undefined) {
      resolved.intrusion_data = IntrusionDataMsg.Resolve(msg.intrusion_data)
    }
    else {
      resolved.intrusion_data = new IntrusionDataMsg()
    }

    if (msg.application_data !== undefined) {
      resolved.application_data = ApplicationDataMsg.Resolve(msg.application_data)
    }
    else {
      resolved.application_data = new ApplicationDataMsg()
    }

    return resolved;
    }
};

module.exports = RawMicroScanDataMsg;
