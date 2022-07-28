*&---------------------------------------------------------------------*
*& Report Z01_PROZENTUALE_AUSLASTUNG
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT Z01_PROZENTUALE_AUSLASTUNG.

PARAMETERS: pa_max type sbc400focc-seatsmax,
            pa_occ type sbc400focc-seatsocc.

data gv_percentage type sbc400focc-percentage.
data gv_string type string.

gv_percentage = pa_occ /  pa_max * 100 .
gv_string = gv_percentage.
write: 'Auslastung', gv_percentage, '%', 'Länge des Ergebnisses', strlen( gv_string ).
