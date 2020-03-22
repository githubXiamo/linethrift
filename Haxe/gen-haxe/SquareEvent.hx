/**
 * Autogenerated by Thrift Compiler (0.14.0)
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 *  @generated
 */
package;

import org.apache.thrift.helper.*;
import haxe.io.Bytes;
import haxe.ds.IntMap;
import haxe.ds.StringMap;
import haxe.ds.ObjectMap;

#if flash
import flash.errors.ArgumentError;
#end

import org.apache.thrift.*;
import org.apache.thrift.meta_data.*;
import org.apache.thrift.protocol.*;


class SquareEvent implements TBase {
  
  static var STRUCT_DESC = { new TStruct("SquareEvent"); };
  static var CREATED_TIME_FIELD_DESC = { new TField("createdTime", TType.I64, 2); };
  static var TYPE_FIELD_DESC = { new TField("type", TType.I32, 3); };
  static var PAYLOAD_FIELD_DESC = { new TField("payload", TType.STRUCT, 4); };
  static var SYNC_TOKEN_FIELD_DESC = { new TField("syncToken", TType.STRING, 5); };
  static var EVENT_STATUS_FIELD_DESC = { new TField("eventStatus", TType.I32, 6); };

  @:isVar
  public var createdTime(get,set) : haxe.Int64;
  @:isVar
  public var type(get,set) : Int;
  @:isVar
  public var payload(get,set) : SquareEventPayload;
  @:isVar
  public var syncToken(get,set) : String;
  @:isVar
  public var eventStatus(get,set) : Int;

  inline static var CREATEDTIME_FIELD_ID : Int = 2;
  inline static var TYPE_FIELD_ID : Int = 3;
  inline static var PAYLOAD_FIELD_ID : Int = 4;
  inline static var SYNCTOKEN_FIELD_ID : Int = 5;
  inline static var EVENTSTATUS_FIELD_ID : Int = 6;

  private var __isset_createdTime : Bool = false;
  private var __isset_type : Bool = false;
  private var __isset_eventStatus : Bool = false;

  public function new() {
  }

  public function get_createdTime() : haxe.Int64 {
    return this.createdTime;
  }

  public function set_createdTime(createdTime:haxe.Int64) : haxe.Int64 {
    this.createdTime = createdTime;
    this.__isset_createdTime = true;
    return this.createdTime;
  }

  public function unsetCreatedTime() : Void {
    this.__isset_createdTime = false;
  }

  // Returns true if field createdTime is set (has been assigned a value) and false otherwise
  public function isSetCreatedTime() : Bool {
    return this.__isset_createdTime;
  }

  public function get_type() : Int {
    return this.type;
  }

  public function set_type(type:Int) : Int {
    this.type = type;
    this.__isset_type = true;
    return this.type;
  }

  public function unsetType() : Void {
    this.__isset_type = false;
  }

  // Returns true if field type is set (has been assigned a value) and false otherwise
  public function isSetType() : Bool {
    return this.__isset_type;
  }

  public function get_payload() : SquareEventPayload {
    return this.payload;
  }

  public function set_payload(payload:SquareEventPayload) : SquareEventPayload {
    this.payload = payload;
    return this.payload;
  }

  public function unsetPayload() : Void {
    this.payload = null;
  }

  // Returns true if field payload is set (has been assigned a value) and false otherwise
  public function isSetPayload() : Bool {
    return this.payload != null;
  }

  public function get_syncToken() : String {
    return this.syncToken;
  }

  public function set_syncToken(syncToken:String) : String {
    this.syncToken = syncToken;
    return this.syncToken;
  }

  public function unsetSyncToken() : Void {
    this.syncToken = null;
  }

  // Returns true if field syncToken is set (has been assigned a value) and false otherwise
  public function isSetSyncToken() : Bool {
    return this.syncToken != null;
  }

  public function get_eventStatus() : Int {
    return this.eventStatus;
  }

  public function set_eventStatus(eventStatus:Int) : Int {
    this.eventStatus = eventStatus;
    this.__isset_eventStatus = true;
    return this.eventStatus;
  }

  public function unsetEventStatus() : Void {
    this.__isset_eventStatus = false;
  }

  // Returns true if field eventStatus is set (has been assigned a value) and false otherwise
  public function isSetEventStatus() : Bool {
    return this.__isset_eventStatus;
  }

  public function setFieldValue(fieldID : Int, value : Dynamic) : Void {
    switch (fieldID) {
    case CREATEDTIME_FIELD_ID:
      if (value == null) {
        unsetCreatedTime();
      } else {
        this.createdTime = value;
      }

    case TYPE_FIELD_ID:
      if (value == null) {
        unsetType();
      } else {
        this.type = value;
      }

    case PAYLOAD_FIELD_ID:
      if (value == null) {
        unsetPayload();
      } else {
        this.payload = value;
      }

    case SYNCTOKEN_FIELD_ID:
      if (value == null) {
        unsetSyncToken();
      } else {
        this.syncToken = value;
      }

    case EVENTSTATUS_FIELD_ID:
      if (value == null) {
        unsetEventStatus();
      } else {
        this.eventStatus = value;
      }

    default:
      throw new ArgumentError("Field " + fieldID + " doesn't exist!");
    }
  }

  public function getFieldValue(fieldID : Int) : Dynamic {
    switch (fieldID) {
    case CREATEDTIME_FIELD_ID:
      return this.createdTime;
    case TYPE_FIELD_ID:
      return this.type;
    case PAYLOAD_FIELD_ID:
      return this.payload;
    case SYNCTOKEN_FIELD_ID:
      return this.syncToken;
    case EVENTSTATUS_FIELD_ID:
      return this.eventStatus;
    default:
      throw new ArgumentError("Field " + fieldID + " doesn't exist!");
    }
  }

