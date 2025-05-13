CLASS lsc_zap_i_carrier_00 DEFINITION INHERITING FROM cl_abap_behavior_saver.

  PROTECTED SECTION.

    METHODS save_modified REDEFINITION.

ENDCLASS.

CLASS lsc_zap_i_carrier_00 IMPLEMENTATION.

  METHOD save_modified.

  "Additional Save | Data copied to another table,original table cannot be modified
    DATA lt_carrier TYPE STANDARD TABLE OF zap_carrier_copy.

    IF create-carrier IS NOT INITIAL.
      lt_carrier = CORRESPONDING #( create-carrier ).
      MODIFY zap_carrier_copy FROM TABLE @lt_carrier.
    ENDIF.
  "Additional Save | Data copied to another table,original table cannot be modified

  "Unmanaged Save | Original Table can be modified
    DATA lt_conn TYPE STANDARD TABLE OF zap_connection_0.
    IF create-connection IS NOT INITIAL.
      lt_conn = CORRESPONDING #(  create-connection ).
      MODIFY zap_connection_0 FROM TABLE @lt_conn.
    ENDIF.
  "Unmanaged Save | Original Table can be modified

  ENDMETHOD.

ENDCLASS.

CLASS lhc_ZAP_I_CARRIER_00 DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.

    METHODS get_instance_authorizations FOR INSTANCE AUTHORIZATION
      IMPORTING keys REQUEST requested_authorizations FOR zap_i_carrier_00 RESULT result.

ENDCLASS.

CLASS lhc_ZAP_I_CARRIER_00 IMPLEMENTATION.

  METHOD get_instance_authorizations.
  ENDMETHOD.

ENDCLASS.
