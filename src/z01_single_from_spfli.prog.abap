*&---------------------------------------------------------------------*
*& Report Z01_SINGLE_FROM_SPFLI
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT z01_single_from_spfli.

PARAMETERS: pa_car TYPE spfli-carrid,
            pa_con TYPE spfli-connid.

DATA gs_spfli TYPE spfli.


SELECT SINGLE * FROM spfli
  INTO gs_spfli
  WHERE carrid = pa_car
    AND connid = pa_con.

CASE sy-subrc.
  WHEN 0.
    WRITE: / gs_spfli-carrid,
             gs_spfli-connid,
             gs_spfli-cityfrom,
             gs_spfli-cityto.
  WHEN 4.
    WRITE: 'Diese flugnummer existiert nicht zu dieser Fluggesellschaft'.
ENDCASE.
