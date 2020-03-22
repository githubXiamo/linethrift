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


class PaidCallDialing implements TBase {
  
  static var STRUCT_DESC = { new TStruct("PaidCallDialing"); };
  static var TYPE_FIELD_DESC = { new TField("type", TType.I32, 1); };
  static var DIALED_NUMBER_FIELD_DESC = { new TField("dialedNumber", TType.STRING, 2); };
  static var SERVICE_DOMAIN_FIELD_DESC = { new TField("serviceDomain", TType.STRING, 3); };
  static var PRODUCT_TYPE_FIELD_DESC = { new TField("productType", TType.I32, 4); };
  static var PRODUCT_NAME_FIELD_DESC = { new TField("productName", TType.STRING, 5); };
  static var MULTIPLE_PRODUCT_FIELD_DESC = { new TField("multipleProduct", TType.BOOL, 6); };
  static var CALLER_ID_STATUS_FIELD_DESC = { new TField("callerIdStatus", TType.I32, 7); };
  static var BALANCE_FIELD_DESC = { new TField("balance", TType.I32, 10); };
  static var UNIT_FIELD_DESC = { new TField("unit", TType.STRING, 11); };
  static var RATE_FIELD_DESC = { new TField("rate", TType.I32, 12); };
  static var DISPLAY_CODE_FIELD_DESC = { new TField("displayCode", TType.STRING, 13); };
  static var CALLED_NUMBER_FIELD_DESC = { new TField("calledNumber", TType.STRING, 14); };
  static var CALLEE_NATIONAL_NUMBER_FIELD_DESC = { new TField("calleeNationalNumber", TType.STRING, 15); };
  static var CALLEE_CALLING_CODE_FIELD_DESC = { new TField("calleeCallingCode", TType.STRING, 16); };
  static var RATE_DIVISION_FIELD_DESC = { new TField("rateDivision", TType.STRING, 17); };
  static var AD_MAX_MIN_FIELD_DESC = { new TField("adMaxMin", TType.I32, 20); };
  static var AD_REMAINS_FIELD_DESC = { new TField("adRemains", TType.I32, 21); };
  static var AD_SESSION_ID_FIELD_DESC = { new TField("adSessionId", TType.STRING, 22); };

  @:isVar
  public var type(get,set) : Int;
  @:isVar
  public var dialedNumber(get,set) : String;
  @:isVar
  public var serviceDomain(get,set) : String;
  @:isVar
  public var productType(get,set) : Int;
  @:isVar
  public var productName(get,set) : String;
  @:isVar
  public var multipleProduct(get,set) : Bool;
  @:isVar
  public var callerIdStatus(get,set) : Int;
  @:isVar
  public var balance(get,set) : haxe.Int32;
  @:isVar
  public var unit(get,set) : String;
  @:isVar
  public var rate(get,set) : haxe.Int32;
  @:isVar
  public var displayCode(get,set) : String;
  @:isVar
  public var calledNumber(get,set) : String;
  @:isVar
  public var calleeNationalNumber(get,set) : String;
  @:isVar
  public var calleeCallingCode(get,set) : String;
  @:isVar
  public var rateDivision(get,set) : String;
  @:isVar
  public var adMaxMin(get,set) : haxe.Int32;
  @:isVar
  public var adRemains(get,set) : haxe.Int32;
  @:isVar
  public var adSessionId(get,set) : String;

