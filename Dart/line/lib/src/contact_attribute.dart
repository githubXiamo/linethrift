/**
 * Autogenerated by Thrift Compiler (0.11.0)
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 *  @generated
 */
library line.src.contact_attribute;

class ContactAttribute {
  static const int CONTACT_ATTRIBUTE_CAPABLE_VOICE_CALL = 1;
  static const int CONTACT_ATTRIBUTE_CAPABLE_VIDEO_CALL = 2;
  static const int CONTACT_ATTRIBUTE_CAPABLE_MY_HOME = 16;
  static const int CONTACT_ATTRIBUTE_CAPABLE_BUDDY = 32;

  static final Set<int> VALID_VALUES = new Set.from([
    CONTACT_ATTRIBUTE_CAPABLE_VOICE_CALL
    , CONTACT_ATTRIBUTE_CAPABLE_VIDEO_CALL
    , CONTACT_ATTRIBUTE_CAPABLE_MY_HOME
    , CONTACT_ATTRIBUTE_CAPABLE_BUDDY
  ]);
  static final Map<int, String> VALUES_TO_NAMES = {
    CONTACT_ATTRIBUTE_CAPABLE_VOICE_CALL: 'CONTACT_ATTRIBUTE_CAPABLE_VOICE_CALL'
    , CONTACT_ATTRIBUTE_CAPABLE_VIDEO_CALL: 'CONTACT_ATTRIBUTE_CAPABLE_VIDEO_CALL'
    , CONTACT_ATTRIBUTE_CAPABLE_MY_HOME: 'CONTACT_ATTRIBUTE_CAPABLE_MY_HOME'
    , CONTACT_ATTRIBUTE_CAPABLE_BUDDY: 'CONTACT_ATTRIBUTE_CAPABLE_BUDDY'
  };
}