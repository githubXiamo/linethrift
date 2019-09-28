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

class SquareChat
{
    static public $isValidate = false;

    static public $_TSPEC = array(
        1 => array(
            'var' => 'squareChatMid',
            'isRequired' => false,
            'type' => TType::STRING,
        ),
        2 => array(
            'var' => 'squareMid',
            'isRequired' => false,
            'type' => TType::STRING,
        ),
        3 => array(
            'var' => 'type',
            'isRequired' => false,
            'type' => TType::I32,
        ),
        4 => array(
            'var' => 'name',
            'isRequired' => false,
            'type' => TType::STRING,
        ),
        5 => array(
            'var' => 'chatImageObsHash',
            'isRequired' => false,
            'type' => TType::STRING,
        ),
        6 => array(
            'var' => 'squareChatRevision',
            'isRequired' => false,
            'type' => TType::I64,
        ),
        7 => array(
            'var' => 'maxMemberCount',
            'isRequired' => false,
            'type' => TType::I32,
        ),
        8 => array(
            'var' => 'state',
            'isRequired' => false,
            'type' => TType::I32,
        ),
    );

    /**
     * @var string
     */
    public $squareChatMid = null;
    /**
     * @var string
     */
    public $squareMid = null;
    /**
     * @var int
     */
    public $type = null;
    /**
     * @var string
     */
    public $name = null;
    /**
     * @var string
     */
    public $chatImageObsHash = null;
    /**
     * @var int
     */
    public $squareChatRevision = null;
    /**
     * @var int
     */
    public $maxMemberCount = null;
    /**
     * @var int
     */
    public $state = null;

    public function __construct($vals = null)
    {
        if (is_array($vals)) {
            if (isset($vals['squareChatMid'])) {
                $this->squareChatMid = $vals['squareChatMid'];
            }
            if (isset($vals['squareMid'])) {
                $this->squareMid = $vals['squareMid'];
            }
            if (isset($vals['type'])) {
                $this->type = $vals['type'];
            }
            if (isset($vals['name'])) {
                $this->name = $vals['name'];
            }
            if (isset($vals['chatImageObsHash'])) {
                $this->chatImageObsHash = $vals['chatImageObsHash'];
            }
            if (isset($vals['squareChatRevision'])) {
                $this->squareChatRevision = $vals['squareChatRevision'];
            }
            if (isset($vals['maxMemberCount'])) {
                $this->maxMemberCount = $vals['maxMemberCount'];
            }
            if (isset($vals['state'])) {
                $this->state = $vals['state'];
            }
        }
    }

    public function getName()
    {
        return 'SquareChat';
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
                        $xfer += $input->readString($this->squareChatMid);
                    } else {
                        $xfer += $input->skip($ftype);
                    }
                    break;
                case 2:
                    if ($ftype == TType::STRING) {
                        $xfer += $input->readString($this->squareMid);
                    } else {
                        $xfer += $input->skip($ftype);
                    }
                    break;
                case 3:
                    if ($ftype == TType::I32) {
                        $xfer += $input->readI32($this->type);
                    } else {
                        $xfer += $input->skip($ftype);
                    }
                    break;
                case 4:
                    if ($ftype == TType::STRING) {
                        $xfer += $input->readString($this->name);
                    } else {
                        $xfer += $input->skip($ftype);
                    }
                    break;
                case 5:
                    if ($ftype == TType::STRING) {
                        $xfer += $input->readString($this->chatImageObsHash);
                    } else {
                        $xfer += $input->skip($ftype);
                    }
                    break;
                case 6:
                    if ($ftype == TType::I64) {
                        $xfer += $input->readI64($this->squareChatRevision);
                    } else {
                        $xfer += $input->skip($ftype);
                    }
                    break;
                case 7:
                    if ($ftype == TType::I32) {
                        $xfer += $input->readI32($this->maxMemberCount);
                    } else {
                        $xfer += $input->skip($ftype);
                    }
                    break;
                case 8:
                    if ($ftype == TType::I32) {
                        $xfer += $input->readI32($this->state);
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
        $xfer += $output->writeStructBegin('SquareChat');
        if ($this->squareChatMid !== null) {
            $xfer += $output->writeFieldBegin('squareChatMid', TType::STRING, 1);
            $xfer += $output->writeString($this->squareChatMid);
            $xfer += $output->writeFieldEnd();
        }
        if ($this->squareMid !== null) {
            $xfer += $output->writeFieldBegin('squareMid', TType::STRING, 2);
            $xfer += $output->writeString($this->squareMid);
            $xfer += $output->writeFieldEnd();
        }
        if ($this->type !== null) {
            $xfer += $output->writeFieldBegin('type', TType::I32, 3);
            $xfer += $output->writeI32($this->type);
            $xfer += $output->writeFieldEnd();
        }
        if ($this->name !== null) {
            $xfer += $output->writeFieldBegin('name', TType::STRING, 4);
            $xfer += $output->writeString($this->name);
            $xfer += $output->writeFieldEnd();
        }
        if ($this->chatImageObsHash !== null) {
            $xfer += $output->writeFieldBegin('chatImageObsHash', TType::STRING, 5);
            $xfer += $output->writeString($this->chatImageObsHash);
            $xfer += $output->writeFieldEnd();
        }
        if ($this->squareChatRevision !== null) {
            $xfer += $output->writeFieldBegin('squareChatRevision', TType::I64, 6);
            $xfer += $output->writeI64($this->squareChatRevision);
            $xfer += $output->writeFieldEnd();
        }
        if ($this->maxMemberCount !== null) {
            $xfer += $output->writeFieldBegin('maxMemberCount', TType::I32, 7);
            $xfer += $output->writeI32($this->maxMemberCount);
            $xfer += $output->writeFieldEnd();
        }
        if ($this->state !== null) {
            $xfer += $output->writeFieldBegin('state', TType::I32, 8);
            $xfer += $output->writeI32($this->state);
            $xfer += $output->writeFieldEnd();
        }
        $xfer += $output->writeFieldStop();
        $xfer += $output->writeStructEnd();
        return $xfer;
    }
}