  inline static var TYPE_FIELD_ID : Int = 1;
  inline static var DIALEDNUMBER_FIELD_ID : Int = 2;
  inline static var SERVICEDOMAIN_FIELD_ID : Int = 3;
  inline static var PRODUCTTYPE_FIELD_ID : Int = 4;
  inline static var PRODUCTNAME_FIELD_ID : Int = 5;
  inline static var MULTIPLEPRODUCT_FIELD_ID : Int = 6;
  inline static var CALLERIDSTATUS_FIELD_ID : Int = 7;
  inline static var BALANCE_FIELD_ID : Int = 10;
  inline static var UNIT_FIELD_ID : Int = 11;
  inline static var RATE_FIELD_ID : Int = 12;
  inline static var DISPLAYCODE_FIELD_ID : Int = 13;
  inline static var CALLEDNUMBER_FIELD_ID : Int = 14;
  inline static var CALLEENATIONALNUMBER_FIELD_ID : Int = 15;
  inline static var CALLEECALLINGCODE_FIELD_ID : Int = 16;
  inline static var RATEDIVISION_FIELD_ID : Int = 17;
  inline static var ADMAXMIN_FIELD_ID : Int = 20;
  inline static var ADREMAINS_FIELD_ID : Int = 21;
  inline static var ADSESSIONID_FIELD_ID : Int = 22;

  private var __isset_type : Bool = false;
  private var __isset_productType : Bool = false;
  private var __isset_multipleProduct : Bool = false;
  private var __isset_callerIdStatus : Bool = false;
  private var __isset_balance : Bool = false;
  private var __isset_rate : Bool = false;
  private var __isset_adMaxMin : Bool = false;
  private var __isset_adRemains : Bool = false;

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

  public function get_dialedNumber() : String {
    return this.dialedNumber;
  }

  public function set_dialedNumber(dialedNumber:String) : String {
    this.dialedNumber = dialedNumber;
    return this.dialedNumber;
  }

  public function unsetDialedNumber() : Void {
    this.dialedNumber = null;
  }

  // Returns true if field dialedNumber is set (has been assigned a value) and false otherwise
  public function isSetDialedNumber() : Bool {
    return this.dialedNumber != null;
  }

  public function get_serviceDomain() : String {
    return this.serviceDomain;
  }

  public function set_serviceDomain(serviceDomain:String) : String {
    this.serviceDomain = serviceDomain;
    return this.serviceDomain;
  }

  public function unsetServiceDomain() : Void {
    this.serviceDomain = null;
  }

  // Returns true if field serviceDomain is set (has been assigned a value) and false otherwise
  public function isSetServiceDomain() : Bool {
    return this.serviceDomain != null;
  }

  public function get_productType() : Int {
    return this.productType;
  }

  public function set_productType(productType:Int) : Int {
    this.productType = productType;
    this.__isset_productType = true;
    return this.productType;
  }

  public function unsetProductType() : Void {
    this.__isset_productType = false;
  }

  // Returns true if field productType is set (has been assigned a value) and false otherwise
  public function isSetProductType() : Bool {
    return this.__isset_productType;
  }

  public function get_productName() : String {
    return this.productName;
  }

  public function set_productName(productName:String) : String {
    this.productName = productName;
    return this.productName;
  }

  public function unsetProductName() : Void {
    this.productName = null;
  }

  // Returns true if field productName is set (has been assigned a value) and false otherwise
  public function isSetProductName() : Bool {
    return this.productName != null;
  }

  public function get_multipleProduct() : Bool {
    return this.multipleProduct;
  }

  public function set_multipleProduct(multipleProduct:Bool) : Bool {
    this.multipleProduct = multipleProduct;
    this.__isset_multipleProduct = true;
    return this.multipleProduct;
  }

  public function unsetMultipleProduct() : Void {
    this.__isset_multipleProduct = false;
  }

  // Returns true if field multipleProduct is set (has been assigned a value) and false otherwise
  public function isSetMultipleProduct() : Bool {
    return this.__isset_multipleProduct;
  }

  public function get_callerIdStatus() : Int {
    return this.callerIdStatus;
  }

  public function set_callerIdStatus(callerIdStatus:Int) : Int {
    this.callerIdStatus = callerIdStatus;
    this.__isset_callerIdStatus = true;
    return this.callerIdStatus;
  }

  public function unsetCallerIdStatus() : Void {
    this.__isset_callerIdStatus = false;
  }

