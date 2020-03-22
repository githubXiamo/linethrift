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


class ContactModification implements TBase {
  
  static var STRUCT_DESC = { new TStruct("ContactModification"); };
  static var TYPE_FIELD_DESC = { new TField("type", TType.I32, 1); };
  static var LUID_FIELD_DESC = { new TField("luid", TType.STRING, 2); };
  static var PHONES_FIELD_DESC = { new TField("phones", TType.LIST, 11); };
  static var EMAILS_FIELD_DESC = { new TField("emails", TType.LIST, 12); };
  static var USERIDS_FIELD_DESC = { new TField("userids", TType.LIST, 13); };

  @:isVar
  public var type(get,set) : Int;
  @:isVar
  public var luid(get,set) : String;
  @:isVar
  public var phones(get,set) : List< String>;
  @:isVar
  public var emails(get,set) : List< String>;
  @:isVar
  public var userids(get,set) : List< String>;

  inline static var TYPE_FIELD_ID : Int = 1;
  inline static var LUID_FIELD_ID : Int = 2;
  inline static var PHONES_FIELD_ID : Int = 11;
  inline static var EMAILS_FIELD_ID : Int = 12;
  inline static var USERIDS_FIELD_ID : Int = 13;

  private var __isset_type : Bool = false;

  public function new() {
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

  public function get_luid() : String {
    return this.luid;
  }

  public function set_luid(luid:String) : String {
    this.luid = luid;
    return this.luid;
  }

  public function unsetLuid() : Void {
    this.luid = null;
  }

  // Returns true if field luid is set (has been assigned a value) and false otherwise
  public function isSetLuid() : Bool {
    return this.luid != null;
  }

  public function get_phones() : List< String> {
    return this.phones;
  }

  public function set_phones(phones:List< String>) : List< String> {
    this.phones = phones;
    return this.phones;
  }

  public function unsetPhones() : Void {
    this.phones = null;
  }

  // Returns true if field phones is set (has been assigned a value) and false otherwise
  public function isSetPhones() : Bool {
    return this.phones != null;
  }

  public function get_emails() : List< String> {
    return this.emails;
  }

  public function set_emails(emails:List< String>) : List< String> {
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

  public function get_userids() : List< String> {
    return this.userids;
  }

  public function set_userids(userids:List< String>) : List< String> {
    this.userids = userids;
    return this.userids;
  }

  public function unsetUserids() : Void {
    this.userids = null;
  }

  // Returns true if field userids is set (has been assigned a value) and false otherwise
  public function isSetUserids() : Bool {
    return this.userids != null;
  }

  public function setFieldValue(fieldID : Int, value : Dynamic) : Void {
    switch (fieldID) {
    case TYPE_FIELD_ID:
      if (value == null) {
        unsetType();
      } else {
        this.type = value;
      }

    case LUID_FIELD_ID:
      if (value == null) {
        unsetLuid();
      } else {
        this.luid = value;
      }

    case PHONES_FIELD_ID:
      if (value == null) {
        unsetPhones();
      } else {
        this.phones = value;
      }

    case EMAILS_FIELD_ID:
      if (value == null) {
        unsetEmails();
      } else {
        this.emails = value;
      }

    case USERIDS_FIELD_ID:
      if (value == null) {
        unsetUserids();
      } else {
        this.userids = value;
      }

    default:
      throw new ArgumentError("Field " + fieldID + " doesn't exist!");
    }
  }

  public function getFieldValue(fieldID : Int) : Dynamic {
    switch (fieldID) {
    case TYPE_FIELD_ID:
      return this.type;
    case LUID_FIELD_ID:
      return this.luid;
    case PHONES_FIELD_ID:
      return this.phones;
    case EMAILS_FIELD_ID:
      return this.emails;
    case USERIDS_FIELD_ID:
      return this.userids;
    default:
      throw new ArgumentError("Field " + fieldID + " doesn't exist!");
    }
  }

  // Returns true if field corresponding to fieldID is set (has been assigned a value) and false otherwise
  public function isSet(fieldID : Int) : Bool {
    switch (fieldID) {
    case TYPE_FIELD_ID:
      return isSetType();
    case LUID_FIELD_ID:
      return isSetLuid();
    case PHONES_FIELD_ID:
      return isSetPhones();
    case EMAILS_FIELD_ID:
      return isSetEmails();
    case USERIDS_FIELD_ID:
      return isSetUserids();
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
          case TYPE_FIELD_ID:
            if (field.type == TType.I32) {
              this.type = iprot.readI32();
              this.__isset_type = true;
            } else { 
              TProtocolUtil.skip(iprot, field.type);
            }
          case LUID_FIELD_ID:
            if (field.type == TType.STRING) {
              this.luid = iprot.readString();
            } else { 
              TProtocolUtil.skip(iprot, field.type);
            }
          case PHONES_FIELD_ID:
            if (field.type == TType.LIST) {
              {
                var _list123 = iprot.readListBegin();
                this.phones = new List< String>();
                for( _i124 in 0 ... _list123.size)
                {
                  var _elem125 : String;
                  _elem125 = iprot.readString();
                  this.phones.add(_elem125);
                }
                iprot.readListEnd();
              }
            } else { 
              TProtocolUtil.skip(iprot, field.type);
            }
          case EMAILS_FIELD_ID:
            if (field.type == TType.LIST) {
              {
                var _list126 = iprot.readListBegin();
                this.emails = new List< String>();
                for( _i127 in 0 ... _list126.size)
                {
                  var _elem128 : String;
                  _elem128 = iprot.readString();
                  this.emails.add(_elem128);
                }
                iprot.readListEnd();
              }
            } else { 
              TProtocolUtil.skip(iprot, field.type);
            }
          case USERIDS_FIELD_ID:
            if (field.type == TType.LIST) {
              {
                var _list129 = iprot.readListBegin();
                this.userids = new List< String>();
                for( _i130 in 0 ... _list129.size)
                {
                  var _elem131 : String;
                  _elem131 = iprot.readString();
                  this.userids.add(_elem131);
                }
                iprot.readListEnd();
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
      oprot.writeFieldBegin(TYPE_FIELD_DESC);
      oprot.writeI32(this.type);
      oprot.writeFieldEnd();
      if (this.luid != null) {
        oprot.writeFieldBegin(LUID_FIELD_DESC);
        oprot.writeString(this.luid);
        oprot.writeFieldEnd();
      }
      if (this.phones != null) {
        oprot.writeFieldBegin(PHONES_FIELD_DESC);
        {
          oprot.writeListBegin(new TList(TType.STRING, this.phones.length));
          for( elem132 in this.phones)
          {
            oprot.writeString(elem132);
          }
          oprot.writeListEnd();
        }
        oprot.writeFieldEnd();
      }
      if (this.emails != null) {
        oprot.writeFieldBegin(EMAILS_FIELD_DESC);
        {
          oprot.writeListBegin(new TList(TType.STRING, this.emails.length));
          for( elem133 in this.emails)
          {
            oprot.writeString(elem133);
          }
          oprot.writeListEnd();
        }
        oprot.writeFieldEnd();
      }
      if (this.userids != null) {
        oprot.writeFieldBegin(USERIDS_FIELD_DESC);
        {
          oprot.writeListBegin(new TList(TType.STRING, this.userids.length));
          for( elem134 in this.userids)
          {
            oprot.writeString(elem134);
          }
          oprot.writeListEnd();
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
    var ret : String = "ContactModification(";
    var first : Bool = true;

    ret += "type:";
    var type_name : String = .ModificationType.VALUES_TO_NAMES[this.type];
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
    ret += "luid:";
    if (this.luid == null) {
      ret += "null";
    } else {
      ret += this.luid;
    }
    first = false;
    if (!first) ret +=  ", ";
    ret += "phones:";
    if (this.phones == null) {
      ret += "null";
    } else {
      ret += this.phones;
    }
    first = false;
    if (!first) ret +=  ", ";
    ret += "emails:";
    if (this.emails == null) {
      ret += "null";
    } else {
      ret += this.emails;
    }
    first = false;
    if (!first) ret +=  ", ";
    ret += "userids:";
    if (this.userids == null) {
      ret += "null";
    } else {
      ret += this.userids;
    }
    first = false;
    ret += ")";
    return ret;
  }

  public function validate() : Void {
    // check for required fields
    // check that fields of type enum have valid values
    if (isSetType() && !.ModificationType.VALID_VALUES.contains(type)){
      throw new TProtocolException(TProtocolException.UNKNOWN, "The field 'type' has been assigned the invalid value " + type);
    }
  }

}
