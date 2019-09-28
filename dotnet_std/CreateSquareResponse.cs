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



public partial class CreateSquareResponse : TBase
{
  private Square _square;
  private SquareMember _creator;
  private SquareAuthority _authority;
  private SquareStatus _status;

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

  public SquareAuthority Authority
  {
    get
    {
      return _authority;
    }
    set
    {
      __isset.authority = true;
      this._authority = value;
    }
  }

  public SquareStatus Status
  {
    get
    {
      return _status;
    }
    set
    {
      __isset.status = true;
      this._status = value;
    }
  }


  public Isset __isset;
  public struct Isset
  {
    public bool square;
    public bool creator;
    public bool authority;
    public bool status;
  }

  public CreateSquareResponse()
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
          case 2:
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
          case 3:
            if (field.Type == TType.Struct)
            {
              Authority = new SquareAuthority();
              await Authority.ReadAsync(iprot, cancellationToken);
            }
            else
            {
              await TProtocolUtil.SkipAsync(iprot, field.Type, cancellationToken);
            }
            break;
          case 4:
            if (field.Type == TType.Struct)
            {
              Status = new SquareStatus();
              await Status.ReadAsync(iprot, cancellationToken);
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
      var struc = new TStruct("CreateSquareResponse");
      await oprot.WriteStructBeginAsync(struc, cancellationToken);
      var field = new TField();
      if (Square != null && __isset.square)
      {
        field.Name = "square";
        field.Type = TType.Struct;
        field.ID = 1;
        await oprot.WriteFieldBeginAsync(field, cancellationToken);
        await Square.WriteAsync(oprot, cancellationToken);
        await oprot.WriteFieldEndAsync(cancellationToken);
      }
      if (Creator != null && __isset.creator)
      {
        field.Name = "creator";
        field.Type = TType.Struct;
        field.ID = 2;
        await oprot.WriteFieldBeginAsync(field, cancellationToken);
        await Creator.WriteAsync(oprot, cancellationToken);
        await oprot.WriteFieldEndAsync(cancellationToken);
      }
      if (Authority != null && __isset.authority)
      {
        field.Name = "authority";
        field.Type = TType.Struct;
        field.ID = 3;
        await oprot.WriteFieldBeginAsync(field, cancellationToken);
        await Authority.WriteAsync(oprot, cancellationToken);
        await oprot.WriteFieldEndAsync(cancellationToken);
      }
      if (Status != null && __isset.status)
      {
        field.Name = "status";
        field.Type = TType.Struct;
        field.ID = 4;
        await oprot.WriteFieldBeginAsync(field, cancellationToken);
        await Status.WriteAsync(oprot, cancellationToken);
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
    var other = that as CreateSquareResponse;
    if (other == null) return false;
    if (ReferenceEquals(this, other)) return true;
    return ((__isset.square == other.__isset.square) && ((!__isset.square) || (System.Object.Equals(Square, other.Square))))
      && ((__isset.creator == other.__isset.creator) && ((!__isset.creator) || (System.Object.Equals(Creator, other.Creator))))
      && ((__isset.authority == other.__isset.authority) && ((!__isset.authority) || (System.Object.Equals(Authority, other.Authority))))
      && ((__isset.status == other.__isset.status) && ((!__isset.status) || (System.Object.Equals(Status, other.Status))));
  }

  public override int GetHashCode() {
    int hashcode = 157;
    unchecked {
      if(__isset.square)
        hashcode = (hashcode * 397) + Square.GetHashCode();
      if(__isset.creator)
        hashcode = (hashcode * 397) + Creator.GetHashCode();
      if(__isset.authority)
        hashcode = (hashcode * 397) + Authority.GetHashCode();
      if(__isset.status)
        hashcode = (hashcode * 397) + Status.GetHashCode();
    }
    return hashcode;
  }

  public override string ToString()
  {
    var sb = new StringBuilder("CreateSquareResponse(");
    bool __first = true;
    if (Square != null && __isset.square)
    {
      if(!__first) { sb.Append(", "); }
      __first = false;
      sb.Append("Square: ");
      sb.Append(Square== null ? "<null>" : Square.ToString());
    }
    if (Creator != null && __isset.creator)
    {
      if(!__first) { sb.Append(", "); }
      __first = false;
      sb.Append("Creator: ");
      sb.Append(Creator== null ? "<null>" : Creator.ToString());
    }
    if (Authority != null && __isset.authority)
    {
      if(!__first) { sb.Append(", "); }
      __first = false;
      sb.Append("Authority: ");
      sb.Append(Authority== null ? "<null>" : Authority.ToString());
    }
    if (Status != null && __isset.status)
    {
      if(!__first) { sb.Append(", "); }
      __first = false;
      sb.Append("Status: ");
      sb.Append(Status== null ? "<null>" : Status.ToString());
    }
    sb.Append(")");
    return sb.ToString();
  }
}
