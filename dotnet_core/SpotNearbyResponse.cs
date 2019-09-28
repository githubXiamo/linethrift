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



public partial class SpotNearbyResponse : TBase
{
  private List<SpotNearbyItem> _spotNearbyItems;

  public List<SpotNearbyItem> SpotNearbyItems
  {
    get
    {
      return _spotNearbyItems;
    }
    set
    {
      __isset.spotNearbyItems = true;
      this._spotNearbyItems = value;
    }
  }


  public Isset __isset;
  public struct Isset
  {
    public bool spotNearbyItems;
  }

  public SpotNearbyResponse()
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
                SpotNearbyItems = new List<SpotNearbyItem>();
                TList _list8 = await iprot.ReadListBeginAsync(cancellationToken);
                for(int _i9 = 0; _i9 < _list8.Count; ++_i9)
                {
                  SpotNearbyItem _elem10;
                  _elem10 = new SpotNearbyItem();
                  await _elem10.ReadAsync(iprot, cancellationToken);
                  SpotNearbyItems.Add(_elem10);
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
      var struc = new TStruct("SpotNearbyResponse");
      await oprot.WriteStructBeginAsync(struc, cancellationToken);
      var field = new TField();
      if (SpotNearbyItems != null && __isset.spotNearbyItems)
      {
        field.Name = "spotNearbyItems";
        field.Type = TType.List;
        field.ID = 1;
        await oprot.WriteFieldBeginAsync(field, cancellationToken);
        {
          await oprot.WriteListBeginAsync(new TList(TType.Struct, SpotNearbyItems.Count), cancellationToken);
          foreach (SpotNearbyItem _iter11 in SpotNearbyItems)
          {
            await _iter11.WriteAsync(oprot, cancellationToken);
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
    var sb = new StringBuilder("SpotNearbyResponse(");
    bool __first = true;
    if (SpotNearbyItems != null && __isset.spotNearbyItems)
    {
      if(!__first) { sb.Append(", "); }
      __first = false;
      sb.Append("SpotNearbyItems: ");
      sb.Append(SpotNearbyItems);
    }
    sb.Append(")");
    return sb.ToString();
  }
}
