<?php
/**
 * Autogenerated by Thrift Compiler (0.13.0)
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

class CallService_getPersonalInfos_result
{
    static public $isValidate = false;

    static public $_TSPEC = array(
        0 => array(
            'var' => 'success',
            'isRequired' => false,
            'type' => TType::MAP,
            'ktype' => TType::I32,
            'vtype' => TType::STRING,
            'key' => array(
                'type' => TType::I32,
            ),
            'val' => array(
                'type' => TType::STRING,
                ),
        ),
        1 => array(
            'var' => 'e',
            'isRequired' => false,
            'type' => TType::STRUCT,
            'class' => '\TalkException',
        ),
    );

    /**
     * @var array
     */
    public $success = null;
    /**
     * @var \TalkException
     */
    public $e = null;

    public function __construct($vals = null)
    {
        if (is_array($vals)) {
            if (isset($vals['success'])) {
                $this->success = $vals['success'];
            }
            if (isset($vals['e'])) {
                $this->e = $vals['e'];
            }
        }
    }

    public function getName()
    {
        return 'CallService_getPersonalInfos_result';
    }


    public function read($input)
    {
        $xfer = 0;
        $fname = null;
        $ftype = 0;
        $fid = 0;
        $xfer += $input->readStructBegin($fname);
        while (true) {
            $xfer += $input->readFieldBegin($fname, $ftype, $fid);
            if ($ftype == TType::STOP) {
                break;
            }
            switch ($fid) {
                case 0:
                    if ($ftype == TType::MAP) {
                        $this->success = array();
                        $_size2272 = 0;
                        $_ktype2273 = 0;
                        $_vtype2274 = 0;
                        $xfer += $input->readMapBegin($_ktype2273, $_vtype2274, $_size2272);
                        for ($_i2276 = 0; $_i2276 < $_size2272; ++$_i2276) {
                            $key2277 = 0;
                            $val2278 = '';
                            $xfer += $input->readI32($key2277);
                            $xfer += $input->readString($val2278);
                            $this->success[$key2277] = $val2278;
                        }
                        $xfer += $input->readMapEnd();
                    } else {
                        $xfer += $input->skip($ftype);
                    }
                    break;
                case 1:
                    if ($ftype == TType::STRUCT) {
                        $this->e = new \TalkException();
                        $xfer += $this->e->read($input);
                    } else {
                        $xfer += $input->skip($ftype);
                    }
                    break;
                default:
                    $xfer += $input->skip($ftype);
                    break;
            }
            $xfer += $input->readFieldEnd();
        }
        $xfer += $input->readStructEnd();
        return $xfer;
    }

    public function write($output)
    {
        $xfer = 0;
        $xfer += $output->writeStructBegin('CallService_getPersonalInfos_result');
        if ($this->success !== null) {
            if (!is_array($this->success)) {
                throw new TProtocolException('Bad type in structure.', TProtocolException::INVALID_DATA);
            }
            $xfer += $output->writeFieldBegin('success', TType::MAP, 0);
            $output->writeMapBegin(TType::I32, TType::STRING, count($this->success));
            foreach ($this->success as $kiter2279 => $viter2280) {
                $xfer += $output->writeI32($kiter2279);
                $xfer += $output->writeString($viter2280);
            }
            $output->writeMapEnd();
            $xfer += $output->writeFieldEnd();
        }
        if ($this->e !== null) {
            $xfer += $output->writeFieldBegin('e', TType::STRUCT, 1);
            $xfer += $this->e->write($output);
            $xfer += $output->writeFieldEnd();
        }
        $xfer += $output->writeFieldStop();
        $xfer += $output->writeStructEnd();
        return $xfer;
    }
}