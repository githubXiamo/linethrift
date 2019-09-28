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



public partial class SystemConfiguration : TBase
{
  private string _endpoint;
  private string _endpointSsl;
  private string _updateUrl;
  private string _c2dmAccount;
  private string _nniServer;

  public string Endpoint
  {
    get
    {
      return _endpoint;
    }
    set
    {
      __isset.endpoint = true;
      this._endpoint = value;
    }
  }

  public string EndpointSsl
  {
    get
    {
      return _endpointSsl;
    }
    set
    {
      __isset.endpointSsl = true;
      this._endpointSsl = value;
    }
  }

  public string UpdateUrl
  {
    get
    {
      return _updateUrl;
    }
    set
    {
      __isset.updateUrl = true;
      this._updateUrl = value;
    }
  }

  public string C2dmAccount
  {
    get
    {
      return _c2dmAccount;
    }
    set
    {
      __isset.c2dmAccount = true;
      this._c2dmAccount = value;
    }
  }

  public string NniServer
  {
    get
    {
      return _nniServer;
    }
    set
    {
      __isset.nniServer = true;
      this._nniServer = value;
    }
  }


  public Isset __isset;
  public struct Isset
  {
    public bool endpoint;
    public bool endpointSsl;
    public bool updateUrl;
    public bool c2dmAccount;
    public bool nniServer;
  }

  public SystemConfiguration()
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
              Endpoint = await iprot.ReadStringAsync(cancellationToken);
            }
            else
            {
              await TProtocolUtil.SkipAsync(iprot, field.Type, cancellationToken);
            }
            break;
          case 2:
            if (field.Type == TType.String)
            {
              EndpointSsl = await iprot.ReadStringAsync(cancellationToken);
            }
            else
            {
              await TProtocolUtil.SkipAsync(iprot, field.Type, cancellationToken);
            }
            break;
          case 3:
            if (field.Type == TType.String)
            {
              UpdateUrl = await iprot.ReadStringAsync(cancellationToken);
            }
            else
            {
              await TProtocolUtil.SkipAsync(iprot, field.Type, cancellationToken);
            }
            break;
          case 11:
            if (field.Type == TType.String)
            {
              C2dmAccount = await iprot.ReadStringAsync(cancellationToken);
            }
            else
            {
              await TProtocolUtil.SkipAsync(iprot, field.Type, cancellationToken);
            }
            break;
          case 12:
            if (field.Type == TType.String)
            {
              NniServer = await iprot.ReadStringAsync(cancellationToken);
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
      var struc = new TStruct("SystemConfiguration");
      await oprot.WriteStructBeginAsync(struc, cancellationToken);
      var field = new TField();
      if (Endpoint != null && __isset.endpoint)
      {
        field.Name = "endpoint";
        field.Type = TType.String;
        field.ID = 1;
        await oprot.WriteFieldBeginAsync(field, cancellationToken);
        await oprot.WriteStringAsync(Endpoint, cancellationToken);
        await oprot.WriteFieldEndAsync(cancellationToken);
      }
      if (EndpointSsl != null && __isset.endpointSsl)
      {
        field.Name = "endpointSsl";
        field.Type = TType.String;
        field.ID = 2;
        await oprot.WriteFieldBeginAsync(field, cancellationToken);
        await oprot.WriteStringAsync(EndpointSsl, cancellationToken);
        await oprot.WriteFieldEndAsync(cancellationToken);
      }
      if (UpdateUrl != null && __isset.updateUrl)
      {
        field.Name = "updateUrl";
        field.Type = TType.String;
        field.ID = 3;
        await oprot.WriteFieldBeginAsync(field, cancellationToken);
        await oprot.WriteStringAsync(UpdateUrl, cancellationToken);
        await oprot.WriteFieldEndAsync(cancellationToken);
      }
      if (C2dmAccount != null && __isset.c2dmAccount)
      {
        field.Name = "c2dmAccount";
        field.Type = TType.String;
        field.ID = 11;
        await oprot.WriteFieldBeginAsync(field, cancellationToken);
        await oprot.WriteStringAsync(C2dmAccount, cancellationToken);
        await oprot.WriteFieldEndAsync(cancellationToken);
      }
      if (NniServer != null && __isset.nniServer)
      {
        field.Name = "nniServer";
        field.Type = TType.String;
        field.ID = 12;
        await oprot.WriteFieldBeginAsync(field, cancellationToken);
        await oprot.WriteStringAsync(NniServer, cancellationToken);
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
    var other = that as SystemConfiguration;
    if (other == null) return false;
    if (ReferenceEquals(this, other)) return true;
    return ((__isset.endpoint == other.__isset.endpoint) && ((!__isset.endpoint) || (System.Object.Equals(Endpoint, other.Endpoint))))
      && ((__isset.endpointSsl == other.__isset.endpointSsl) && ((!__isset.endpointSsl) || (System.Object.Equals(EndpointSsl, other.EndpointSsl))))
      && ((__isset.updateUrl == other.__isset.updateUrl) && ((!__isset.updateUrl) || (System.Object.Equals(UpdateUrl, other.UpdateUrl))))
      && ((__isset.c2dmAccount == other.__isset.c2dmAccount) && ((!__isset.c2dmAccount) || (System.Object.Equals(C2dmAccount, other.C2dmAccount))))
      && ((__isset.nniServer == other.__isset.nniServer) && ((!__isset.nniServer) || (System.Object.Equals(NniServer, other.NniServer))));
  }

  public override int GetHashCode() {
    int hashcode = 157;
    unchecked {
      if(__isset.endpoint)
        hashcode = (hashcode * 397) + Endpoint.GetHashCode();
      if(__isset.endpointSsl)
        hashcode = (hashcode * 397) + EndpointSsl.GetHashCode();
      if(__isset.updateUrl)
        hashcode = (hashcode * 397) + UpdateUrl.GetHashCode();
      if(__isset.c2dmAccount)
        hashcode = (hashcode * 397) + C2dmAccount.GetHashCode();
      if(__isset.nniServer)
        hashcode = (hashcode * 397) + NniServer.GetHashCode();
    }
    return hashcode;
  }

  public override string ToString()
  {
    var sb = new StringBuilder("SystemConfiguration(");
    bool __first = true;
    if (Endpoint != null && __isset.endpoint)
    {
      if(!__first) { sb.Append(", "); }
      __first = false;
      sb.Append("Endpoint: ");
      sb.Append(Endpoint);
    }
    if (EndpointSsl != null && __isset.endpointSsl)
    {
      if(!__first) { sb.Append(", "); }
      __first = false;
      sb.Append("EndpointSsl: ");
      sb.Append(EndpointSsl);
    }
    if (UpdateUrl != null && __isset.updateUrl)
    {
      if(!__first) { sb.Append(", "); }
      __first = false;
      sb.Append("UpdateUrl: ");
      sb.Append(UpdateUrl);
    }
    if (C2dmAccount != null && __isset.c2dmAccount)
    {
      if(!__first) { sb.Append(", "); }
      __first = false;
      sb.Append("C2dmAccount: ");
      sb.Append(C2dmAccount);
    }
    if (NniServer != null && __isset.nniServer)
    {
      if(!__first) { sb.Append(", "); }
      __first = false;
      sb.Append("NniServer: ");
      sb.Append(NniServer);
    }
    sb.Append(")");
    return sb.ToString();
  }
}
