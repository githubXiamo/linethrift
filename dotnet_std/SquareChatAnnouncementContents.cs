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



public partial class SquareChatAnnouncementContents : TBase
{
  private TextMessageAnnouncementContents _textMessageAnnouncementContents;

  public TextMessageAnnouncementContents TextMessageAnnouncementContents
  {
    get
    {
      return _textMessageAnnouncementContents;
    }
    set
    {
      __isset.textMessageAnnouncementContents = true;
      this._textMessageAnnouncementContents = value;
    }
  }


  public Isset __isset;
  public struct Isset
  {
    public bool textMessageAnnouncementContents;
  }

  public SquareChatAnnouncementContents()
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
              TextMessageAnnouncementContents = new TextMessageAnnouncementContents();
              await TextMessageAnnouncementContents.ReadAsync(iprot, cancellationToken);
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
      var struc = new TStruct("SquareChatAnnouncementContents");
      await oprot.WriteStructBeginAsync(struc, cancellationToken);
      var field = new TField();
      if (TextMessageAnnouncementContents != null && __isset.textMessageAnnouncementContents)
      {
        field.Name = "textMessageAnnouncementContents";
        field.Type = TType.Struct;
        field.ID = 1;
        await oprot.WriteFieldBeginAsync(field, cancellationToken);
        await TextMessageAnnouncementContents.WriteAsync(oprot, cancellationToken);
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
    var other = that as SquareChatAnnouncementContents;
    if (other == null) return false;
    if (ReferenceEquals(this, other)) return true;
    return ((__isset.textMessageAnnouncementContents == other.__isset.textMessageAnnouncementContents) && ((!__isset.textMessageAnnouncementContents) || (System.Object.Equals(TextMessageAnnouncementContents, other.TextMessageAnnouncementContents))));
  }

  public override int GetHashCode() {
    int hashcode = 157;
    unchecked {
      if(__isset.textMessageAnnouncementContents)
        hashcode = (hashcode * 397) + TextMessageAnnouncementContents.GetHashCode();
    }
    return hashcode;
  }

  public override string ToString()
  {
    var sb = new StringBuilder("SquareChatAnnouncementContents(");
    bool __first = true;
    if (TextMessageAnnouncementContents != null && __isset.textMessageAnnouncementContents)
    {
      if(!__first) { sb.Append(", "); }
      __first = false;
      sb.Append("TextMessageAnnouncementContents: ");
      TextMessageAnnouncementContents.ToString(sb);
    }
    sb.Append(")");
    return sb.ToString();
  }
}

