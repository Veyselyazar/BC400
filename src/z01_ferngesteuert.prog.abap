report Z01_FERNGESTEUERT
       no standard page heading line-size 255.

* Include bdcrecx1_s:
* The call transaction using is called WITH AUTHORITY-CHECK!
* If you have own auth.-checks you can use include bdcrecx1 instead.
include bdcrecx1_s.

start-of-selection.

perform open_group.

perform bdc_dynpro      using 'SAPLSD_ENTRY' '1000'.
perform bdc_field       using 'BDC_CURSOR'
                              'RSRD1-TBMA_VAL'.
perform bdc_field       using 'BDC_OKCODE'
                              '=WB_DISPLAY'.
perform bdc_field       using 'RSRD1-TBMA'
                              'X'.
perform bdc_field       using 'RSRD1-TBMA_VAL'
                              'spfli'.
perform bdc_field       using 'RSRD1-DDTYPE_VAL'
                              'S_CARR_ID'.
perform bdc_dynpro      using 'SAPLSD41' '2200'.
perform bdc_field       using 'BDC_CURSOR'
                              'DD02D-DBTABNAME'.
perform bdc_field       using 'BDC_OKCODE'
                              '=TDSH'.
perform bdc_dynpro      using '/1BCDWB/DBSPFLI' '1000'.
perform bdc_field       using 'BDC_CURSOR'
                              'I1-LOW'.
perform bdc_field       using 'BDC_OKCODE'
                              '=ONLI'.
perform bdc_field       using 'I9-LOW'
                              '  0:00'.
perform bdc_field       using 'I9-HIGH'
                              '  0:00'.
perform bdc_field       using 'I10-LOW'
                              '00:00:00'.
perform bdc_field       using 'I10-HIGH'
                              '00:00:00'.
perform bdc_field       using 'I11-LOW'
                              '00:00:00'.
perform bdc_field       using 'I11-HIGH'
                              '00:00:00'.
perform bdc_field       using 'LIST_BRE'
                              ' 250'.
perform bdc_field       using 'MAX_SEL'
                              '       200'.
perform bdc_dynpro      using 'SAPMSSY0' '0120'.
perform bdc_field       using 'BDC_CURSOR'
                              '04/03'.
perform bdc_field       using 'BDC_OKCODE'
                              '=&F15'.


perform close_group.
