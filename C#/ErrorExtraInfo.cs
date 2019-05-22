/**
 * Autogenerated by Thrift Compiler (0.11.0)
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 *  @generated
 */
using System;
using System.Collections;
using System.Collections.Generic;
using System.Text;
using System.IO;
using Thrift;
using Thrift.Collections;
using System.Runtime.Serialization;
using Thrift.Protocol;
using Thrift.Transport;


#if !SILVERLIGHT
[Serializable]
#endif
public partial class ErrorExtraInfo : TBase
{
  private PreconditionFailedExtraInfo _preconditionFailedExtraInfo;

  /// <summary>
  /// 
  /// <seealso cref="PreconditionFailedExtraInfo"/>
  /// </summary>
  public PreconditionFailedExtraInfo PreconditionFailedExtraInfo
  {
    get
    {
      return _preconditionFailedExtraInfo;
    }
    set
    {
      __isset.preconditionFailedExtraInfo = true;
      this._preconditionFailedExtraInfo = value;
    }
  }


  public Isset __isset;
  #if !SILVERLIGHT
  [Serializable]
  #endif
  public struct Isset {
    public bool preconditionFailedExtraInfo;
  }

  public ErrorExtraInfo() {
  }

  public void Read (TProtocol iprot)
  {
    iprot.IncrementRecursionDepth();
    try
    {
      TField field;
      iprot.ReadStructBegin();
      while (true)
      {
        field = iprot.ReadFieldBegin();
        if (field.Type == TType.Stop) { 
          break;
        }
        switch (field.ID)
        {
          case 1:
            if (field.Type == TType.I32) {
              PreconditionFailedExtraInfo = (PreconditionFailedExtraInfo)iprot.ReadI32();
            } else { 
              TProtocolUtil.Skip(iprot, field.Type);
            }
            break;
          default: 
            TProtocolUtil.Skip(iprot, field.Type);
            break;
        }
        iprot.ReadFieldEnd();
      }
      iprot.ReadStructEnd();
    }
    finally
    {
      iprot.DecrementRecursionDepth();
    }
  }

  public void Write(TProtocol oprot) {
    oprot.IncrementRecursionDepth();
    try
    {
      TStruct struc = new TStruct("ErrorExtraInfo");
      oprot.WriteStructBegin(struc);
      TField field = new TField();
      if (__isset.preconditionFailedExtraInfo) {
        field.Name = "preconditionFailedExtraInfo";
        field.Type = TType.I32;
        field.ID = 1;
        oprot.WriteFieldBegin(field);
        oprot.WriteI32((int)PreconditionFailedExtraInfo);
        oprot.WriteFieldEnd();
      }
      oprot.WriteFieldStop();
      oprot.WriteStructEnd();
    }
    finally
    {
      oprot.DecrementRecursionDepth();
    }
  }

  public override string ToString() {
    StringBuilder __sb = new StringBuilder("ErrorExtraInfo(");
    bool __first = true;
    if (__isset.preconditionFailedExtraInfo) {
      if(!__first) { __sb.Append(", "); }
      __first = false;
      __sb.Append("PreconditionFailedExtraInfo: ");
      __sb.Append(PreconditionFailedExtraInfo);
    }
    __sb.Append(")");
    return __sb.ToString();
  }

}
