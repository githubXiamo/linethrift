<?php
/**
 * Autogenerated by Thrift Compiler (0.14.0)
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 *  @generated
 */
use Thrift\Base\TBase;
use Thrift\Type\TType;
use Thrift\Type\TMessageType;
use Thrift\Exception\TException;
use Thrift\Exception\TProtocolException;
use Thrift\Protocol\TProtocol;
use Thrift\Protocol\TBinaryProtocolAccelerated;
use Thrift\Exception\TApplicationException;

final class LoginType
{
    const ID_CREDENTIAL = 0;

    const QRCODE = 1;

    const ID_CREDENTIAL_WITH_E2EE = 2;

    static public $__names = array(
        0 => 'ID_CREDENTIAL',
        1 => 'QRCODE',
        2 => 'ID_CREDENTIAL_WITH_E2EE',
    );
}

