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



public partial class MessageOperations : TBase
{
  private List<MessageOperation> _operations;
  private bool _endFlag;

  public List<MessageOperation> Operations
  {
    get
    {
      return _operations;
    }
    set
    {
      __isset.operations = true;
      this._operations = value;
    }
  }

  public bool EndFlag
  {
    get
    {
      return _endFlag;
    }
    set
    {
      __isset.endFlag = true;
      this._endFlag = value;
    }
  }


  public Isset __isset;
  public struct Isset
  {
    public bool operations;
    public bool endFlag;
  }

  public MessageOperations()
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
            if (field.Type == TType.List)
            {
              {
                TList _list166 = await iprot.ReadListBeginAsync(cancellationToken);
                Operations = new List<MessageOperation>(_list166.Count);
                for(int _i167 = 0; _i167 < _list166.Count; ++_i167)
                {
                  MessageOperation _elem168;
                  _elem168 = new MessageOperation();
                  await _elem168.ReadAsync(iprot, cancellationToken);
                  Operations.Add(_elem168);
                }
                await iprot.ReadListEndAsync(cancellationToken);
              }
            }
            else
            {
              await TProtocolUtil.SkipAsync(iprot, field.Type, cancellationToken);
            }
            break;
          case 2:
            if (field.Type == TType.Bool)
            {
              EndFlag = await iprot.ReadBoolAsync(cancellationToken);
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
      var struc = new TStruct("MessageOperations");
      await oprot.WriteStructBeginAsync(struc, cancellationToken);
      var field = new TField();
      if (Operations != null && __isset.operations)
      {
        field.Name = "operations";
        field.Type = TType.List;
        field.ID = 1;
        await oprot.WriteFieldBeginAsync(field, cancellationToken);
        {
          await oprot.WriteListBeginAsync(new TList(TType.Struct, Operations.Count), cancellationToken);
          foreach (MessageOperation _iter169 in Operations)
          {
            await _iter169.WriteAsync(oprot, cancellationToken);
          }
          await oprot.WriteListEndAsync(cancellationToken);
        }
        await oprot.WriteFieldEndAsync(cancellationToken);
      }
      if (__isset.endFlag)
      {
        field.Name = "endFlag";
        field.Type = TType.Bool;
        field.ID = 2;
        await oprot.WriteFieldBeginAsync(field, cancellationToken);
        await oprot.WriteBoolAsync(EndFlag, cancellationToken);
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
    var other = that as MessageOperations;
    if (other == null) return false;
    if (ReferenceEquals(this, other)) return true;
    return ((__isset.operations == other.__isset.operations) && ((!__isset.operations) || (TCollections.Equals(Operations, other.Operations))))
      && ((__isset.endFlag == other.__isset.endFlag) && ((!__isset.endFlag) || (System.Object.Equals(EndFlag, other.EndFlag))));
  }

  public override int GetHashCode() {
    int hashcode = 157;
    unchecked {
      if(__isset.operations)
        hashcode = (hashcode * 397) + TCollections.GetHashCode(Operations);
      if(__isset.endFlag)
        hashcode = (hashcode * 397) + EndFlag.GetHashCode();
    }
    return hashcode;
  }

  public override string ToString()
  {
    var sb = new StringBuilder("MessageOperations(");
    bool __first = true;
    if (Operations != null && __isset.operations)
    {
      if(!__first) { sb.Append(", "); }
      __first = false;
      sb.Append("Operations: ");
      Operations.ToString(sb);
    }
    if (__isset.endFlag)
    {
      if(!__first) { sb.Append(", "); }
      __first = false;
      sb.Append("EndFlag: ");
      EndFlag.ToString(sb);
    }
    sb.Append(")");
    return sb.ToString();
  }
}
