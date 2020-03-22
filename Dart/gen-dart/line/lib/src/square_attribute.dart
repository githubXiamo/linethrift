/**
 * Autogenerated by Thrift Compiler (0.14.0)
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 *  @generated
 */
library line.src.square_attribute;

class SquareAttribute {
  static const int NAME = 1;
  static const int WELCOME_MESSAGE = 2;
  static const int PROFILE_IMAGE = 3;
  static const int DESCRIPTION = 4;
  static const int SEARCHABLE = 6;
  static const int CATEGORY = 7;
  static const int INVITATION_URL = 8;
  static const int ABLE_TO_USE_INVITATION_URL = 9;
  static const int STATE = 10;

  static final Set<int> VALID_VALUES = new Set.from([
    NAME
    , WELCOME_MESSAGE
    , PROFILE_IMAGE
    , DESCRIPTION
    , SEARCHABLE
    , CATEGORY
    , INVITATION_URL
    , ABLE_TO_USE_INVITATION_URL
    , STATE
  ]);
  static final Map<int, String> VALUES_TO_NAMES = {
    NAME: 'NAME'
    , WELCOME_MESSAGE: 'WELCOME_MESSAGE'
    , PROFILE_IMAGE: 'PROFILE_IMAGE'
    , DESCRIPTION: 'DESCRIPTION'
    , SEARCHABLE: 'SEARCHABLE'
    , CATEGORY: 'CATEGORY'
    , INVITATION_URL: 'INVITATION_URL'
    , ABLE_TO_USE_INVITATION_URL: 'ABLE_TO_USE_INVITATION_URL'
    , STATE: 'STATE'
  };
}