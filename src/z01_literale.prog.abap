*&---------------------------------------------------------------------*
*& Report Z01_LITERALE
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT Z01_LITERALE.

data gv_zahl type decfloat16 value '-345.556'.
data gv_text1 type string value 15.
data gv_text2 type string.
data gv_text3 type string.


 gv_zahl = gv_text1.
gv_text1 = 'Haus'(rom).

gv_text3 = gv_text2 = gv_text1.

gv_text2 = 'Zimmer '(002).

gv_text3 = gv_text1 && ` ` &&  gv_text2.

write gv_text3.
uline.
write text-end.
