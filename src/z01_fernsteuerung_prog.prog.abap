*&---------------------------------------------------------------------*
*& Report Z01_FERNSTEUERUNG_PROG
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT Z01_FERNSTEUERUNG_PROG.
data: gv_int1 type i value 45,
      gv_int2 like gv_int1 value 12,
      gv_pa value '+'.


SUBMIT zbc400_01_compu_dom
        WITH pa_int1 = gv_int1
        WITH pa_int2 = gv_int2
        WITH pa_op = '-'
        WITH pa_tmp = 655
"VIA SELECTION-SCREEN
AND RETURN.

message 'Zurück im aufrufenden Programm' type 'I'.
