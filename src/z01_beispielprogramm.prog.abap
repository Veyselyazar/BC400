*&---------------------------------------------------------------------*
*& Report Z01_BEISPIELPROGRAMM
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT z01_beispielprogramm.

PARAMETERS: pa_num TYPE i,
            gv_pos TYPE i.





DATA: gv_result TYPE i,
      gv_zwisum type i.







gv_result =  pa_num .

DO 5 TIMES.
  "gv_result = gv_result + 1.
  add: 1 to gv_result,
       2 to gv_zwisum.
  do.

  enddo.
ENDDO.
"gv_result = gv_result  "weiterer Kommentar
" Kommentar
"+ 1.





























WRITE: 'Your Input', AT gv_pos pa_num .
WRITE: / 'Result', AT gv_pos gv_result .
