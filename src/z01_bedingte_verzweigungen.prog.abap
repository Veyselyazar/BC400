*&---------------------------------------------------------------------*
*& Report Z01_BEDINGTE_VERZWEIGUNGEN
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT z01_bedingte_verzweigungen.


DATA v1 TYPE string VALUE 'OttoAb'.
DATA v2 TYPE string VALUE 'MARA'.



CASE strlen( v1 ).
  WHEN strlen( v2 ).
    WRITE 'gleiche Länge'.
  WHEN 5.
    WRITE 'Länge ist 5'.
  WHEN OTHERS.
    WRITE 'Weder Länge identisch noch eine Länge von 5'.
ENDCASE.



*PARAMETERS pa_car TYPE s_carr_id.
*
*case pa_car.
*  when 'AA' or 'UA'.
*
*    pa_car = 'LH'.
*    if sy-uname = 'MÜLLER'.
*
*
*    else.
*
*    endif.
*  when 'LH'.
*
*
*  when others.
*
*
*ENDCASE.
*uline.
*write 'Programmende'.

*IF ( pa_car =  'LH' AND sy-uname = 'SEPTRAIN-01' ) OR sy-datum = '20211221'.
*  WRITE 'Lufthansa und Septrain-01 als User'.
*
*ELSEIF sy-uzeit < '120000'.
*  WRITE 'Wir haben vormittag'.
*
*ELSE.
*
*ENDIF.