  // Returns true if field callerIdStatus is set (has been assigned a value) and false otherwise
  public function isSetCallerIdStatus() : Bool {
    return this.__isset_callerIdStatus;
  }

  public function get_balance() : haxe.Int32 {
    return this.balance;
  }

  public function set_balance(balance:haxe.Int32) : haxe.Int32 {
    this.balance = balance;
    this.__isset_balance = true;
    return this.balance;
  }

  public function unsetBalance() : Void {
    this.__isset_balance = false;
  }

  // Returns true if field balance is set (has been assigned a value) and false otherwise
  public function isSetBalance() : Bool {
    return this.__isset_balance;
  }

  public function get_unit() : String {
    return this.unit;
  }

  public function set_unit(unit:String) : String {
    this.unit = unit;
    return this.unit;
  }

  public function unsetUnit() : Void {
    this.unit = null;
  }

  // Returns true if field unit is set (has been assigned a value) and false otherwise
  public function isSetUnit() : Bool {
    return this.unit != null;
  }

  public function get_rate() : haxe.Int32 {
    return this.rate;
  }

  public function set_rate(rate:haxe.Int32) : haxe.Int32 {
    this.rate = rate;
    this.__isset_rate = true;
    return this.rate;
  }

  public function unsetRate() : Void {
    this.__isset_rate = false;
  }

  // Returns true if field rate is set (has been assigned a value) and false otherwise
  public function isSetRate() : Bool {
    return this.__isset_rate;
  }

  public function get_displayCode() : String {
    return this.displayCode;
  }

  public function set_displayCode(displayCode:String) : String {
    this.displayCode = displayCode;
    return this.displayCode;
  }

  public function unsetDisplayCode() : Void {
    this.displayCode = null;
  }

  // Returns true if field displayCode is set (has been assigned a value) and false otherwise
  public function isSetDisplayCode() : Bool {
    return this.displayCode != null;
  }

  public function get_calledNumber() : String {
    return this.calledNumber;
  }

  public function set_calledNumber(calledNumber:String) : String {
    this.calledNumber = calledNumber;
    return this.calledNumber;
  }

  public function unsetCalledNumber() : Void {
    this.calledNumber = null;
  }

  // Returns true if field calledNumber is set (has been assigned a value) and false otherwise
  public function isSetCalledNumber() : Bool {
    return this.calledNumber != null;
  }

  public function get_calleeNationalNumber() : String {
    return this.calleeNationalNumber;
  }

  public function set_calleeNationalNumber(calleeNationalNumber:String) : String {
    this.calleeNationalNumber = calleeNationalNumber;
    return this.calleeNationalNumber;
  }

  public function unsetCalleeNationalNumber() : Void {
    this.calleeNationalNumber = null;
  }

  // Returns true if field calleeNationalNumber is set (has been assigned a value) and false otherwise
  public function isSetCalleeNationalNumber() : Bool {
    return this.calleeNationalNumber != null;
  }

  public function get_calleeCallingCode() : String {
    return this.calleeCallingCode;
  }

  public function set_calleeCallingCode(calleeCallingCode:String) : String {
    this.calleeCallingCode = calleeCallingCode;
    return this.calleeCallingCode;
  }

  public function unsetCalleeCallingCode() : Void {
    this.calleeCallingCode = null;
  }

  // Returns true if field calleeCallingCode is set (has been assigned a value) and false otherwise
  public function isSetCalleeCallingCode() : Bool {
    return this.calleeCallingCode != null;
  }

  public function get_rateDivision() : String {
    return this.rateDivision;
  }

  public function set_rateDivision(rateDivision:String) : String {
    this.rateDivision = rateDivision;
    return this.rateDivision;
  }

  public function unsetRateDivision() : Void {
    this.rateDivision = null;
  }

  // Returns true if field rateDivision is set (has been assigned a value) and false otherwise
  public function isSetRateDivision() : Bool {
    return this.rateDivision != null;
  }

