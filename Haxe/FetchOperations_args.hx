/**
 * Autogenerated by Thrift Compiler (0.11.0)
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


class FetchOperations_args implements TBase {
  
  static var STRUCT_DESC = { new TStruct("fetchOperations_args"); };
  static var LOCAL_REV_FIELD_DESC = { new TField("localRev", TType.I64, 2); };
  static var COUNT_FIELD_DESC = { new TField("count", TType.I32, 3); };

  @:isVar
  public var localRev(get,set) : haxe.Int64;
  @:isVar
  public var count(get,set) : haxe.Int32;

  inline static var LOCALREV_FIELD_ID : Int = 2;
  inline static var COUNT_FIELD_ID : Int = 3;

  private var __isset_localRev : Bool = false;
  private var __isset_count : Bool = false;

  public function new() {
  }

  public function get_localRev() : haxe.Int64 {
    return this.localRev;
  }

  public function set_localRev(localRev:haxe.Int64) : haxe.Int64 {
    this.localRev = localRev;
    this.__isset_localRev = true;
    return this.localRev;
  }

  public function unsetLocalRev() : Void {
    this.__isset_localRev = false;
  }

  // Returns true if field localRev is set (has been assigned a value) and false otherwise
  public function isSetLocalRev() : Bool {
    return this.__isset_localRev;
  }

  public function get_count() : haxe.Int32 {
    return this.count;
  }

  public function set_count(count:haxe.Int32) : haxe.Int32 {
    this.count = count;
    this.__isset_count = true;
    return this.count;
  }

  public function unsetCount() : Void {
    this.__isset_count = false;
  }

  // Returns true if field count is set (has been assigned a value) and false otherwise
  public function isSetCount() : Bool {
    return this.__isset_count;
  }

  public function setFieldValue(fieldID : Int, value : Dynamic) : Void {
    switch (fieldID) {
    case LOCALREV_FIELD_ID:
      if (value == null) {
        unsetLocalRev();
      } else {
        this.localRev = value;
      }

    case COUNT_FIELD_ID:
      if (value == null) {
        unsetCount();
      } else {
        this.count = value;
      }

    default:
      throw new ArgumentError("Field " + fieldID + " doesn't exist!");
    }
  }

  public function getFieldValue(fieldID : Int) : Dynamic {
    switch (fieldID) {
    case LOCALREV_FIELD_ID:
      return this.localRev;
    case COUNT_FIELD_ID:
      return this.count;
    default:
      throw new ArgumentError("Field " + fieldID + " doesn't exist!");
    }
  }

  // Returns true if field corresponding to fieldID is set (has been assigned a value) and false otherwise
  public function isSet(fieldID : Int) : Bool {
    switch (fieldID) {
    case LOCALREV_FIELD_ID:
      return isSetLocalRev();
    case COUNT_FIELD_ID:
      return isSetCount();
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
          case LOCALREV_FIELD_ID:
            if (field.type == TType.I64) {
              this.localRev = iprot.readI64();
              this.__isset_localRev = true;
            } else { 
              TProtocolUtil.skip(iprot, field.type);
            }
          case COUNT_FIELD_ID:
            if (field.type == TType.I32) {
              this.count = iprot.readI32();
              this.__isset_count = true;
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
      oprot.writeFieldBegin(LOCAL_REV_FIELD_DESC);
      oprot.writeI64(this.localRev);
      oprot.writeFieldEnd();
      oprot.writeFieldBegin(COUNT_FIELD_DESC);
      oprot.writeI32(this.count);
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
    var ret : String = "fetchOperations_args(";
    var first : Bool = true;

    ret += "localRev:";
    ret += this.localRev;
    first = false;
    if (!first) ret +=  ", ";
    ret += "count:";
    ret += this.count;
    first = false;
    ret += ")";
    return ret;
  }

  public function validate() : Void {
    // check for required fields
    // check that fields of type enum have valid values
  }

}
