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


class UpdateSquareResponse implements TBase {
  
  static var STRUCT_DESC = { new TStruct("UpdateSquareResponse"); };
  static var UPDATED_ATTRS_FIELD_DESC = { new TField("updatedAttrs", TType.SET, 1); };
  static var SQUARE_FIELD_DESC = { new TField("square", TType.STRUCT, 2); };

  @:isVar
  public var updatedAttrs(get,set) : IntSet;
  @:isVar
  public var square(get,set) : Square;

  inline static var UPDATEDATTRS_FIELD_ID : Int = 1;
  inline static var SQUARE_FIELD_ID : Int = 2;


  public function new() {
  }

  public function get_updatedAttrs() : IntSet {
    return this.updatedAttrs;
  }

  public function set_updatedAttrs(updatedAttrs:IntSet) : IntSet {
    this.updatedAttrs = updatedAttrs;
    return this.updatedAttrs;
  }

  public function unsetUpdatedAttrs() : Void {
    this.updatedAttrs = null;
  }

  // Returns true if field updatedAttrs is set (has been assigned a value) and false otherwise
  public function isSetUpdatedAttrs() : Bool {
    return this.updatedAttrs != null;
  }

  public function get_square() : Square {
    return this.square;
  }

  public function set_square(square:Square) : Square {
    this.square = square;
    return this.square;
  }

  public function unsetSquare() : Void {
    this.square = null;
  }

  // Returns true if field square is set (has been assigned a value) and false otherwise
  public function isSetSquare() : Bool {
    return this.square != null;
  }

  public function setFieldValue(fieldID : Int, value : Dynamic) : Void {
    switch (fieldID) {
    case UPDATEDATTRS_FIELD_ID:
      if (value == null) {
        unsetUpdatedAttrs();
      } else {
        this.updatedAttrs = value;
      }

    case SQUARE_FIELD_ID:
      if (value == null) {
        unsetSquare();
      } else {
        this.square = value;
      }

    default:
      throw new ArgumentError("Field " + fieldID + " doesn't exist!");
    }
  }

  public function getFieldValue(fieldID : Int) : Dynamic {
    switch (fieldID) {
    case UPDATEDATTRS_FIELD_ID:
      return this.updatedAttrs;
    case SQUARE_FIELD_ID:
      return this.square;
    default:
      throw new ArgumentError("Field " + fieldID + " doesn't exist!");
    }
  }

  // Returns true if field corresponding to fieldID is set (has been assigned a value) and false otherwise
  public function isSet(fieldID : Int) : Bool {
    switch (fieldID) {
    case UPDATEDATTRS_FIELD_ID:
      return isSetUpdatedAttrs();
    case SQUARE_FIELD_ID:
      return isSetSquare();
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
          case UPDATEDATTRS_FIELD_ID:
            if (field.type == TType.SET) {
              {
                var _set422 = iprot.readSetBegin();
                this.updatedAttrs = new IntSet();
                for( _i423 in 0 ... _set422.size)
                {
                  var _elem424 : Int;
                  _elem424 = iprot.readI32();
                  this.updatedAttrs.add(_elem424);
                }
                iprot.readSetEnd();
              }
            } else { 
              TProtocolUtil.skip(iprot, field.type);
            }
          case SQUARE_FIELD_ID:
            if (field.type == TType.STRUCT) {
              this.square = new Square();
              this.square.read(iprot);
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
      if (this.updatedAttrs != null) {
        oprot.writeFieldBegin(UPDATED_ATTRS_FIELD_DESC);
        {
          oprot.writeSetBegin(new TSet(TType.I32, this.updatedAttrs.size));
          for( elem425 in this.updatedAttrs.toArray())
          {
            oprot.writeI32(elem425);
          }
          oprot.writeSetEnd();
        }
        oprot.writeFieldEnd();
      }
      if (this.square != null) {
        oprot.writeFieldBegin(SQUARE_FIELD_DESC);
        this.square.write(oprot);
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
    var ret : String = "UpdateSquareResponse(";
    var first : Bool = true;

    ret += "updatedAttrs:";
    if (this.updatedAttrs == null) {
      ret += "null";
    } else {
      ret += this.updatedAttrs;
    }
    first = false;
    if (!first) ret +=  ", ";
    ret += "square:";
    if (this.square == null) {
      ret += "null";
    } else {
      ret += this.square;
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

