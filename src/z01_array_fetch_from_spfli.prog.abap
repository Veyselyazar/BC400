*&---------------------------------------------------------------------*
*& Report Z01_SINGLE_FROM_SPFLI
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT z01_array_fetch_from_spfli.

PARAMETERS: pa_car TYPE spfli-carrid.
"  pa_con TYPE spfli-connid.

"DATA gs_spfli TYPE spfli.
DATA gt_spfli TYPE TABLE OF spfli.


SELECT carrid FROM spfli
  INTO TABLE gt_spfli
WHERE carrid = pa_car

ORDER BY carrid DESCENDING connid ASCENDING.

CASE syst-subrc.
  WHEN 0.
    SORT gt_spfli BY cityto DESCENDING cityfrom ASCENDING.
    LOOP AT gt_spfli INTO DATA(gs_spfli). "where cityfrom = 'FRANKFURT'.
      WRITE: / sy-tabix,  "Tabellenzeile der internen Tabelle
              gs_spfli-carrid,
              gs_spfli-connid,
              gs_spfli-cityfrom,
              gs_spfli-cityto.
    ENDLOOP.

    ULINE.
    READ TABLE gt_spfli INTO gs_spfli
      WITH KEY carrid = 'LH'
               connid = 400.

    IF sy-subrc = 0.
      MESSAGE 'Datensatz LH 400 wurde gefunden' TYPE 'I'.
    ELSE.
      MESSAGE 'Datensatz LH 400 wurde nicht gefunden' TYPE 'I'.
    ENDIF.

  WHEN 4.
    WRITE: 'Kein treffer bei dieser Selektion'.
ENDCASE.
