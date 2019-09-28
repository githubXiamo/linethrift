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

using Thrift.Protocol;
using Thrift.Protocol.Entities;
using Thrift.Protocol.Utilities;
using Thrift.Transport;
using Thrift.Transport.Client;
using Thrift.Transport.Server;
using Thrift.Processor;



public partial class CreateSquareChatAnnouncementRequest : TBase
{
  private int _reqSeq;
  private string _squareChatMid;
  private SquareChatAnnouncement _squareChatAnnouncement;

  public int ReqSeq
  {
    get
    {
      return _reqSeq;
    }
    set
    {
      __isset.reqSeq = true;
      this._reqSeq = value;
    }
  }

  public string SquareChatMid
  {
    get
    {
      return _squareChatMid;
    }
    set
    {
      __isset.squareChatMid = true;
      this._squareChatMid = value;
    }
  }

  public SquareChatAnnouncement SquareChatAnnouncement
  {
    get
    {
      return _squareChatAnnouncement;
    }
    set
    {
      __isset.squareChatAnnouncement = true;
      this._squareChatAnnouncement = value;
    }
  }


  public Isset __isset;
  public struct Isset
  {
    public bool reqSeq;
    public bool squareChatMid;
    public bool squareChatAnnouncement;
  }

  public CreateSquareChatAnnouncementRequest()
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
            if (field.Type == TType.I32)
            {
              ReqSeq = await iprot.ReadI32Async(cancellationToken);
            }
            else
            {
              await TProtocolUtil.SkipAsync(iprot, field.Type, cancellationToken);
            }
            break;
          case 2:
            if (field.Type == TType.String)
            {
              SquareChatMid = await iprot.ReadStringAsync(cancellationToken);
            }
            else
            {
              await TProtocolUtil.SkipAsync(iprot, field.Type, cancellationToken);
            }
            break;
          case 3:
            if (field.Type == TType.Struct)
            {
              SquareChatAnnouncement = new SquareChatAnnouncement();
              await SquareChatAnnouncement.ReadAsync(iprot, cancellationToken);
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
      var struc = new TStruct("CreateSquareChatAnnouncementRequest");
      await oprot.WriteStructBeginAsync(struc, cancellationToken);
      var field = new TField();
      if (__isset.reqSeq)
      {
        field.Name = "reqSeq";
        field.Type = TType.I32;
        field.ID = 1;
        await oprot.WriteFieldBeginAsync(field, cancellationToken);
        await oprot.WriteI32Async(ReqSeq, cancellationToken);
        await oprot.WriteFieldEndAsync(cancellationToken);
      }
      if (SquareChatMid != null && __isset.squareChatMid)
      {
        field.Name = "squareChatMid";
        field.Type = TType.String;
        field.ID = 2;
        await oprot.WriteFieldBeginAsync(field, cancellationToken);
        await oprot.WriteStringAsync(SquareChatMid, cancellationToken);
        await oprot.WriteFieldEndAsync(cancellationToken);
      }
      if (SquareChatAnnouncement != null && __isset.squareChatAnnouncement)
      {
        field.Name = "squareChatAnnouncement";
        field.Type = TType.Struct;
        field.ID = 3;
        await oprot.WriteFieldBeginAsync(field, cancellationToken);
        await SquareChatAnnouncement.WriteAsync(oprot, cancellationToken);
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

  public override bool Equals(object that)
  {
    var other = that as CreateSquareChatAnnouncementRequest;
    if (other == null) return false;
    if (ReferenceEquals(this, other)) return true;
    return ((__isset.reqSeq == other.__isset.reqSeq) && ((!__isset.reqSeq) || (System.Object.Equals(ReqSeq, other.ReqSeq))))
      && ((__isset.squareChatMid == other.__isset.squareChatMid) && ((!__isset.squareChatMid) || (System.Object.Equals(SquareChatMid, other.SquareChatMid))))
      && ((__isset.squareChatAnnouncement == other.__isset.squareChatAnnouncement) && ((!__isset.squareChatAnnouncement) || (System.Object.Equals(SquareChatAnnouncement, other.SquareChatAnnouncement))));
  }

  public override int GetHashCode() {
    int hashcode = 157;
    unchecked {
      if(__isset.reqSeq)
        hashcode = (hashcode * 397) + ReqSeq.GetHashCode();
      if(__isset.squareChatMid)
        hashcode = (hashcode * 397) + SquareChatMid.GetHashCode();
      if(__isset.squareChatAnnouncement)
        hashcode = (hashcode * 397) + SquareChatAnnouncement.GetHashCode();
    }
    return hashcode;
  }

  public override string ToString()
  {
    var sb = new StringBuilder("CreateSquareChatAnnouncementRequest(");
    bool __first = true;
    if (__isset.reqSeq)
    {
      if(!__first) { sb.Append(", "); }
      __first = false;
      sb.Append("ReqSeq: ");
      sb.Append(ReqSeq);
    }
    if (SquareChatMid != null && __isset.squareChatMid)
    {
      if(!__first) { sb.Append(", "); }
      __first = false;
      sb.Append("SquareChatMid: ");
      sb.Append(SquareChatMid);
    }
    if (SquareChatAnnouncement != null && __isset.squareChatAnnouncement)
    {
      if(!__first) { sb.Append(", "); }
      __first = false;
      sb.Append("SquareChatAnnouncement: ");
      sb.Append(SquareChatAnnouncement== null ? "<null>" : SquareChatAnnouncement.ToString());
    }
    sb.Append(")");
    return sb.ToString();
  }
}