  // Returns true if field corresponding to fieldID is set (has been assigned a value) and false otherwise
  public function isSet(fieldID : Int) : Bool {
    switch (fieldID) {
    case CREATEDTIME_FIELD_ID:
      return isSetCreatedTime();
    case TYPE_FIELD_ID:
      return isSetType();
    case PAYLOAD_FIELD_ID:
      return isSetPayload();
    case SYNCTOKEN_FIELD_ID:
      return isSetSyncToken();
    case EVENTSTATUS_FIELD_ID:
      return isSetEventStatus();
    default:
      throw new ArgumentError("Field " + fieldID + " doesn't exist!");
    }
  }

  public function read( iprot : TProtocol) : Void {
    iprot.IncrementRecursionDepth();
    try
    {
      var field : TField;
      iprot.readStructBegin();
      while (true)
      {
        field = iprot.readFieldBegin();
        if (field.type == TType.STOP) { 
          break;
        }
        switch (field.id)
        {
          case CREATEDTIME_FIELD_ID:
            if (field.type == TType.I64) {
              this.createdTime = iprot.readI64();
              this.__isset_createdTime = true;
            } else { 
              TProtocolUtil.skip(iprot, field.type);
            }
          case TYPE_FIELD_ID:
            if (field.type == TType.I32) {
              this.type = iprot.readI32();
              this.__isset_type = true;
            } else { 
              TProtocolUtil.skip(iprot, field.type);
            }
          case PAYLOAD_FIELD_ID:
            if (field.type == TType.STRUCT) {
              this.payload = new SquareEventPayload();
              this.payload.read(iprot);
            } else { 
              TProtocolUtil.skip(iprot, field.type);
            }
          case SYNCTOKEN_FIELD_ID:
            if (field.type == TType.STRING) {
              this.syncToken = iprot.readString();
            } else { 
              TProtocolUtil.skip(iprot, field.type);
            }
          case EVENTSTATUS_FIELD_ID:
            if (field.type == TType.I32) {
              this.eventStatus = iprot.readI32();
              this.__isset_eventStatus = true;
            } else { 
              TProtocolUtil.skip(iprot, field.type);
            }
          default:
            TProtocolUtil.skip(iprot, field.type);
        }
        iprot.readFieldEnd();
      }
      iprot.readStructEnd();

      iprot.DecrementRecursionDepth();
    }
    catch(e:Dynamic)
    {
      iprot.DecrementRecursionDepth();
      throw e;
    }

    // check for required fields of primitive type, which can't be checked in the validate method
    validate();
  }

  public function write(oprot:TProtocol) : Void {
    validate();
    oprot.IncrementRecursionDepth();
    try
    {
      oprot.writeStructBegin(STRUCT_DESC);
      oprot.writeFieldBegin(CREATED_TIME_FIELD_DESC);
      oprot.writeI64(this.createdTime);
      oprot.writeFieldEnd();
      oprot.writeFieldBegin(TYPE_FIELD_DESC);
      oprot.writeI32(this.type);
      oprot.writeFieldEnd();
      if (this.payload != null) {
        oprot.writeFieldBegin(PAYLOAD_FIELD_DESC);
        this.payload.write(oprot);
        oprot.writeFieldEnd();
      }
      if (this.syncToken != null) {
        oprot.writeFieldBegin(SYNC_TOKEN_FIELD_DESC);
        oprot.writeString(this.syncToken);
        oprot.writeFieldEnd();
      }
      oprot.writeFieldBegin(EVENT_STATUS_FIELD_DESC);
      oprot.writeI32(this.eventStatus);
      oprot.writeFieldEnd();
      oprot.writeFieldStop();
      oprot.writeStructEnd();
      oprot.DecrementRecursionDepth();
    }
    catch(e:Dynamic)
    {
      oprot.DecrementRecursionDepth();
      throw e;
    }
  }

  public function toString() : String {
    var ret : String = "SquareEvent(";
    var first : Bool = true;

    ret += "createdTime:";
    ret += this.createdTime;
    first = false;
    if (!first) ret +=  ", ";
    ret += "type:";
    var type_name : String = .SquareEventType.VALUES_TO_NAMES[this.type];
    if (type_name != null) {
      ret += type_name;
      ret += " (";
    }
    ret += this.type;
    if (type_name != null) {
      ret += ")";
    }
    first = false;
    if (!first) ret +=  ", ";
    ret += "payload:";
    if (this.payload == null) {
      ret += "null";
    } else {
      ret += this.payload;
    }
    first = false;
    if (!first) ret +=  ", ";
    ret += "syncToken:";
    if (this.syncToken == null) {
      ret += "null";
    } else {
      ret += this.syncToken;
    }
    first = false;
    if (!first) ret +=  ", ";
    ret += "eventStatus:";
    var eventStatus_name : String = .SquareEventStatus.VALUES_TO_NAMES[this.eventStatus];
    if (eventStatus_name != null) {
      ret += eventStatus_name;
      ret += " (";
    }
    ret += this.eventStatus;
    if (eventStatus_name != null) {
      ret += ")";
    }
    first = false;
    ret += ")";
    return ret;
  }

  public function validate() : Void {
    // check for required fields
    // check that fields of type enum have valid values
    if (isSetType() && !.SquareEventType.VALID_VALUES.contains(type)){
      throw new TProtocolException(TProtocolException.UNKNOWN, "The field 'type' has been assigned the invalid value " + type);
    }
    if (isSetEventStatus() && !.SquareEventStatus.VALID_VALUES.contains(eventStatus)){
      throw new TProtocolException(TProtocolException.UNKNOWN, "The field 'eventStatus' has been assigned the invalid value " + eventStatus);
    }
  }

}
