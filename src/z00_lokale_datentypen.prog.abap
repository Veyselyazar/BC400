*&---------------------------------------------------------------------*
*& Report Z00_LOKALE_DATENTYPEN
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT Z00_LOKALE_DATENTYPEN.

types gtv_waehrung type p LENGTH 5 DECIMALS 3.
types gtv_ort type c LENGTH 20.

data gv_wohnort type gtv_ort.
data gv_urlausbort type gtv_ort.

types gtv_kurz type gtv_ort.
data gv_rechnungsort type gtv_kurz.

data gv_euro type gtv_waehrung.
data gv_usd  type gtv_waehrung.

types: BEGIN OF gty_name,
          vorname type c LENGTH 30,
          nachname type c LENGTH 40,
       END OF gty_name.

data gs_name type gty_name.
gs_name-vorname = 'Stefanie'.
gs_name-nachname = 'Langne'.

PERFORM up USING gs_name.

BREAK-POINT.

form up using ls_name type gty_name.

ENDFORM.
