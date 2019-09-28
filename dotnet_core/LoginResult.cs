/**
 * Autogenerated by Thrift Compiler (0.13.0)
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 *  @generated
 */
using System;
using System.Collections;
using System.Collections.Generic;
using System.Text;
using System.IO;
using System.Threading;
using System.Threading.Tasks;
using Thrift;
using Thrift.Collections;

using Thrift.Protocols;
using Thrift.Protocols.Entities;
using Thrift.Protocols.Utilities;
using Thrift.Transports;
using Thrift.Transports.Client;
using Thrift.Transports.Server;



public partial class LoginResult : TBase
{
  private string _authToken;
  private string _certificate;
  private string _verifier;
  private string _pinCode;
  private LoginResultType _type;
  private long _lastPrimaryBindTime;
  private string _displayMessage;
  private VerificationSessionData _sessionForSMSConfirm;

  public string AuthToken
  {
    get
    {
      return _authToken;
    }
    set
    {
      __isset.authToken = true;
      this._authToken = value;
    }
  }

  public string Certificate
  {
    get
    {
      return _certificate;
    }
    set
    {
      __isset.certificate = true;
      this._certificate = value;
    }
  }

  public string Verifier
  {
    get
    {
      return _verifier;
    }
    set
    {
      __isset.verifier = true;
      this._verifier = value;
    }
  }

  public string PinCode
  {
    get
    {
      return _pinCode;
    }
    set
    {
      __isset.pinCode = true;
      this._pinCode = value;
    }
  }

  /// <summary>
  /// 
  /// <seealso cref="LoginResultType"/>
  /// </summary>
  public LoginResultType Type
  {
    get
    {
      return _type;
    }
    set
    {
      __isset.type = true;
      this._type = value;
    }
  }

  public long LastPrimaryBindTime
  {
    get
    {
      return _lastPrimaryBindTime;
    }
    set
    {
      __isset.lastPrimaryBindTime = true;
      this._lastPrimaryBindTime = value;
    }
  }

  public string DisplayMessage
  {
    get
    {
      return _displayMessage;
    }
    set
    {
      __isset.displayMessage = true;
      this._displayMessage = value;
    }
  }

  public VerificationSessionData SessionForSMSConfirm
  {
    get
    {
      return _sessionForSMSConfirm;
    }
    set
    {
      __isset.sessionForSMSConfirm = true;
      this._sessionForSMSConfirm = value;
    }
  }


  public Isset __isset;
  public struct Isset
  {
    public bool authToken;
    public bool certificate;
    public bool verifier;
    public bool pinCode;
    public bool type;
    public bool lastPrimaryBindTime;
    public bool displayMessage;
    public bool sessionForSMSConfirm;
  }

  public LoginResult()
  {
  }

  public async Task ReadAsync(TProtocol iprot, CancellationToken cancellationToken)
  {
    iprot.IncrementRecursionDepth();
    try
    {
      TField field;
      await iprot.ReadStructBeginAsync(cancellationToken);
      while (true)
      {
        field = await iprot.ReadFieldBeginAsync(cancellationToken);
        if (field.Type == TType.Stop)
        {
          break;
        }

        switch (field.ID)
        {
          case 1:
            if (field.Type == TType.String)
            {
              AuthToken = await iprot.ReadStringAsync(cancellationToken);
            }
            else
            {
              await TProtocolUtil.SkipAsync(iprot, field.Type, cancellationToken);
            }
            break;
          case 2:
            if (field.Type == TType.String)
            {
              Certificate = await iprot.ReadStringAsync(cancellationToken);
            }
            else
            {
              await TProtocolUtil.SkipAsync(iprot, field.Type, cancellationToken);
            }
            break;
          case 3:
            if (field.Type == TType.String)
            {
              Verifier = await iprot.ReadStringAsync(cancellationToken);
            }
            else
            {
              await TProtocolUtil.SkipAsync(iprot, field.Type, cancellationToken);
            }
            break;
          case 4:
            if (field.Type == TType.String)
            {
              PinCode = await iprot.ReadStringAsync(cancellationToken);
            }
            else
            {
              await TProtocolUtil.SkipAsync(iprot, field.Type, cancellationToken);
            }
            break;
          case 5:
            if (field.Type == TType.I32)
            {
              Type = (LoginResultType)await iprot.ReadI32Async(cancellationToken);
            }
            else
            {
              await TProtocolUtil.SkipAsync(iprot, field.Type, cancellationToken);
            }
            break;
          case 6:
            if (field.Type == TType.I64)
            {
              LastPrimaryBindTime = await iprot.ReadI64Async(cancellationToken);
            }
            else
            {
              await TProtocolUtil.SkipAsync(iprot, field.Type, cancellationToken);
            }
            break;
          case 7:
            if (field.Type == TType.String)
            {
              DisplayMessage = await iprot.ReadStringAsync(cancellationToken);
            }
            else
            {
              await TProtocolUtil.SkipAsync(iprot, field.Type, cancellationToken);
            }
            break;
          case 8:
            if (field.Type == TType.Struct)
            {
              SessionForSMSConfirm = new VerificationSessionData();
              await SessionForSMSConfirm.ReadAsync(iprot, cancellationToken);
            }
            else
            {
              await TProtocolUtil.SkipAsync(iprot, field.Type, cancellationToken);
            }
            break;
          default: 
            await TProtocolUtil.SkipAsync(iprot, field.Type, cancellationToken);
            break;
        }

        await iprot.ReadFieldEndAsync(cancellationToken);
      }

      await iprot.ReadStructEndAsync(cancellationToken);
    }
    finally
    {
      iprot.DecrementRecursionDepth();
    }
  }

