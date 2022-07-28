*&---------------------------------------------------------------------*
*& Report Z01_SINGLE_FROM_SPFLI
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT z01_schleife_from_spfli_neu.

PARAMETERS: pa_car TYPE spfli-carrid.
          "  pa_con TYPE spfli-connid.

"DATA gs_spfli TYPE spfli.


SELECT fltime, carrid, connid, cityfrom, cityto FROM spfli
  into @data(gs_spfli)
  "INTO CORRESPONDING FIELDS OF gs_spfli
  WHERE carrid = @pa_car.


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
