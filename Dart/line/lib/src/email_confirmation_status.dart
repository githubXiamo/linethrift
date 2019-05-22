/**
 * Autogenerated by Thrift Compiler (0.11.0)
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 *  @generated
 */
library line.src.email_confirmation_status;

class EmailConfirmationStatus {
  static const int NOT_SPECIFIED = 0;
  static const int NOT_YET = 1;
  static const int DONE = 3;
  static const int NEED_ENFORCED_INPUT = 4;

  static final Set<int> VALID_VALUES = new Set.from([
    NOT_SPECIFIED
    , NOT_YET
    , DONE
    , NEED_ENFORCED_INPUT
  ]);
  static final Map<int, String> VALUES_TO_NAMES = {
    NOT_SPECIFIED: 'NOT_SPECIFIED'
    , NOT_YET: 'NOT_YET'
    , DONE: 'DONE'
    , NEED_ENFORCED_INPUT: 'NEED_ENFORCED_INPUT'
  };
}