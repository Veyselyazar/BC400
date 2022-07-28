*&---------------------------------------------------------------------*
*& Report ZDO_SCHLEIFE
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zdo_schleife.

DATA gv_og TYPE i VALUE 5.


DO.
  IF sy-index > gv_og.

    EXIT.
  ENDIF.

  WRITE: / 'Schleife', sy-index.
  DO text-con TIMES.
    WRITE: /15 'Innere Schleife', sy-index.
  ENDDO.



ENDDO.
