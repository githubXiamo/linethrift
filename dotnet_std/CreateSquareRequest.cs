/**
 * Autogenerated by Thrift Compiler (0.14.0)
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



public partial class CreateSquareRequest : TBase
{
  private int _reqSeq;
  private Square _square;
  private SquareMember _creator;

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

  public Square Square
  {
    get
    {
      return _square;
    }
    set
    {
      __isset.square = true;
      this._square = value;
    }
  }

  public SquareMember Creator
  {
    get
    {
      return _creator;
    }
    set
    {
      __isset.creator = true;
      this._creator = value;
    }
  }


  public Isset __isset;
  public struct Isset
  {
    public bool reqSeq;
    public bool square;
    public bool creator;
  }

  public CreateSquareRequest()
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
            if (field.Type == TType.Struct)
            {
              Square = new Square();
              await Square.ReadAsync(iprot, cancellationToken);
            }
            else
            {
              await TProtocolUtil.SkipAsync(iprot, field.Type, cancellationToken);
            }
            break;
          case 3:
            if (field.Type == TType.Struct)
            {
              Creator = new SquareMember();
              await Creator.ReadAsync(iprot, cancellationToken);
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
      var struc = new TStruct("CreateSquareRequest");
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
      if (Square != null && __isset.square)
      {
        field.Name = "square";
        field.Type = TType.Struct;
        field.ID = 2;
        await oprot.WriteFieldBeginAsync(field, cancellationToken);
        await Square.WriteAsync(oprot, cancellationToken);
        await oprot.WriteFieldEndAsync(cancellationToken);
      }
      if (Creator != null && __isset.creator)
      {
        field.Name = "creator";
        field.Type = TType.Struct;
        field.ID = 3;
        await oprot.WriteFieldBeginAsync(field, cancellationToken);
        await Creator.WriteAsync(oprot, cancellationToken);
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
    var other = that as CreateSquareRequest;
    if (other == null) return false;
    if (ReferenceEquals(this, other)) return true;
    return ((__isset.reqSeq == other.__isset.reqSeq) && ((!__isset.reqSeq) || (System.Object.Equals(ReqSeq, other.ReqSeq))))
      && ((__isset.square == other.__isset.square) && ((!__isset.square) || (System.Object.Equals(Square, other.Square))))
      && ((__isset.creator == other.__isset.creator) && ((!__isset.creator) || (System.Object.Equals(Creator, other.Creator))));
  }

  public override int GetHashCode() {
    int hashcode = 157;
    unchecked {
      if(__isset.reqSeq)
        hashcode = (hashcode * 397) + ReqSeq.GetHashCode();
      if(__isset.square)
        hashcode = (hashcode * 397) + Square.GetHashCode();
      if(__isset.creator)
        hashcode = (hashcode * 397) + Creator.GetHashCode();
    }
    return hashcode;
  }

  public override string ToString()
  {
    var sb = new StringBuilder("CreateSquareRequest(");
    bool __first = true;
    if (__isset.reqSeq)
    {
      if(!__first) { sb.Append(", "); }
      __first = false;
      sb.Append("ReqSeq: ");
      ReqSeq.ToString(sb);
    }
    if (Square != null && __isset.square)
    {
      if(!__first) { sb.Append(", "); }
      __first = false;
      sb.Append("Square: ");
      Square.ToString(sb);
    }
    if (Creator != null && __isset.creator)
    {
      if(!__first) { sb.Append(", "); }
      __first = false;
      sb.Append("Creator: ");
      Creator.ToString(sb);
    }
    sb.Append(")");
    return sb.ToString();
  }
}

