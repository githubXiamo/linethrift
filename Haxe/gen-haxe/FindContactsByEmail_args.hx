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


class FindContactsByEmail_args implements TBase {
  
  static var STRUCT_DESC = { new TStruct("findContactsByEmail_args"); };
  static var EMAILS_FIELD_DESC = { new TField("emails", TType.SET, 2); };

  @:isVar
  public var emails(get,set) : StringSet;

  inline static var EMAILS_FIELD_ID : Int = 2;


  public function new() {
  }

  public function get_emails() : StringSet {
    return this.emails;
  }

  public function set_emails(emails:StringSet) : StringSet {
    this.emails = emails;
    return this.emails;
  }

  public function unsetEmails() : Void {
    this.emails = null;
  }

  // Returns true if field emails is set (has been assigned a value) and false otherwise
  public function isSetEmails() : Bool {
    return this.emails != null;
  }

  public function setFieldValue(fieldID : Int, value : Dynamic) : Void {
    switch (fieldID) {
    case EMAILS_FIELD_ID:
      if (value == null) {
        unsetEmails();
      } else {
        this.emails = value;
      }

    default:
      throw new ArgumentError("Field " + fieldID + " doesn't exist!");
    }
  }

  public function getFieldValue(fieldID : Int) : Dynamic {
    switch (fieldID) {
    case EMAILS_FIELD_ID:
      return this.emails;
    default:
      throw new ArgumentError("Field " + fieldID + " doesn't exist!");
    }
  }

  // Returns true if field corresponding to fieldID is set (has been assigned a value) and false otherwise
  public function isSet(fieldID : Int) : Bool {
    switch (fieldID) {
    case EMAILS_FIELD_ID:
      return isSetEmails();
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
          case EMAILS_FIELD_ID:
            if (field.type == TType.SET) {
              {
                var _set975 = iprot.readSetBegin();
                this.emails = new StringSet();
                for( _i976 in 0 ... _set975.size)
                {
                  var _elem977 : String;
                  _elem977 = iprot.readString();
                  this.emails.add(_elem977);
                }
                iprot.readSetEnd();
              }
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
      if (this.emails != null) {
        oprot.writeFieldBegin(EMAILS_FIELD_DESC);
        {
          oprot.writeSetBegin(new TSet(TType.STRING, this.emails.size));
          for( elem978 in this.emails.toArray())
          {
            oprot.writeString(elem978);
          }
          oprot.writeSetEnd();
        }
        oprot.writeFieldEnd();
      }
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
    var ret : String = "findContactsByEmail_args(";
    var first : Bool = true;

    ret += "emails:";
    if (this.emails == null) {
      ret += "null";
    } else {
      ret += this.emails;
    }
    first = false;
    ret += ")";
    return ret;
  }

  public function validate() : Void {
    // check for required fields
    // check that fields of type enum have valid values
  }

}
