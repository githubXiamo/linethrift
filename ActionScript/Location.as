/**
 * Autogenerated by Thrift Compiler (0.14.0)
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 *  @generated
 */
package {

import org.apache.thrift.Set;
import flash.utils.ByteArray;
import flash.utils.Dictionary;

import org.apache.thrift.*;
import org.apache.thrift.meta_data.*;
import org.apache.thrift.protocol.*;


  public class Location implements TBase   {
    private static const STRUCT_DESC:TStruct = new TStruct("Location");
    private static const TITLE_FIELD_DESC:TField = new TField("title", TType.STRING, 1);
    private static const ADDRESS_FIELD_DESC:TField = new TField("address", TType.STRING, 2);
    private static const LATITUDE_FIELD_DESC:TField = new TField("latitude", TType.DOUBLE, 3);
    private static const LONGITUDE_FIELD_DESC:TField = new TField("longitude", TType.DOUBLE, 4);
    private static const PHONE_FIELD_DESC:TField = new TField("phone", TType.STRING, 5);

    private var _title:String;
    public static const TITLE:int = 1;
    private var _address:String;
    public static const ADDRESS:int = 2;
    private var _latitude:Number;
    public static const LATITUDE:int = 3;
    private var _longitude:Number;
    public static const LONGITUDE:int = 4;
    private var _phone:String;
    public static const PHONE:int = 5;

    private var __isset_latitude:Boolean = false;
    private var __isset_longitude:Boolean = false;

    public static const metaDataMap:Dictionary = new Dictionary();
    {
      metaDataMap[TITLE] = new FieldMetaData("title", TFieldRequirementType.DEFAULT, 
          new FieldValueMetaData(TType.STRING));
      metaDataMap[ADDRESS] = new FieldMetaData("address", TFieldRequirementType.DEFAULT, 
          new FieldValueMetaData(TType.STRING));
      metaDataMap[LATITUDE] = new FieldMetaData("latitude", TFieldRequirementType.DEFAULT, 
          new FieldValueMetaData(TType.DOUBLE));
      metaDataMap[LONGITUDE] = new FieldMetaData("longitude", TFieldRequirementType.DEFAULT, 
          new FieldValueMetaData(TType.DOUBLE));
      metaDataMap[PHONE] = new FieldMetaData("phone", TFieldRequirementType.DEFAULT, 
          new FieldValueMetaData(TType.STRING));
    }
    {
      FieldMetaData.addStructMetaDataMap(Location, metaDataMap);
    }

    public function Location() {
    }

    public function get title():String {
      return this._title;
    }

    public function set title(title:String):void {
      this._title = title;
    }

    public function unsetTitle():void {
      this.title = null;
    }

    // Returns true if field title is set (has been assigned a value) and false otherwise
    public function isSetTitle():Boolean {
      return this.title != null;
    }

    public function get address():String {
      return this._address;
    }

    public function set address(address:String):void {
      this._address = address;
    }

    public function unsetAddress():void {
      this.address = null;
    }

    // Returns true if field address is set (has been assigned a value) and false otherwise
    public function isSetAddress():Boolean {
      return this.address != null;
    }

    public function get latitude():Number {
      return this._latitude;
    }

    public function set latitude(latitude:Number):void {
      this._latitude = latitude;
      this.__isset_latitude = true;
    }

    public function unsetLatitude():void {
      this.__isset_latitude = false;
    }

    // Returns true if field latitude is set (has been assigned a value) and false otherwise
    public function isSetLatitude():Boolean {
      return this.__isset_latitude;
    }

    public function get longitude():Number {
      return this._longitude;
    }

    public function set longitude(longitude:Number):void {
      this._longitude = longitude;
      this.__isset_longitude = true;
    }

    public function unsetLongitude():void {
      this.__isset_longitude = false;
    }

    // Returns true if field longitude is set (has been assigned a value) and false otherwise
    public function isSetLongitude():Boolean {
      return this.__isset_longitude;
    }

    public function get phone():String {
      return this._phone;
    }

    public function set phone(phone:String):void {
      this._phone = phone;
    }

    public function unsetPhone():void {
      this.phone = null;
    }

    // Returns true if field phone is set (has been assigned a value) and false otherwise
    public function isSetPhone():Boolean {
      return this.phone != null;
    }

    public function setFieldValue(fieldID:int, value:*):void {
      switch (fieldID) {
      case TITLE:
        if (value == null) {
          unsetTitle();
        } else {
          this.title = value;
        }
        break;

      case ADDRESS:
        if (value == null) {
          unsetAddress();
        } else {
          this.address = value;
        }
        break;

      case LATITUDE:
        if (value == null) {
          unsetLatitude();
        } else {
          this.latitude = value;
        }
        break;

      case LONGITUDE:
        if (value == null) {
          unsetLongitude();
        } else {
          this.longitude = value;
        }
        break;

      case PHONE:
        if (value == null) {
          unsetPhone();
        } else {
          this.phone = value;
        }
        break;

      default:
        throw new ArgumentError("Field " + fieldID + " doesn't exist!");
      }
    }

    public function getFieldValue(fieldID:int):* {
      switch (fieldID) {
      case TITLE:
        return this.title;
      case ADDRESS:
        return this.address;
      case LATITUDE:
        return this.latitude;
      case LONGITUDE:
        return this.longitude;
      case PHONE:
        return this.phone;
      default:
        throw new ArgumentError("Field " + fieldID + " doesn't exist!");
      }
    }

    // Returns true if field corresponding to fieldID is set (has been assigned a value) and false otherwise
    public function isSet(fieldID:int):Boolean {
      switch (fieldID) {
      case TITLE:
        return isSetTitle();
      case ADDRESS:
        return isSetAddress();
      case LATITUDE:
        return isSetLatitude();
      case LONGITUDE:
        return isSetLongitude();
      case PHONE:
        return isSetPhone();
      default:
        throw new ArgumentError("Field " + fieldID + " doesn't exist!");
      }
    }

    public function read(iprot:TProtocol):void {
      var field:TField;
      iprot.readStructBegin();
      while (true)
      {
        field = iprot.readFieldBegin();
        if (field.type == TType.STOP) { 
          break;
        }
        switch (field.id)
        {
          case TITLE:
            if (field.type == TType.STRING) {
              this.title = iprot.readString();
            } else { 
              TProtocolUtil.skip(iprot, field.type);
            }
            break;
          case ADDRESS:
            if (field.type == TType.STRING) {
              this.address = iprot.readString();
            } else { 
              TProtocolUtil.skip(iprot, field.type);
            }
            break;
          case LATITUDE:
            if (field.type == TType.DOUBLE) {
              this.latitude = iprot.readDouble();
              this.__isset_latitude = true;
            } else { 
              TProtocolUtil.skip(iprot, field.type);
            }
            break;
          case LONGITUDE:
            if (field.type == TType.DOUBLE) {
              this.longitude = iprot.readDouble();
              this.__isset_longitude = true;
            } else { 
              TProtocolUtil.skip(iprot, field.type);
            }
            break;
          case PHONE:
            if (field.type == TType.STRING) {
              this.phone = iprot.readString();
            } else { 
              TProtocolUtil.skip(iprot, field.type);
            }
            break;
          default:
            TProtocolUtil.skip(iprot, field.type);
            break;
        }
        iprot.readFieldEnd();
      }
      iprot.readStructEnd();


      // check for required fields of primitive type, which can't be checked in the validate method
      validate();
    }

    public function write(oprot:TProtocol):void {
      validate();

      oprot.writeStructBegin(STRUCT_DESC);
      if (this.title != null) {
        oprot.writeFieldBegin(TITLE_FIELD_DESC);
        oprot.writeString(this.title);
        oprot.writeFieldEnd();
      }
      if (this.address != null) {
        oprot.writeFieldBegin(ADDRESS_FIELD_DESC);
        oprot.writeString(this.address);
        oprot.writeFieldEnd();
      }
      oprot.writeFieldBegin(LATITUDE_FIELD_DESC);
      oprot.writeDouble(this.latitude);
      oprot.writeFieldEnd();
      oprot.writeFieldBegin(LONGITUDE_FIELD_DESC);
      oprot.writeDouble(this.longitude);
      oprot.writeFieldEnd();
      if (this.phone != null) {
        oprot.writeFieldBegin(PHONE_FIELD_DESC);
        oprot.writeString(this.phone);
        oprot.writeFieldEnd();
      }
      oprot.writeFieldStop();
      oprot.writeStructEnd();
    }

    public function toString():String {
      var ret:String = new String("Location(");
      var first:Boolean = true;

      ret += "title:";
      if (this.title == null) {
        ret += "null";
      } else {
        ret += this.title;
      }
      first = false;
      if (!first) ret +=  ", ";
      ret += "address:";
      if (this.address == null) {
        ret += "null";
      } else {
        ret += this.address;
      }
      first = false;
      if (!first) ret +=  ", ";
      ret += "latitude:";
      ret += this.latitude;
      first = false;
      if (!first) ret +=  ", ";
      ret += "longitude:";
      ret += this.longitude;
      first = false;
      if (!first) ret +=  ", ";
      ret += "phone:";
      if (this.phone == null) {
        ret += "null";
      } else {
        ret += this.phone;
      }
      first = false;
      ret += ")";
      return ret;
    }

    public function validate():void {
      // check for required fields
      // check that fields of type enum have valid values
    }

  }

}
