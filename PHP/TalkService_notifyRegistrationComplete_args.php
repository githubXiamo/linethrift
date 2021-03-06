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

class TalkService_notifyRegistrationComplete_args
{
    static public $isValidate = false;

    static public $_TSPEC = array(
        2 => array(
            'var' => 'udidHash',
            'isRequired' => false,
            'type' => TType::STRING,
        ),
        3 => array(
            'var' => 'applicationTypeWithExtensions',
            'isRequired' => false,
            'type' => TType::STRING,
        ),
    );

    /**
     * @var string
     */
    public $udidHash = null;
    /**
     * @var string
     */
    public $applicationTypeWithExtensions = null;

    public function __construct($vals = null)
    {
        if (is_array($vals)) {
            if (isset($vals['udidHash'])) {
                $this->udidHash = $vals['udidHash'];
            }
            if (isset($vals['applicationTypeWithExtensions'])) {
                $this->applicationTypeWithExtensions = $vals['applicationTypeWithExtensions'];
            }
        }
    }

    public function getName()
    {
        return 'TalkService_notifyRegistrationComplete_args';
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
                case 2:
                    if ($ftype == TType::STRING) {
                        $xfer += $input->readString($this->udidHash);
                    } else {
                        $xfer += $input->skip($ftype);
                    }
                    break;
                case 3:
                    if ($ftype == TType::STRING) {
                        $xfer += $input->readString($this->applicationTypeWithExtensions);
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
        $xfer += $output->writeStructBegin('TalkService_notifyRegistrationComplete_args');
        if ($this->udidHash !== null) {
            $xfer += $output->writeFieldBegin('udidHash', TType::STRING, 2);
            $xfer += $output->writeString($this->udidHash);
            $xfer += $output->writeFieldEnd();
        }
        if ($this->applicationTypeWithExtensions !== null) {
            $xfer += $output->writeFieldBegin('applicationTypeWithExtensions', TType::STRING, 3);
            $xfer += $output->writeString($this->applicationTypeWithExtensions);
            $xfer += $output->writeFieldEnd();
        }
        $xfer += $output->writeFieldStop();
        $xfer += $output->writeStructEnd();
        return $xfer;
    }
}