  public function get_adMaxMin() : haxe.Int32 {
    return this.adMaxMin;
  }

  public function set_adMaxMin(adMaxMin:haxe.Int32) : haxe.Int32 {
    this.adMaxMin = adMaxMin;
    this.__isset_adMaxMin = true;
    return this.adMaxMin;
  }

  public function unsetAdMaxMin() : Void {
    this.__isset_adMaxMin = false;
  }

  // Returns true if field adMaxMin is set (has been assigned a value) and false otherwise
  public function isSetAdMaxMin() : Bool {
    return this.__isset_adMaxMin;
  }

  public function get_adRemains() : haxe.Int32 {
    return this.adRemains;
  }

  public function set_adRemains(adRemains:haxe.Int32) : haxe.Int32 {
    this.adRemains = adRemains;
    this.__isset_adRemains = true;
    return this.adRemains;
  }

  public function unsetAdRemains() : Void {
    this.__isset_adRemains = false;
  }

  // Returns true if field adRemains is set (has been assigned a value) and false otherwise
  public function isSetAdRemains() : Bool {
    return this.__isset_adRemains;
  }

  public function get_adSessionId() : String {
    return this.adSessionId;
  }

  public function set_adSessionId(adSessionId:String) : String {
    this.adSessionId = adSessionId;
    return this.adSessionId;
  }

  public function unsetAdSessionId() : Void {
    this.adSessionId = null;
  }

  // Returns true if field adSessionId is set (has been assigned a value) and false otherwise
  public function isSetAdSessionId() : Bool {
    return this.adSessionId != null;
  }

  public function setFieldValue(fieldID : Int, value : Dynamic) : Void {
    switch (fieldID) {
    case TYPE_FIELD_ID:
      if (value == null) {
        unsetType();
      } else {
        this.type = value;
      }

    case DIALEDNUMBER_FIELD_ID:
      if (value == null) {
        unsetDialedNumber();
      } else {
        this.dialedNumber = value;
      }

    case SERVICEDOMAIN_FIELD_ID:
      if (value == null) {
        unsetServiceDomain();
      } else {
        this.serviceDomain = value;
      }

    case PRODUCTTYPE_FIELD_ID:
      if (value == null) {
        unsetProductType();
      } else {
        this.productType = value;
      }

    case PRODUCTNAME_FIELD_ID:
      if (value == null) {
        unsetProductName();
      } else {
        this.productName = value;
      }

    case MULTIPLEPRODUCT_FIELD_ID:
      if (value == null) {
        unsetMultipleProduct();
      } else {
        this.multipleProduct = value;
      }

    case CALLERIDSTATUS_FIELD_ID:
      if (value == null) {
        unsetCallerIdStatus();
      } else {
        this.callerIdStatus = value;
      }

    case BALANCE_FIELD_ID:
      if (value == null) {
        unsetBalance();
      } else {
        this.balance = value;
      }

    case UNIT_FIELD_ID:
      if (value == null) {
        unsetUnit();
      } else {
        this.unit = value;
      }

    case RATE_FIELD_ID:
      if (value == null) {
        unsetRate();
      } else {
        this.rate = value;
      }

    case DISPLAYCODE_FIELD_ID:
      if (value == null) {
        unsetDisplayCode();
      } else {
        this.displayCode = value;
      }

    case CALLEDNUMBER_FIELD_ID:
      if (value == null) {
        unsetCalledNumber();
      } else {
        this.calledNumber = value;
      }

    case CALLEENATIONALNUMBER_FIELD_ID:
      if (value == null) {
        unsetCalleeNationalNumber();
      } else {
        this.calleeNationalNumber = value;
      }

    case CALLEECALLINGCODE_FIELD_ID:
      if (value == null) {
        unsetCalleeCallingCode();
      } else {
        this.calleeCallingCode = value;
      }

    case RATEDIVISION_FIELD_ID:
      if (value == null) {
        unsetRateDivision();
      } else {
        this.rateDivision = value;
      }

    case ADMAXMIN_FIELD_ID:
      if (value == null) {
        unsetAdMaxMin();
      } else {
        this.adMaxMin = value;
      }

    case ADREMAINS_FIELD_ID:
      if (value == null) {
        unsetAdRemains();
      } else {
        this.adRemains = value;
      }

    case ADSESSIONID_FIELD_ID:
      if (value == null) {
        unsetAdSessionId();
      } else {
        this.adSessionId = value;
      }

    default:
      throw new ArgumentError("Field " + fieldID + " doesn't exist!");
    }
  }

