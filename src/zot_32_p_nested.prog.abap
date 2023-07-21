*&---------------------------------------------------------------------*
*& Report zot_32_p_nested
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zot_32_p_nested.

DATA(lt_table) = VALUE zot_32_TT_Ogr_NOT( (

     ogrenci_id        = '32'
     ogrenci_ad        = 'Demet Baltan'
     dog_tarihi       = '14/03/2000'
     ogr_bolumu = 'Bilgisayar Mühendisliği'
     ogr_notlar = VALUE zot_32_s_sinif(
     sinif1 = VALUE zot_32_s_ders(
     ders1 = VALUE zot_32_s_not(
     vize1 = '50'
     vize2 = '70'
     final = '30'
     btnleme = '60')
     ders2 = VALUE zot_32_s_not(
     vize1 = '75'
     vize2 = '45'
     final = '30'
     btnleme = '79' ) ) ) ) ).


cl_demo_output=>display( lt_table ).
