*&---------------------------------------------------------------------*
*& Report Z01_SINGLE_FROM_SPFLI
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT z01_schleife_from_spfli.

PARAMETERS: pa_car TYPE spfli-carrid.
          "  pa_con TYPE spfli-connid.

DATA gs_spfli TYPE spfli.
data gs_2 type spfli.


SELECT * FROM spfli
  INTO gs_spfli

  WHERE carrid = pa_car.

  if sy-dbcnt = 1.
    gs_2 = gs_spfli.
 endif.
  WRITE: / syst-dbcnt,
           gs_spfli-carrid,
           gs_spfli-connid,
           gs_spfli-cityfrom,
           gs_spfli-cityto.

ENDSELECT.

CASE syst-subrc.
  when 0.
    uline.
    write: 'Anzahl Treffer', syst-dbcnt.
  WHEN 4.
    WRITE: 'Diese flugnummer existiert nicht zu dieser Fluggesellschaft'.
ENDCASE.