  public async Task WriteAsync(TProtocol oprot, CancellationToken cancellationToken)
  {
    oprot.IncrementRecursionDepth();
    try
    {
      var struc = new TStruct("LoginResult");
      await oprot.WriteStructBeginAsync(struc, cancellationToken);
      var field = new TField();
      if (AuthToken != null && __isset.authToken)
      {
        field.Name = "authToken";
        field.Type = TType.String;
        field.ID = 1;
        await oprot.WriteFieldBeginAsync(field, cancellationToken);
        await oprot.WriteStringAsync(AuthToken, cancellationToken);
        await oprot.WriteFieldEndAsync(cancellationToken);
      }
      if (Certificate != null && __isset.certificate)
      {
        field.Name = "certificate";
        field.Type = TType.String;
        field.ID = 2;
        await oprot.WriteFieldBeginAsync(field, cancellationToken);
        await oprot.WriteStringAsync(Certificate, cancellationToken);
        await oprot.WriteFieldEndAsync(cancellationToken);
      }
      if (Verifier != null && __isset.verifier)
      {
        field.Name = "verifier";
        field.Type = TType.String;
        field.ID = 3;
        await oprot.WriteFieldBeginAsync(field, cancellationToken);
        await oprot.WriteStringAsync(Verifier, cancellationToken);
        await oprot.WriteFieldEndAsync(cancellationToken);
      }
      if (PinCode != null && __isset.pinCode)
      {
        field.Name = "pinCode";
        field.Type = TType.String;
        field.ID = 4;
        await oprot.WriteFieldBeginAsync(field, cancellationToken);
        await oprot.WriteStringAsync(PinCode, cancellationToken);
        await oprot.WriteFieldEndAsync(cancellationToken);
      }
      if (__isset.type)
      {
        field.Name = "type";
        field.Type = TType.I32;
        field.ID = 5;
        await oprot.WriteFieldBeginAsync(field, cancellationToken);
        await oprot.WriteI32Async((int)Type, cancellationToken);
        await oprot.WriteFieldEndAsync(cancellationToken);
      }
      if (__isset.lastPrimaryBindTime)
      {
        field.Name = "lastPrimaryBindTime";
        field.Type = TType.I64;
        field.ID = 6;
        await oprot.WriteFieldBeginAsync(field, cancellationToken);
        await oprot.WriteI64Async(LastPrimaryBindTime, cancellationToken);
        await oprot.WriteFieldEndAsync(cancellationToken);
      }
      if (DisplayMessage != null && __isset.displayMessage)
      {
        field.Name = "displayMessage";
        field.Type = TType.String;
        field.ID = 7;
        await oprot.WriteFieldBeginAsync(field, cancellationToken);
        await oprot.WriteStringAsync(DisplayMessage, cancellationToken);
        await oprot.WriteFieldEndAsync(cancellationToken);
      }
      if (SessionForSMSConfirm != null && __isset.sessionForSMSConfirm)
      {
        field.Name = "sessionForSMSConfirm";
        field.Type = TType.Struct;
        field.ID = 8;
        await oprot.WriteFieldBeginAsync(field, cancellationToken);
        await SessionForSMSConfirm.WriteAsync(oprot, cancellationToken);
        await oprot.WriteFieldEndAsync(cancellationToken);
      }
      await oprot.WriteFieldStopAsync(cancellationToken);
      await oprot.WriteStructEndAsync(cancellationToken);
    }
    finally
    {
      oprot.DecrementRecursionDepth();
    }
  }

  public override string ToString()
  {
    var sb = new StringBuilder("LoginResult(");
    bool __first = true;
    if (AuthToken != null && __isset.authToken)
    {
      if(!__first) { sb.Append(", "); }
      __first = false;
      sb.Append("AuthToken: ");
      sb.Append(AuthToken);
    }
    if (Certificate != null && __isset.certificate)
    {
      if(!__first) { sb.Append(", "); }
      __first = false;
      sb.Append("Certificate: ");
      sb.Append(Certificate);
    }
    if (Verifier != null && __isset.verifier)
    {
      if(!__first) { sb.Append(", "); }
      __first = false;
      sb.Append("Verifier: ");
      sb.Append(Verifier);
    }
    if (PinCode != null && __isset.pinCode)
    {
      if(!__first) { sb.Append(", "); }
      __first = false;
      sb.Append("PinCode: ");
      sb.Append(PinCode);
    }
    if (__isset.type)
    {
      if(!__first) { sb.Append(", "); }
      __first = false;
      sb.Append("Type: ");
      sb.Append(Type);
    }
    if (__isset.lastPrimaryBindTime)
    {
      if(!__first) { sb.Append(", "); }
      __first = false;
      sb.Append("LastPrimaryBindTime: ");
      sb.Append(LastPrimaryBindTime);
    }
    if (DisplayMessage != null && __isset.displayMessage)
    {
      if(!__first) { sb.Append(", "); }
      __first = false;
      sb.Append("DisplayMessage: ");
      sb.Append(DisplayMessage);
    }
    if (SessionForSMSConfirm != null && __isset.sessionForSMSConfirm)
    {
      if(!__first) { sb.Append(", "); }
      __first = false;
      sb.Append("SessionForSMSConfirm: ");
      sb.Append(SessionForSMSConfirm== null ? "<null>" : SessionForSMSConfirm.ToString());
    }
    sb.Append(")");
    return sb.ToString();
  }
}
