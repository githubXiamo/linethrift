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



public partial class GetInvitationTicketUrlResponse : TBase
{
  private string _invitationURL;

  public string InvitationURL
  {
    get
    {
      return _invitationURL;
    }
    set
    {
      __isset.invitationURL = true;
      this._invitationURL = value;
    }
  }


  public Isset __isset;
  public struct Isset
  {
    public bool invitationURL;
  }

  public GetInvitationTicketUrlResponse()
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
              InvitationURL = await iprot.ReadStringAsync(cancellationToken);
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
      var struc = new TStruct("GetInvitationTicketUrlResponse");
      await oprot.WriteStructBeginAsync(struc, cancellationToken);
      var field = new TField();
      if (InvitationURL != null && __isset.invitationURL)
      {
        field.Name = "invitationURL";
        field.Type = TType.String;
        field.ID = 1;
        await oprot.WriteFieldBeginAsync(field, cancellationToken);
        await oprot.WriteStringAsync(InvitationURL, cancellationToken);
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
    var other = that as GetInvitationTicketUrlResponse;
    if (other == null) return false;
    if (ReferenceEquals(this, other)) return true;
    return ((__isset.invitationURL == other.__isset.invitationURL) && ((!__isset.invitationURL) || (System.Object.Equals(InvitationURL, other.InvitationURL))));
  }

  public override int GetHashCode() {
    int hashcode = 157;
    unchecked {
      if(__isset.invitationURL)
        hashcode = (hashcode * 397) + InvitationURL.GetHashCode();
    }
    return hashcode;
  }

  public override string ToString()
  {
    var sb = new StringBuilder("GetInvitationTicketUrlResponse(");
    bool __first = true;
    if (InvitationURL != null && __isset.invitationURL)
    {
      if(!__first) { sb.Append(", "); }
      __first = false;
      sb.Append("InvitationURL: ");
      InvitationURL.ToString(sb);
    }
    sb.Append(")");
    return sb.ToString();
  }
}

