*&---------------------------------------------------------------------*
*& Report Z01_PLZ_ANZEIGEN
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT z01_plz_anzeigen.

PARAMETERS pa_car type s_carr_id.
PARAMETERS pa_plz TYPE z00_plz.
DATA gv_postleitzahl LIKE pa_plz.
WRITE: 'Postleitzahl', pa_plz.



CONSTANTS gv_pi type p LENGTH 3 value '3.14'.

data %%abc type i.

%%abc = 5.
