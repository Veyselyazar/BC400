*&---------------------------------------------------------------------*
*& Report ZWHILE_SCHLEIFE
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zwhile_schleife.
DATA gv_dl TYPE i VALUE 20.
data gv_datum type d.



perform up.

WHILE gv_dl > 0.
  gv_dl = gv_dl - 1.
  CHECK sy-index MOD 2 = 0 .
  WRITE: / 'Schleife'(cir), sy-index.

ENDWHILE.
WRITE / 'Programmende'.
Perform up.
"data(gv_datum) = sy-datum.






gv_datum = sy-datum.




form up.
  statics lv_lokal type i.   "Inhalt 0

  add 1 to lv_lokal.
ENDFORM.
