*&---------------------------------------------------------------------*
*& Report ZBC400_07_COMPU
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zbc400_01_compu_dom MESSAGE-ID zbc400.

PARAMETERS : pa_int1 TYPE i,
             pa_op   TYPE z07_rechenoperation,
             pa_int2 TYPE i.
"  pa_tmp  TYPE i NO-DISPLAY,


DATA : gv_result TYPE p  DECIMALS 2.

*AT SELECTION-SCREEN ON pa_int2.
*  IF pa_op = '/' AND pa_int2 = 0.
*    MESSAGE 'Division durch Null'(div) TYPE 'E'.
*  ENDIF.

AT SELECTION-SCREEN ON pa_op.
  IF pa_op NA '+-/*'.
    MESSAGE e012 with  pa_op 'von Benutzer' sy-uname '... wie immer'.
  ENDIF.



START-OF-SELECTION.
  TRY.
      CASE pa_op.
        WHEN '+'.
          gv_result = pa_int1 + pa_int2.
        WHEN '-'.
          gv_result = pa_int1 - pa_int2.
        WHEN '*'.
          gv_result = pa_int1 * pa_int2.
        WHEN '/'.
          gv_result = pa_int1 / pa_int2.
      ENDCASE.

      Message s010.
      WRITE : 'Rechenoperation'(rop) && pa_int1 && ` ` && pa_op && ` ` && pa_int2 && ` = ` && gv_result.
    CATCH cx_root INTO DATA(go_error).
      MESSAGE go_error->get_text( ) type 'I'.
      "message 'Dvision durch 0' type 'I'.
  ENDTRY.
