*----------------------------------------------------------------------*
***INCLUDE MBC400_UDS_DI01 .
*----------------------------------------------------------------------*
*&---------------------------------------------------------------------*
*&      Module  USER_COMMAND_0100  INPUT
*&---------------------------------------------------------------------*
MODULE user_command_0100 INPUT.

  CASE ok_code.

    WHEN 'GO'.

      MOVE-CORRESPONDING bc400_s_dynconn TO gs_connection.

      CALL FUNCTION 'BC400_DDS_CONNECTION_GET'
        EXPORTING
          iv_carrid     = gs_connection-carrid
          iv_connid     = gs_connection-connid
        IMPORTING
          es_connection = gs_connection
        EXCEPTIONS
          no_data       = 1
          OTHERS        = 2.

      IF sy-subrc <> 0.
        CLEAR bc400_s_dynconn.

        MESSAGE i042(bc400) WITH gs_connection-carrid
                                 gs_connection-connid. "flight not found
      ELSE.
        MOVE-CORRESPONDING gs_connection TO bc400_s_dynconn.

        CALL FUNCTION 'BC400_DDS_FLIGHTLIST_GET'
          EXPORTING
            iv_carrid  = gs_connection-carrid
            iv_connid  = gs_connection-connid
          IMPORTING
            et_flights = gt_flights
          EXCEPTIONS
            no_data    = 1
            OTHERS     = 2.

        IF sy-subrc <> 0.
          CLEAR gt_flights.
        ENDIF.
        SET SCREEN 200.
      ENDIF.

  ENDCASE.
ENDMODULE.                 " USER_COMMAND_0100  INPUT
