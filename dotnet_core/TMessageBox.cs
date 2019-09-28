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



public partial class TMessageBox : TBase
{
  private string _id;
  private string _channelId;
  private long _lastSeq;
  private long _unreadCount;
  private long _lastModifiedTime;
  private int _status;
  private MIDType _midType;
  private List<Message> _lastMessages;

  public string Id
  {
    get
    {
      return _id;
    }
    set
    {
      __isset.id = true;
      this._id = value;
    }
  }

  public string ChannelId
  {
    get
    {
      return _channelId;
    }
    set
    {
      __isset.channelId = true;
      this._channelId = value;
    }
  }

  public long LastSeq
  {
    get
    {
      return _lastSeq;
    }
    set
    {
      __isset.lastSeq = true;
      this._lastSeq = value;
    }
  }

  public long UnreadCount
  {
    get
    {
      return _unreadCount;
    }
    set
    {
      __isset.unreadCount = true;
      this._unreadCount = value;
    }
  }

  public long LastModifiedTime
  {
    get
    {
      return _lastModifiedTime;
    }
    set
    {
      __isset.lastModifiedTime = true;
      this._lastModifiedTime = value;
    }
  }

  public int Status
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

  /// <summary>
  /// 
  /// <seealso cref="MIDType"/>
  /// </summary>
  public MIDType MidType
  {
    get
    {
      return _midType;
    }
    set
    {
      __isset.midType = true;
      this._midType = value;
    }
  }

  public List<Message> LastMessages
  {
    get
    {
      return _lastMessages;
    }
    set
    {
      __isset.lastMessages = true;
      this._lastMessages = value;
    }
  }


  public Isset __isset;
  public struct Isset
  {
    public bool id;
    public bool channelId;
    public bool lastSeq;
    public bool unreadCount;
    public bool lastModifiedTime;
    public bool status;
    public bool midType;
    public bool lastMessages;
  }

