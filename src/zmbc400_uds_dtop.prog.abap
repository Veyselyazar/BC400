*&---------------------------------------------------------------------*
*& Include MBC400_UDS_DTOP             Modulpool        SAPMBC400_UDS_D
*&
*&---------------------------------------------------------------------*
PROGRAM  sapmbc400_uds_d.

DATA ok_code TYPE syucomm.

TABLES bc400_s_dynconn.

DATA gs_connection TYPE bc400_s_connection.

DATA: go_container TYPE REF TO cl_gui_custom_container,
      go_alv_grid  TYPE REF TO cl_gui_alv_grid.

DATA  gt_flights TYPE bc400_t_flights.
