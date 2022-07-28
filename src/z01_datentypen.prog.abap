*&---------------------------------------------------------------------*
*& Report Z01_DATENTYPEN
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT z01_datentypen.

PARAMETERS pa_chk AS CHECKBOX DEFAULT 'X'.
PARAMETERS pa_p type p LENGTH 16 DECIMALS 14. "8 Byte -> 15 Ziffern

pa_p = '999.954'.

*IF pa_chk <> abap_false.
*  MESSAGE 'True' type 'I'.
*
*ENDIF.

DATA gv_datum TYPE sy-datum VALUE '20211221'.

uline.
gv_datum+4(2) = '01'.
write: 'Tag', gv_datum+6.
write: / 'Monat', gv_datum+4(2),
       / 'Jahr', gv_datum(4).

ADD 30 TO gv_datum.
WRITE: / 'Datum', gv_datum .

DATA gv_zeit TYPE sy-uzeit VALUE 5432.                      "'113522'.
WRITE: / 'Zeit', gv_zeit.


DATA gv_c TYPE c LENGTH 200000.  "Character Länge 1

DATA gv_n TYPE n LENGTH 5 VALUE 34. "0 1 2 3 4 5 6 7 8 9