  public TMessageBox()
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
              Id = await iprot.ReadStringAsync(cancellationToken);
            }
            else
            {
              await TProtocolUtil.SkipAsync(iprot, field.Type, cancellationToken);
            }
            break;
          case 2:
            if (field.Type == TType.String)
            {
              ChannelId = await iprot.ReadStringAsync(cancellationToken);
            }
            else
            {
              await TProtocolUtil.SkipAsync(iprot, field.Type, cancellationToken);
            }
            break;
          case 5:
            if (field.Type == TType.I64)
            {
              LastSeq = await iprot.ReadI64Async(cancellationToken);
            }
            else
            {
              await TProtocolUtil.SkipAsync(iprot, field.Type, cancellationToken);
            }
            break;
          case 6:
            if (field.Type == TType.I64)
            {
              UnreadCount = await iprot.ReadI64Async(cancellationToken);
            }
            else
            {
              await TProtocolUtil.SkipAsync(iprot, field.Type, cancellationToken);
            }
            break;
          case 7:
            if (field.Type == TType.I64)
            {
              LastModifiedTime = await iprot.ReadI64Async(cancellationToken);
            }
            else
            {
              await TProtocolUtil.SkipAsync(iprot, field.Type, cancellationToken);
            }
            break;
          case 8:
            if (field.Type == TType.I32)
            {
              Status = await iprot.ReadI32Async(cancellationToken);
            }
            else
            {
              await TProtocolUtil.SkipAsync(iprot, field.Type, cancellationToken);
            }
            break;
          case 9:
            if (field.Type == TType.I32)
            {
              MidType = (MIDType)await iprot.ReadI32Async(cancellationToken);
            }
            else
            {
              await TProtocolUtil.SkipAsync(iprot, field.Type, cancellationToken);
            }
            break;
          case 10:
            if (field.Type == TType.List)
            {
              {
                LastMessages = new List<Message>();
                TList _list255 = await iprot.ReadListBeginAsync(cancellationToken);
                for(int _i256 = 0; _i256 < _list255.Count; ++_i256)
                {
                  Message _elem257;
                  _elem257 = new Message();
                  await _elem257.ReadAsync(iprot, cancellationToken);
                  LastMessages.Add(_elem257);
                }
                await iprot.ReadListEndAsync(cancellationToken);
              }
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
      var struc = new TStruct("TMessageBox");
      await oprot.WriteStructBeginAsync(struc, cancellationToken);
      var field = new TField();
      if (Id != null && __isset.id)
      {
        field.Name = "id";
        field.Type = TType.String;
        field.ID = 1;
        await oprot.WriteFieldBeginAsync(field, cancellationToken);
        await oprot.WriteStringAsync(Id, cancellationToken);
        await oprot.WriteFieldEndAsync(cancellationToken);
      }
      if (ChannelId != null && __isset.channelId)
      {
        field.Name = "channelId";
        field.Type = TType.String;
        field.ID = 2;
        await oprot.WriteFieldBeginAsync(field, cancellationToken);
        await oprot.WriteStringAsync(ChannelId, cancellationToken);
        await oprot.WriteFieldEndAsync(cancellationToken);
      }
      if (__isset.lastSeq)
      {
        field.Name = "lastSeq";
        field.Type = TType.I64;
        field.ID = 5;
        await oprot.WriteFieldBeginAsync(field, cancellationToken);
        await oprot.WriteI64Async(LastSeq, cancellationToken);
        await oprot.WriteFieldEndAsync(cancellationToken);
      }
      if (__isset.unreadCount)
      {
        field.Name = "unreadCount";
        field.Type = TType.I64;
        field.ID = 6;
        await oprot.WriteFieldBeginAsync(field, cancellationToken);
        await oprot.WriteI64Async(UnreadCount, cancellationToken);
        await oprot.WriteFieldEndAsync(cancellationToken);
      }
      if (__isset.lastModifiedTime)
      {
        field.Name = "lastModifiedTime";
        field.Type = TType.I64;
        field.ID = 7;
        await oprot.WriteFieldBeginAsync(field, cancellationToken);
        await oprot.WriteI64Async(LastModifiedTime, cancellationToken);
        await oprot.WriteFieldEndAsync(cancellationToken);
      }
      if (__isset.status)
      {
        field.Name = "status";
        field.Type = TType.I32;
        field.ID = 8;
        await oprot.WriteFieldBeginAsync(field, cancellationToken);
        await oprot.WriteI32Async(Status, cancellationToken);
        await oprot.WriteFieldEndAsync(cancellationToken);
      }
      if (__isset.midType)
      {
        field.Name = "midType";
        field.Type = TType.I32;
        field.ID = 9;
        await oprot.WriteFieldBeginAsync(field, cancellationToken);
        await oprot.WriteI32Async((int)MidType, cancellationToken);
        await oprot.WriteFieldEndAsync(cancellationToken);
      }
      if (LastMessages != null && __isset.lastMessages)
      {
        field.Name = "lastMessages";
        field.Type = TType.List;
        field.ID = 10;
        await oprot.WriteFieldBeginAsync(field, cancellationToken);
        {
          await oprot.WriteListBeginAsync(new TList(TType.Struct, LastMessages.Count), cancellationToken);
          foreach (Message _iter258 in LastMessages)
          {
            await _iter258.WriteAsync(oprot, cancellationToken);
          }
          await oprot.WriteListEndAsync(cancellationToken);
        }
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
    var sb = new StringBuilder("TMessageBox(");
    bool __first = true;
    if (Id != null && __isset.id)
    {
      if(!__first) { sb.Append(", "); }
      __first = false;
      sb.Append("Id: ");
      sb.Append(Id);
    }
    if (ChannelId != null && __isset.channelId)
    {
      if(!__first) { sb.Append(", "); }
      __first = false;
      sb.Append("ChannelId: ");
      sb.Append(ChannelId);
    }
    if (__isset.lastSeq)
    {
      if(!__first) { sb.Append(", "); }
      __first = false;
      sb.Append("LastSeq: ");
      sb.Append(LastSeq);
    }
    if (__isset.unreadCount)
    {
      if(!__first) { sb.Append(", "); }
      __first = false;
      sb.Append("UnreadCount: ");
      sb.Append(UnreadCount);
    }
    if (__isset.lastModifiedTime)
    {
      if(!__first) { sb.Append(", "); }
      __first = false;
      sb.Append("LastModifiedTime: ");
      sb.Append(LastModifiedTime);
    }
    if (__isset.status)
    {
      if(!__first) { sb.Append(", "); }
      __first = false;
      sb.Append("Status: ");
      sb.Append(Status);
    }
    if (__isset.midType)
    {
      if(!__first) { sb.Append(", "); }
      __first = false;
      sb.Append("MidType: ");
      sb.Append(MidType);
    }
    if (LastMessages != null && __isset.lastMessages)
    {
      if(!__first) { sb.Append(", "); }
      __first = false;
      sb.Append("LastMessages: ");
      sb.Append(LastMessages);
    }
    sb.Append(")");
    return sb.ToString();
  }
}
