*&---------------------------------------------------------------------*
*& Report zot_32_twitter
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zot_32_twitter.

TABLES zot_32_t_twitter.

DATA : gs_twt TYPE zot_32_t_twitter,
       gt_twt TYPE TABLE OF zot_32_t_twitter.

SELECTION-SCREEN BEGIN OF BLOCK b1 WITH FRAME title text-001.
  PARAMETERS: Tweet_Id TYPE char10  OBLIGATORY,
              Tweet TYPE char80 OBLIGATORY.
SELECTION-SCREEN END OF BLOCK b1.

SELECTION-SCREEN BEGIN OF BLOCK b2 WITH FRAME title text-002.
  PARAMETERS: Twt_At RADIOBUTTON GROUP gr1,
              Twt_Dgst RADIOBUTTON GROUP gr1,
              Twt_Sil  RADIOBUTTON GROUP gr1,
              Twt_Gstr  RADIOBUTTON GROUP gr1.
SELECTION-SCREEN END OF BLOCK b2.

START-OF-SELECTION.


IF Twt_At EQ abap_true.
    TRY.
        APPEND VALUE #( tweet_id = Tweet_Id
                        tweet = Tweet
                      ) TO gt_twt .
        INSERT zot_32_t_twitter  FROM TABLE gt_twt .
        cl_demo_output=>display( | { Tweet_Id } Tweet başarıyla paylaşıldı.| ).

      CATCH cx_sy_open_sql_db.
        cl_demo_output=>display( | { Tweet_Id } Hata: Bu ID Zaten Mevcut. | ).
    ENDTRY.
  ENDIF.




  IF Twt_Dgst EQ abap_true.

    gs_twt = VALUE #( tweet_id = Tweet_Id
                          tweet = Tweet ).
    MODIFY zot_32_t_twitter FROM gs_twt.

    IF sy-subrc = 0.
      cl_demo_output=>display( | { Tweet_Id } Tweet'in başarıyla güncellemesi gerçekleştirildi. | ).
    ENDIF.
  ENDIF.
