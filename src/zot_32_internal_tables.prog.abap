*&---------------------------------------------------------------------*
*& Report zot_32_internal_tables
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zot_32_internal_tables.

TYPES: BEGIN OF gty_table,
         matnr ,
         maktx ,
         matkl ,
         menge ,
         meins ,
       END OF gty_table.

DATA: gt_material TYPE TABLE OF zot_00_t_materia,
      gs_material TYPE zot_00_t_materia,
      gt_table    TYPE TABLE OF gty_Table,
      gs_table    TYPE gty_table,
      gt_new      TYPE TABLE OF gty_table,
      gs_new      TYPE gty_table.

START-OF-SELECTION.

  SELECT * FROM zot_00_t_materia
    INTO TABLE gt_material.

  READ TABLE gt_material INTO gs_material INDEX 1.

  gt_table = VALUE #( BASE gt_table ( matnr = '000000000000000011'
                                      maktx = 'Reçel'
                                      matkl = 'C'
                                      menge = 16
                                      meins = 'ST') ).

  gt_table = VALUE #( BASE gt_table ( matnr = '000000000000000012'
                                      maktx = 'Peynir'
                                      matkl = 'C'
                                      menge = 4
                                      meins = 'ST') ).

  gt_table = VALUE #( BASE gt_table ( matnr = '000000000000000013'
                                      maktx = 'Bal'
                                      matkl = 'C'
                                      menge = 28
                                      meins = 'ST') ).

  gt_table = VALUE #( BASE gt_table ( matnr = '000000000000000014'
                                      maktx = 'Zeytin'
                                      matkl = 'C'
                                      menge = 13
                                      meins = 'ST') ).

  gt_table = VALUE #( BASE gt_table ( matnr = '000000000000000015'
                                      maktx = 'Kaymak'
                                      matkl = 'C'
                                      menge = 50
                                      meins = 'ST') ).


LOOP AT gt_material INTO DATA(ls_material).
  READ TABLE gt_material WITH KEY meins = ls_material-meins TRANSPORTING NO FIELDS.
      IF sy-subrc = 0.
        ls_material-menge += 10.
      ENDIF.
  MODIFY gt_material FROM ls_material TRANSPORTING menge.
ENDLOOP.


DATA gt_materialcon TYPE TABLE OF zot_20_t_materia.
APPEND LINES OF gt_material  TO gt_materialcon.
APPEND LINES OF gt_material TO gt_materialcon.



cl_demo_output=>display( ).