  public function getFieldValue(fieldID : Int) : Dynamic {
    switch (fieldID) {
    case TYPE_FIELD_ID:
      return this.type;
    case DIALEDNUMBER_FIELD_ID:
      return this.dialedNumber;
    case SERVICEDOMAIN_FIELD_ID:
      return this.serviceDomain;
    case PRODUCTTYPE_FIELD_ID:
      return this.productType;
    case PRODUCTNAME_FIELD_ID:
      return this.productName;
    case MULTIPLEPRODUCT_FIELD_ID:
      return this.multipleProduct;
    case CALLERIDSTATUS_FIELD_ID:
      return this.callerIdStatus;
    case BALANCE_FIELD_ID:
      return this.balance;
    case UNIT_FIELD_ID:
      return this.unit;
    case RATE_FIELD_ID:
      return this.rate;
    case DISPLAYCODE_FIELD_ID:
      return this.displayCode;
    case CALLEDNUMBER_FIELD_ID:
      return this.calledNumber;
    case CALLEENATIONALNUMBER_FIELD_ID:
      return this.calleeNationalNumber;
    case CALLEECALLINGCODE_FIELD_ID:
      return this.calleeCallingCode;
    case RATEDIVISION_FIELD_ID:
      return this.rateDivision;
    case ADMAXMIN_FIELD_ID:
      return this.adMaxMin;
    case ADREMAINS_FIELD_ID:
      return this.adRemains;
    case ADSESSIONID_FIELD_ID:
      return this.adSessionId;
    default:
      throw new ArgumentError("Field " + fieldID + " doesn't exist!");
    }
  }

