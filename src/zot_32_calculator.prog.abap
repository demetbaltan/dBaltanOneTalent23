*&---------------------------------------------------------------------*
*& Report zot_32_calculator
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zot_32_calculator.

SELECTION-SCREEN BEGIN OF BLOCK B1 WITH FRAME TITLE TEXT-001.
  PARAMETERS: P_VAL1 TYPE I OBLIGATORY,
              P_VAL2 TYPE I OBLIGATORY.
SELECTION-SCREEN END OF BLOCK B1.


SELECTION-SCREEN BEGIN OF BLOCK B2 WITH FRAME TITLE TEXT-002.


  PARAMETERS: P_TOPLA RADIOBUTTON GROUP G1,
              P_CIKAR RADIOBUTTON GROUP G1,
              P_CARP  RADIOBUTTON GROUP G1,
              P_BOL   RADIOBUTTON GROUP G1.

SELECTION-SCREEN END OF BLOCK B2.

DATA: P_SONUC TYPE P DECIMALS 3.

START-OF-SELECTION.
  IF P_TOPLA = 'X'.
    P_SONUC = P_VAL1 + P_VAL2.
  ELSEIF P_CIKAR = 'X'.
    P_SONUC = P_VAL1 - P_VAL2.
  ELSEIF P_CARP = 'X'.
  P_SONUC = P_VAL1 * P_VAL2.
  ELSE.
  TRY.

        P_SONUC = P_VAL1 / P_VAL2.
      CATCH CX_SY_ZERODIVIDE.
        MESSAGE 'Hata Oluştu: Sifira Bolunmez' TYPE 'I'.
    ENDTRY.
  ENDIF.

  IF P_BOL NE 'X'.
    MESSAGE | {  P_SONUC } | TYPE 'I'.
  ENDIF.
