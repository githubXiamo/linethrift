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

class UpdateSquareAuthorityRequest
{
    static public $isValidate = false;

    static public $_TSPEC = array(
        2 => array(
            'var' => 'updateAttributes',
            'isRequired' => false,
            'type' => TType::SET,
            'etype' => TType::I32,
            'elem' => array(
                'type' => TType::I32,
                ),
        ),
        3 => array(
            'var' => 'authority',
            'isRequired' => false,
            'type' => TType::STRUCT,
            'class' => '\SquareAuthority',
        ),
    );

    /**
     * @var int[]
     */
    public $updateAttributes = null;
    /**
     * @var \SquareAuthority
     */
    public $authority = null;

    public function __construct($vals = null)
    {
        if (is_array($vals)) {
            if (isset($vals['updateAttributes'])) {
                $this->updateAttributes = $vals['updateAttributes'];
            }
            if (isset($vals['authority'])) {
                $this->authority = $vals['authority'];
            }
        }
    }

    public function getName()
    {
        return 'UpdateSquareAuthorityRequest';
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
                    if ($ftype == TType::SET) {
                        $this->updateAttributes = array();
                        $_size869 = 0;
                        $_etype872 = 0;
                        $xfer += $input->readSetBegin($_etype872, $_size869);
                        for ($_i873 = 0; $_i873 < $_size869; ++$_i873) {
                            $elem874 = null;
                            $xfer += $input->readI32($elem874);
                            $this->updateAttributes[$elem874] = true;
                        }
                        $xfer += $input->readSetEnd();
                    } else {
                        $xfer += $input->skip($ftype);
                    }
                    break;
                case 3:
                    if ($ftype == TType::STRUCT) {
                        $this->authority = new \SquareAuthority();
                        $xfer += $this->authority->read($input);
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
        $xfer += $output->writeStructBegin('UpdateSquareAuthorityRequest');
        if ($this->updateAttributes !== null) {
            if (!is_array($this->updateAttributes)) {
                throw new TProtocolException('Bad type in structure.', TProtocolException::INVALID_DATA);
            }
            $xfer += $output->writeFieldBegin('updateAttributes', TType::SET, 2);
            $output->writeSetBegin(TType::I32, count($this->updateAttributes));
            foreach ($this->updateAttributes as $iter875 => $iter876) {
                $xfer += $output->writeI32($iter875);
            }
            $output->writeSetEnd();
            $xfer += $output->writeFieldEnd();
        }
        if ($this->authority !== null) {
            if (!is_object($this->authority)) {
                throw new TProtocolException('Bad type in structure.', TProtocolException::INVALID_DATA);
            }
            $xfer += $output->writeFieldBegin('authority', TType::STRUCT, 3);
            $xfer += $this->authority->write($output);
            $xfer += $output->writeFieldEnd();
        }
        $xfer += $output->writeFieldStop();
        $xfer += $output->writeStructEnd();
        return $xfer;
    }
}