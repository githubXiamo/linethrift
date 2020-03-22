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


class SystemConfiguration implements TBase {
  
  static var STRUCT_DESC = { new TStruct("SystemConfiguration"); };
  static var ENDPOINT_FIELD_DESC = { new TField("endpoint", TType.STRING, 1); };
  static var ENDPOINT_SSL_FIELD_DESC = { new TField("endpointSsl", TType.STRING, 2); };
  static var UPDATE_URL_FIELD_DESC = { new TField("updateUrl", TType.STRING, 3); };
  static var C2DM_ACCOUNT_FIELD_DESC = { new TField("c2dmAccount", TType.STRING, 11); };
  static var NNI_SERVER_FIELD_DESC = { new TField("nniServer", TType.STRING, 12); };

  @:isVar
  public var endpoint(get,set) : String;
  @:isVar
  public var endpointSsl(get,set) : String;
  @:isVar
  public var updateUrl(get,set) : String;
  @:isVar
  public var c2dmAccount(get,set) : String;
  @:isVar
  public var nniServer(get,set) : String;

  inline static var ENDPOINT_FIELD_ID : Int = 1;
  inline static var ENDPOINTSSL_FIELD_ID : Int = 2;
  inline static var UPDATEURL_FIELD_ID : Int = 3;
  inline static var C2DMACCOUNT_FIELD_ID : Int = 11;
  inline static var NNISERVER_FIELD_ID : Int = 12;


  public function new() {
  }

  public function get_endpoint() : String {
    return this.endpoint;
  }

  public function set_endpoint(endpoint:String) : String {
    this.endpoint = endpoint;
    return this.endpoint;
  }

  public function unsetEndpoint() : Void {
    this.endpoint = null;
  }

  // Returns true if field endpoint is set (has been assigned a value) and false otherwise
  public function isSetEndpoint() : Bool {
    return this.endpoint != null;
  }

  public function get_endpointSsl() : String {
    return this.endpointSsl;
  }

  public function set_endpointSsl(endpointSsl:String) : String {
    this.endpointSsl = endpointSsl;
    return this.endpointSsl;
  }

  public function unsetEndpointSsl() : Void {
    this.endpointSsl = null;
  }

  // Returns true if field endpointSsl is set (has been assigned a value) and false otherwise
  public function isSetEndpointSsl() : Bool {
    return this.endpointSsl != null;
  }

  public function get_updateUrl() : String {
    return this.updateUrl;
  }

  public function set_updateUrl(updateUrl:String) : String {
    this.updateUrl = updateUrl;
    return this.updateUrl;
  }

  public function unsetUpdateUrl() : Void {
    this.updateUrl = null;
  }

  // Returns true if field updateUrl is set (has been assigned a value) and false otherwise
  public function isSetUpdateUrl() : Bool {
    return this.updateUrl != null;
  }

  public function get_c2dmAccount() : String {
    return this.c2dmAccount;
  }

  public function set_c2dmAccount(c2dmAccount:String) : String {
    this.c2dmAccount = c2dmAccount;
    return this.c2dmAccount;
  }

  public function unsetC2dmAccount() : Void {
    this.c2dmAccount = null;
  }

  // Returns true if field c2dmAccount is set (has been assigned a value) and false otherwise
  public function isSetC2dmAccount() : Bool {
    return this.c2dmAccount != null;
  }

  public function get_nniServer() : String {
    return this.nniServer;
  }

  public function set_nniServer(nniServer:String) : String {
    this.nniServer = nniServer;
    return this.nniServer;
  }

  public function unsetNniServer() : Void {
    this.nniServer = null;
  }

  // Returns true if field nniServer is set (has been assigned a value) and false otherwise
  public function isSetNniServer() : Bool {
    return this.nniServer != null;
  }

  public function setFieldValue(fieldID : Int, value : Dynamic) : Void {
    switch (fieldID) {
    case ENDPOINT_FIELD_ID:
      if (value == null) {
        unsetEndpoint();
      } else {
        this.endpoint = value;
      }

    case ENDPOINTSSL_FIELD_ID:
      if (value == null) {
        unsetEndpointSsl();
      } else {
        this.endpointSsl = value;
      }

    case UPDATEURL_FIELD_ID:
      if (value == null) {
        unsetUpdateUrl();
      } else {
        this.updateUrl = value;
      }

    case C2DMACCOUNT_FIELD_ID:
      if (value == null) {
        unsetC2dmAccount();
      } else {
        this.c2dmAccount = value;
      }

    case NNISERVER_FIELD_ID:
      if (value == null) {
        unsetNniServer();
      } else {
        this.nniServer = value;
      }

    default:
      throw new ArgumentError("Field " + fieldID + " doesn't exist!");
    }
  }

