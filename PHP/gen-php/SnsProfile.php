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

class SnsProfile
{
    static public $isValidate = false;

    static public $_TSPEC = array(
        1 => array(
            'var' => 'snsUserId',
            'isRequired' => false,
            'type' => TType::STRING,
        ),
        2 => array(
            'var' => 'snsUserName',
            'isRequired' => false,
            'type' => TType::STRING,
        ),
        3 => array(
            'var' => 'email',
            'isRequired' => false,
            'type' => TType::STRING,
        ),
        4 => array(
            'var' => 'thumbnailUrl',
            'isRequired' => false,
            'type' => TType::STRING,
        ),
    );

    /**
     * @var string
     */
    public $snsUserId = null;
    /**
     * @var string
     */
    public $snsUserName = null;
    /**
     * @var string
     */
    public $email = null;
    /**
     * @var string
     */
    public $thumbnailUrl = null;

    public function __construct($vals = null)
    {
        if (is_array($vals)) {
            if (isset($vals['snsUserId'])) {
                $this->snsUserId = $vals['snsUserId'];
            }
            if (isset($vals['snsUserName'])) {
                $this->snsUserName = $vals['snsUserName'];
            }
            if (isset($vals['email'])) {
                $this->email = $vals['email'];
            }
            if (isset($vals['thumbnailUrl'])) {
                $this->thumbnailUrl = $vals['thumbnailUrl'];
            }
        }
    }

    public function getName()
    {
        return 'SnsProfile';
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
                    if ($ftype == TType::STRING) {
                        $xfer += $input->readString($this->snsUserId);
                    } else {
                        $xfer += $input->skip($ftype);
                    }
                    break;
                case 2:
                    if ($ftype == TType::STRING) {
                        $xfer += $input->readString($this->snsUserName);
                    } else {
                        $xfer += $input->skip($ftype);
                    }
                    break;
                case 3:
                    if ($ftype == TType::STRING) {
                        $xfer += $input->readString($this->email);
                    } else {
                        $xfer += $input->skip($ftype);
                    }
                    break;
                case 4:
                    if ($ftype == TType::STRING) {
                        $xfer += $input->readString($this->thumbnailUrl);
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
        $xfer += $output->writeStructBegin('SnsProfile');
        if ($this->snsUserId !== null) {
            $xfer += $output->writeFieldBegin('snsUserId', TType::STRING, 1);
            $xfer += $output->writeString($this->snsUserId);
            $xfer += $output->writeFieldEnd();
        }
        if ($this->snsUserName !== null) {
            $xfer += $output->writeFieldBegin('snsUserName', TType::STRING, 2);
            $xfer += $output->writeString($this->snsUserName);
            $xfer += $output->writeFieldEnd();
        }
        if ($this->email !== null) {
            $xfer += $output->writeFieldBegin('email', TType::STRING, 3);
            $xfer += $output->writeString($this->email);
            $xfer += $output->writeFieldEnd();
        }
        if ($this->thumbnailUrl !== null) {
            $xfer += $output->writeFieldBegin('thumbnailUrl', TType::STRING, 4);
            $xfer += $output->writeString($this->thumbnailUrl);
            $xfer += $output->writeFieldEnd();
        }
        $xfer += $output->writeFieldStop();
        $xfer += $output->writeStructEnd();
        return $xfer;
    }
}