  // Returns true if field corresponding to fieldID is set (has been assigned a value) and false otherwise
  public function isSet(fieldID : Int) : Bool {
    switch (fieldID) {
    case TYPE_FIELD_ID:
      return isSetType();
    case DIALEDNUMBER_FIELD_ID:
      return isSetDialedNumber();
    case SERVICEDOMAIN_FIELD_ID:
      return isSetServiceDomain();
    case PRODUCTTYPE_FIELD_ID:
      return isSetProductType();
    case PRODUCTNAME_FIELD_ID:
      return isSetProductName();
    case MULTIPLEPRODUCT_FIELD_ID:
      return isSetMultipleProduct();
    case CALLERIDSTATUS_FIELD_ID:
      return isSetCallerIdStatus();
    case BALANCE_FIELD_ID:
      return isSetBalance();
    case UNIT_FIELD_ID:
      return isSetUnit();
    case RATE_FIELD_ID:
      return isSetRate();
    case DISPLAYCODE_FIELD_ID:
      return isSetDisplayCode();
    case CALLEDNUMBER_FIELD_ID:
      return isSetCalledNumber();
    case CALLEENATIONALNUMBER_FIELD_ID:
      return isSetCalleeNationalNumber();
    case CALLEECALLINGCODE_FIELD_ID:
      return isSetCalleeCallingCode();
    case RATEDIVISION_FIELD_ID:
      return isSetRateDivision();
    case ADMAXMIN_FIELD_ID:
      return isSetAdMaxMin();
    case ADREMAINS_FIELD_ID:
      return isSetAdRemains();
    case ADSESSIONID_FIELD_ID:
      return isSetAdSessionId();
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
          case DIALEDNUMBER_FIELD_ID:
            if (field.type == TType.STRING) {
              this.dialedNumber = iprot.readString();
            } else { 
              TProtocolUtil.skip(iprot, field.type);
            }
          case SERVICEDOMAIN_FIELD_ID:
            if (field.type == TType.STRING) {
              this.serviceDomain = iprot.readString();
            } else { 
              TProtocolUtil.skip(iprot, field.type);
            }
          case PRODUCTTYPE_FIELD_ID:
            if (field.type == TType.I32) {
              this.productType = iprot.readI32();
              this.__isset_productType = true;
            } else { 
              TProtocolUtil.skip(iprot, field.type);
            }
          case PRODUCTNAME_FIELD_ID:
            if (field.type == TType.STRING) {
              this.productName = iprot.readString();
            } else { 
              TProtocolUtil.skip(iprot, field.type);
            }
          case MULTIPLEPRODUCT_FIELD_ID:
            if (field.type == TType.BOOL) {
              this.multipleProduct = iprot.readBool();
              this.__isset_multipleProduct = true;
            } else { 
              TProtocolUtil.skip(iprot, field.type);
            }
          case CALLERIDSTATUS_FIELD_ID:
            if (field.type == TType.I32) {
              this.callerIdStatus = iprot.readI32();
              this.__isset_callerIdStatus = true;
            } else { 
              TProtocolUtil.skip(iprot, field.type);
            }
          case BALANCE_FIELD_ID:
            if (field.type == TType.I32) {
              this.balance = iprot.readI32();
              this.__isset_balance = true;
            } else { 
              TProtocolUtil.skip(iprot, field.type);
            }
          case UNIT_FIELD_ID:
            if (field.type == TType.STRING) {
              this.unit = iprot.readString();
            } else { 
              TProtocolUtil.skip(iprot, field.type);
            }
          case RATE_FIELD_ID:
            if (field.type == TType.I32) {
              this.rate = iprot.readI32();
              this.__isset_rate = true;
            } else { 
              TProtocolUtil.skip(iprot, field.type);
            }
          case DISPLAYCODE_FIELD_ID:
            if (field.type == TType.STRING) {
              this.displayCode = iprot.readString();
            } else { 
              TProtocolUtil.skip(iprot, field.type);
            }
          case CALLEDNUMBER_FIELD_ID:
            if (field.type == TType.STRING) {
              this.calledNumber = iprot.readString();
            } else { 
              TProtocolUtil.skip(iprot, field.type);
            }
          case CALLEENATIONALNUMBER_FIELD_ID:
            if (field.type == TType.STRING) {
              this.calleeNationalNumber = iprot.readString();
            } else { 
              TProtocolUtil.skip(iprot, field.type);
            }
          case CALLEECALLINGCODE_FIELD_ID:
            if (field.type == TType.STRING) {
              this.calleeCallingCode = iprot.readString();
            } else { 
              TProtocolUtil.skip(iprot, field.type);
            }
          case RATEDIVISION_FIELD_ID:
            if (field.type == TType.STRING) {
              this.rateDivision = iprot.readString();
            } else { 
              TProtocolUtil.skip(iprot, field.type);
            }
          case ADMAXMIN_FIELD_ID:
            if (field.type == TType.I32) {
              this.adMaxMin = iprot.readI32();
              this.__isset_adMaxMin = true;
            } else { 
              TProtocolUtil.skip(iprot, field.type);
            }
          case ADREMAINS_FIELD_ID:
            if (field.type == TType.I32) {
              this.adRemains = iprot.readI32();
              this.__isset_adRemains = true;
            } else { 
              TProtocolUtil.skip(iprot, field.type);
            }
          case ADSESSIONID_FIELD_ID:
            if (field.type == TType.STRING) {
              this.adSessionId = iprot.readString();
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
      if (this.dialedNumber != null) {
        oprot.writeFieldBegin(DIALED_NUMBER_FIELD_DESC);
        oprot.writeString(this.dialedNumber);
        oprot.writeFieldEnd();
      }
      if (this.serviceDomain != null) {
        oprot.writeFieldBegin(SERVICE_DOMAIN_FIELD_DESC);
        oprot.writeString(this.serviceDomain);
        oprot.writeFieldEnd();
      }
      oprot.writeFieldBegin(PRODUCT_TYPE_FIELD_DESC);
      oprot.writeI32(this.productType);
      oprot.writeFieldEnd();
      if (this.productName != null) {
        oprot.writeFieldBegin(PRODUCT_NAME_FIELD_DESC);
        oprot.writeString(this.productName);
        oprot.writeFieldEnd();
      }
      oprot.writeFieldBegin(MULTIPLE_PRODUCT_FIELD_DESC);
      oprot.writeBool(this.multipleProduct);
      oprot.writeFieldEnd();
      oprot.writeFieldBegin(CALLER_ID_STATUS_FIELD_DESC);
      oprot.writeI32(this.callerIdStatus);
      oprot.writeFieldEnd();
      oprot.writeFieldBegin(BALANCE_FIELD_DESC);
      oprot.writeI32(this.balance);
      oprot.writeFieldEnd();
      if (this.unit != null) {
        oprot.writeFieldBegin(UNIT_FIELD_DESC);
        oprot.writeString(this.unit);
        oprot.writeFieldEnd();
      }
      oprot.writeFieldBegin(RATE_FIELD_DESC);
      oprot.writeI32(this.rate);
      oprot.writeFieldEnd();
      if (this.displayCode != null) {
        oprot.writeFieldBegin(DISPLAY_CODE_FIELD_DESC);
        oprot.writeString(this.displayCode);
        oprot.writeFieldEnd();
      }
      if (this.calledNumber != null) {
        oprot.writeFieldBegin(CALLED_NUMBER_FIELD_DESC);
        oprot.writeString(this.calledNumber);
        oprot.writeFieldEnd();
      }
      if (this.calleeNationalNumber != null) {
        oprot.writeFieldBegin(CALLEE_NATIONAL_NUMBER_FIELD_DESC);
        oprot.writeString(this.calleeNationalNumber);
        oprot.writeFieldEnd();
      }
      if (this.calleeCallingCode != null) {
        oprot.writeFieldBegin(CALLEE_CALLING_CODE_FIELD_DESC);
        oprot.writeString(this.calleeCallingCode);
        oprot.writeFieldEnd();
      }
      if (this.rateDivision != null) {
        oprot.writeFieldBegin(RATE_DIVISION_FIELD_DESC);
        oprot.writeString(this.rateDivision);
        oprot.writeFieldEnd();
      }
      oprot.writeFieldBegin(AD_MAX_MIN_FIELD_DESC);
      oprot.writeI32(this.adMaxMin);
      oprot.writeFieldEnd();
      oprot.writeFieldBegin(AD_REMAINS_FIELD_DESC);
      oprot.writeI32(this.adRemains);
      oprot.writeFieldEnd();
      if (this.adSessionId != null) {
        oprot.writeFieldBegin(AD_SESSION_ID_FIELD_DESC);
        oprot.writeString(this.adSessionId);
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
    var ret : String = "PaidCallDialing(";
    var first : Bool = true;

    ret += "type:";
    var type_name : String = .PaidCallType.VALUES_TO_NAMES[this.type];
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
    ret += "dialedNumber:";
    if (this.dialedNumber == null) {
      ret += "null";
    } else {
      ret += this.dialedNumber;
    }
    first = false;
    if (!first) ret +=  ", ";
    ret += "serviceDomain:";
    if (this.serviceDomain == null) {
      ret += "null";
    } else {
      ret += this.serviceDomain;
    }
    first = false;
    if (!first) ret +=  ", ";
    ret += "productType:";
    var productType_name : String = .PaidCallProductType.VALUES_TO_NAMES[this.productType];
    if (productType_name != null) {
      ret += productType_name;
      ret += " (";
    }
    ret += this.productType;
    if (productType_name != null) {
      ret += ")";
    }
    first = false;
    if (!first) ret +=  ", ";
    ret += "productName:";
    if (this.productName == null) {
      ret += "null";
    } else {
      ret += this.productName;
    }
    first = false;
    if (!first) ret +=  ", ";
    ret += "multipleProduct:";
    ret += this.multipleProduct;
    first = false;
    if (!first) ret +=  ", ";
    ret += "callerIdStatus:";
    var callerIdStatus_name : String = .PaidCallerIdStatus.VALUES_TO_NAMES[this.callerIdStatus];
    if (callerIdStatus_name != null) {
      ret += callerIdStatus_name;
      ret += " (";
    }
    ret += this.callerIdStatus;
    if (callerIdStatus_name != null) {
      ret += ")";
    }
    first = false;
    if (!first) ret +=  ", ";
    ret += "balance:";
    ret += this.balance;
    first = false;
    if (!first) ret +=  ", ";
    ret += "unit:";
    if (this.unit == null) {
      ret += "null";
    } else {
      ret += this.unit;
    }
    first = false;
    if (!first) ret +=  ", ";
    ret += "rate:";
    ret += this.rate;
    first = false;
    if (!first) ret +=  ", ";
    ret += "displayCode:";
    if (this.displayCode == null) {
      ret += "null";
    } else {
      ret += this.displayCode;
    }
    first = false;
    if (!first) ret +=  ", ";
    ret += "calledNumber:";
    if (this.calledNumber == null) {
      ret += "null";
    } else {
      ret += this.calledNumber;
    }
    first = false;
    if (!first) ret +=  ", ";
    ret += "calleeNationalNumber:";
    if (this.calleeNationalNumber == null) {
      ret += "null";
    } else {
      ret += this.calleeNationalNumber;
    }
    first = false;
    if (!first) ret +=  ", ";
    ret += "calleeCallingCode:";
    if (this.calleeCallingCode == null) {
      ret += "null";
    } else {
      ret += this.calleeCallingCode;
    }
    first = false;
    if (!first) ret +=  ", ";
    ret += "rateDivision:";
    if (this.rateDivision == null) {
      ret += "null";
    } else {
      ret += this.rateDivision;
    }
    first = false;
    if (!first) ret +=  ", ";
    ret += "adMaxMin:";
    ret += this.adMaxMin;
    first = false;
    if (!first) ret +=  ", ";
    ret += "adRemains:";
    ret += this.adRemains;
    first = false;
    if (!first) ret +=  ", ";
    ret += "adSessionId:";
    if (this.adSessionId == null) {
      ret += "null";
    } else {
      ret += this.adSessionId;
    }
    first = false;
    ret += ")";
    return ret;
  }

  public function validate() : Void {
    // check for required fields
    // check that fields of type enum have valid values
    if (isSetType() && !.PaidCallType.VALID_VALUES.contains(type)){
      throw new TProtocolException(TProtocolException.UNKNOWN, "The field 'type' has been assigned the invalid value " + type);
    }
    if (isSetProductType() && !.PaidCallProductType.VALID_VALUES.contains(productType)){
      throw new TProtocolException(TProtocolException.UNKNOWN, "The field 'productType' has been assigned the invalid value " + productType);
    }
    if (isSetCallerIdStatus() && !.PaidCallerIdStatus.VALID_VALUES.contains(callerIdStatus)){
      throw new TProtocolException(TProtocolException.UNKNOWN, "The field 'callerIdStatus' has been assigned the invalid value " + callerIdStatus);
    }
  }

}
