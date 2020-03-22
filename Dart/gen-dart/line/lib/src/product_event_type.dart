/**
 * Autogenerated by Thrift Compiler (0.14.0)
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 *  @generated
 */
library line.src.product_event_type;

class ProductEventType {
  static const int NO_EVENT = 0;
  static const int CARRIER_ANY = 65537;
  static const int BUDDY_ANY = 131073;
  static const int INSTALL_IOS = 196609;
  static const int INSTALL_ANDROID = 196610;
  static const int MISSION_ANY = 262145;
  static const int MUSTBUY_ANY = 327681;

  static final Set<int> VALID_VALUES = new Set.from([
    NO_EVENT
    , CARRIER_ANY
    , BUDDY_ANY
    , INSTALL_IOS
    , INSTALL_ANDROID
    , MISSION_ANY
    , MUSTBUY_ANY
  ]);
  static final Map<int, String> VALUES_TO_NAMES = {
    NO_EVENT: 'NO_EVENT'
    , CARRIER_ANY: 'CARRIER_ANY'
    , BUDDY_ANY: 'BUDDY_ANY'
    , INSTALL_IOS: 'INSTALL_IOS'
    , INSTALL_ANDROID: 'INSTALL_ANDROID'
    , MISSION_ANY: 'MISSION_ANY'
    , MUSTBUY_ANY: 'MUSTBUY_ANY'
  };
}