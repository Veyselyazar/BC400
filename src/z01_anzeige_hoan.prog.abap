*&---------------------------------------------------------------------*
*& Report Z01_ANZEIGE_FLUGGESELLSCHAFT
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT z01_anzeige_hoan.

PARAMETERS pa_car TYPE scarr-carrid.

DATA gs_scarr TYPE scarr.

CALL METHOD cl_net310_flightmodel=>read_carrier
  EXPORTING
    iv_carrid  = pa_car
  IMPORTING
    es_carrier = gs_scarr.



WRITE: gs_scarr-carrid,
       gs_scarr-carrname,
       gs_scarr-currcode,
       gs_scarr-url(40).
