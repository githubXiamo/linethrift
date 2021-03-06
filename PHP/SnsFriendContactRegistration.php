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

class SnsFriendContactRegistration
{
    static public $isValidate = false;

    static public $_TSPEC = array(
        1 => array(
            'var' => 'contact',
            'isRequired' => false,
            'type' => TType::STRUCT,
            'class' => '\Contact',
        ),
        2 => array(
            'var' => 'snsIdType',
            'isRequired' => false,
            'type' => TType::I32,
        ),
        3 => array(
            'var' => 'snsUserId',
            'isRequired' => false,
            'type' => TType::STRING,
        ),
    );

    /**
     * @var \Contact
     */
    public $contact = null;
    /**
     * @var int
     */
    public $snsIdType = null;
    /**
     * @var string
     */
    public $snsUserId = null;

    public function __construct($vals = null)
    {
        if (is_array($vals)) {
            if (isset($vals['contact'])) {
                $this->contact = $vals['contact'];
            }
            if (isset($vals['snsIdType'])) {
                $this->snsIdType = $vals['snsIdType'];
            }
            if (isset($vals['snsUserId'])) {
                $this->snsUserId = $vals['snsUserId'];
            }
        }
    }

    public function getName()
    {
        return 'SnsFriendContactRegistration';
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
                case 1:
                    if ($ftype == TType::STRUCT) {
                        $this->contact = new \Contact();
                        $xfer += $this->contact->read($input);
                    } else {
                        $xfer += $input->skip($ftype);
                    }
                    break;
                case 2:
                    if ($ftype == TType::I32) {
                        $xfer += $input->readI32($this->snsIdType);
                    } else {
                        $xfer += $input->skip($ftype);
                    }
                    break;
                case 3:
                    if ($ftype == TType::STRING) {
                        $xfer += $input->readString($this->snsUserId);
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
        $xfer += $output->writeStructBegin('SnsFriendContactRegistration');
        if ($this->contact !== null) {
            if (!is_object($this->contact)) {
                throw new TProtocolException('Bad type in structure.', TProtocolException::INVALID_DATA);
            }
            $xfer += $output->writeFieldBegin('contact', TType::STRUCT, 1);
            $xfer += $this->contact->write($output);
            $xfer += $output->writeFieldEnd();
        }
        if ($this->snsIdType !== null) {
            $xfer += $output->writeFieldBegin('snsIdType', TType::I32, 2);
            $xfer += $output->writeI32($this->snsIdType);
            $xfer += $output->writeFieldEnd();
        }
        if ($this->snsUserId !== null) {
            $xfer += $output->writeFieldBegin('snsUserId', TType::STRING, 3);
            $xfer += $output->writeString($this->snsUserId);
            $xfer += $output->writeFieldEnd();
        }
        $xfer += $output->writeFieldStop();
        $xfer += $output->writeStructEnd();
        return $xfer;
    }
}