  public function getFieldValue(fieldID : Int) : Dynamic {
    switch (fieldID) {
    case ENDPOINT_FIELD_ID:
      return this.endpoint;
    case ENDPOINTSSL_FIELD_ID:
      return this.endpointSsl;
    case UPDATEURL_FIELD_ID:
      return this.updateUrl;
    case C2DMACCOUNT_FIELD_ID:
      return this.c2dmAccount;
    case NNISERVER_FIELD_ID:
      return this.nniServer;
    default:
      throw new ArgumentError("Field " + fieldID + " doesn't exist!");
    }
  }

  // Returns true if field corresponding to fieldID is set (has been assigned a value) and false otherwise
  public function isSet(fieldID : Int) : Bool {
    switch (fieldID) {
    case ENDPOINT_FIELD_ID:
      return isSetEndpoint();
    case ENDPOINTSSL_FIELD_ID:
      return isSetEndpointSsl();
    case UPDATEURL_FIELD_ID:
      return isSetUpdateUrl();
    case C2DMACCOUNT_FIELD_ID:
      return isSetC2dmAccount();
    case NNISERVER_FIELD_ID:
      return isSetNniServer();
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
          case ENDPOINT_FIELD_ID:
            if (field.type == TType.STRING) {
              this.endpoint = iprot.readString();
            } else { 
              TProtocolUtil.skip(iprot, field.type);
            }
          case ENDPOINTSSL_FIELD_ID:
            if (field.type == TType.STRING) {
              this.endpointSsl = iprot.readString();
            } else { 
              TProtocolUtil.skip(iprot, field.type);
            }
          case UPDATEURL_FIELD_ID:
            if (field.type == TType.STRING) {
              this.updateUrl = iprot.readString();
            } else { 
              TProtocolUtil.skip(iprot, field.type);
            }
          case C2DMACCOUNT_FIELD_ID:
            if (field.type == TType.STRING) {
              this.c2dmAccount = iprot.readString();
            } else { 
              TProtocolUtil.skip(iprot, field.type);
            }
          case NNISERVER_FIELD_ID:
            if (field.type == TType.STRING) {
              this.nniServer = iprot.readString();
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
      if (this.endpoint != null) {
        oprot.writeFieldBegin(ENDPOINT_FIELD_DESC);
        oprot.writeString(this.endpoint);
        oprot.writeFieldEnd();
      }
      if (this.endpointSsl != null) {
        oprot.writeFieldBegin(ENDPOINT_SSL_FIELD_DESC);
        oprot.writeString(this.endpointSsl);
        oprot.writeFieldEnd();
      }
      if (this.updateUrl != null) {
        oprot.writeFieldBegin(UPDATE_URL_FIELD_DESC);
        oprot.writeString(this.updateUrl);
        oprot.writeFieldEnd();
      }
      if (this.c2dmAccount != null) {
        oprot.writeFieldBegin(C2DM_ACCOUNT_FIELD_DESC);
        oprot.writeString(this.c2dmAccount);
        oprot.writeFieldEnd();
      }
      if (this.nniServer != null) {
        oprot.writeFieldBegin(NNI_SERVER_FIELD_DESC);
        oprot.writeString(this.nniServer);
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
    var ret : String = "SystemConfiguration(";
    var first : Bool = true;

    ret += "endpoint:";
    if (this.endpoint == null) {
      ret += "null";
    } else {
      ret += this.endpoint;
    }
    first = false;
    if (!first) ret +=  ", ";
    ret += "endpointSsl:";
    if (this.endpointSsl == null) {
      ret += "null";
    } else {
      ret += this.endpointSsl;
    }
    first = false;
    if (!first) ret +=  ", ";
    ret += "updateUrl:";
    if (this.updateUrl == null) {
      ret += "null";
    } else {
      ret += this.updateUrl;
    }
    first = false;
    if (!first) ret +=  ", ";
    ret += "c2dmAccount:";
    if (this.c2dmAccount == null) {
      ret += "null";
    } else {
      ret += this.c2dmAccount;
    }
    first = false;
    if (!first) ret +=  ", ";
    ret += "nniServer:";
    if (this.nniServer == null) {
      ret += "null";
    } else {
      ret += this.nniServer;
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
