*&---------------------------------------------------------------------*
*& Report Z01_UNTERPROGRAMM
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT Z01_UNTERPROGRAMM.

PARAMETERS pa_zahl type decfloat16.

PERFORM ausgabe using pa_zahl.
PERFORM ausgabe using 45.
PERFORM ausgabe using 100.


form ausgabe using value(lv_zahl) type numeric. "i, int8, f, p, decfloat16 (34)
  add 5 to lv_zahl.
  write: / 'Zahl aus Unterprogramm', lv_zahl.
ENDFORM.
