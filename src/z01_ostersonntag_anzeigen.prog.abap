*&---------------------------------------------------------------------*
*& Report Z01_OSTERSONNTAG_ANLEGEN
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT Z01_OSTERSONNTAG_ANZEIGEN.

PARAMETERS pa_jahr type n LENGTH 4. " 2021 2022 3015  0 1 2 3 4 5 6 7 8 9
data gv_ostersonntag type sy-datum. " YYYYMMDD
data gv_karfreitag type d . "YYYYMMDD
data gv_ostermontag type sy-datum.

CALL FUNCTION 'EASTER_GET_DATE'
  EXPORTING
    " Formalparameter        Aktualparameter
     " <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
    year            =        pa_jahr
 IMPORTING
   " Formalparameter      Aktualparameter
   " >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
  EASTERDATE            = gv_ostersonntag.
gv_karfreitag = gv_ostersonntag - 2.
gv_ostermontag = gv_ostersonntag + 1.


write: 'Ostersonntag ist der',
        gv_ostersonntag.
NEW-LINE.
write: 'Karfreitag ist der', gv_karfreitag DD/MM/YYYY. "09.04.2023
WRITE :/ 'Ostermontag ist der', gv_ostermontag.
