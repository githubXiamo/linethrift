/**
 * Autogenerated by Thrift Compiler (0.13.0)
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 *  @generated
 */
package {

import org.apache.thrift.Set;
import flash.utils.ByteArray;
import flash.utils.Dictionary;

import org.apache.thrift.*;
import org.apache.thrift.meta_data.*;
import org.apache.thrift.protocol.*;


  public class MessageBoxV2MessageId implements TBase   {
    private static const STRUCT_DESC:TStruct = new TStruct("MessageBoxV2MessageId");
    private static const DELIVERED_TIME_FIELD_DESC:TField = new TField("deliveredTime", TType.I64, 1);
    private static const MESSAGE_ID_FIELD_DESC:TField = new TField("messageId", TType.I64, 2);

    private var _