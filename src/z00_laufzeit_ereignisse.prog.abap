*&---------------------------------------------------------------------*
*& Report Z00_LAUFZEIT_EREIGNISSE
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT z00_laufzeit_ereignisse.

DATA gv_text TYPE string.
PARAMETERS pa_zahl TYPE i  DEFAULT 33.

LOAD-OF-PROGRAM. "1
  gv_text = gv_text.

INITIALIZATION. "2
  gv_text = 'gestzt aus Init'.
  pa_zahl = 100.

AT SELECTION-SCREEN OUTPUT. "3 vor Anzeige des Bildschirms
  pa_zahl = pa_zahl + 1.


AT SELECTION-SCREEN. "4
  IF pa_zahl > 105.
    MESSAGE 'Zahl ist eigentlich zu groß' TYPE 'W'. "Direkter Wechsel zu Bildschirmanzeige
  ENDIF.

START-OF-SELECTION. "5
  WRITE 'SOS'.

END-OF-SELECTION.
  ULINE.
  WRITE 'Programmende'.




AT LINE-SELECTION.
  MESSAGE 'Doppelklick wurde ausgelöst' TYPE 'I'.

TOP-OF-PAGE.
  WRITE 'Seitenanfang '.

END-OF-PAGE.
  ULINE .
  WRITE 'Seitenende'.
