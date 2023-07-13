*---------------------------------------------------------------------*
*    view related data declarations
*---------------------------------------------------------------------*
*...processing: ZOT_32_T_P_ATUR.................................*
DATA:  BEGIN OF STATUS_ZOT_32_T_P_ATUR               .   "state vector
         INCLUDE STRUCTURE VIMSTATUS.
DATA:  END OF STATUS_ZOT_32_T_P_ATUR               .
CONTROLS: TCTRL_ZOT_32_T_P_ATUR
            TYPE TABLEVIEW USING SCREEN '0005'.
*...processing: ZOT_32_T_P_ILTSM................................*
DATA:  BEGIN OF STATUS_ZOT_32_T_P_ILTSM              .   "state vector
         INCLUDE STRUCTURE VIMSTATUS.
DATA:  END OF STATUS_ZOT_32_T_P_ILTSM              .
CONTROLS: TCTRL_ZOT_32_T_P_ILTSM
            TYPE TABLEVIEW USING SCREEN '0003'.
*...processing: ZOT_32_T_P_ITUR.................................*
DATA:  BEGIN OF STATUS_ZOT_32_T_P_ITUR               .   "state vector
         INCLUDE STRUCTURE VIMSTATUS.
DATA:  END OF STATUS_ZOT_32_T_P_ITUR               .
CONTROLS: TCTRL_ZOT_32_T_P_ITUR
            TYPE TABLEVIEW USING SCREEN '0001'.
*...processing: ZOT_32_T_P_MAST.................................*
DATA:  BEGIN OF STATUS_ZOT_32_T_P_MAST               .   "state vector
         INCLUDE STRUCTURE VIMSTATUS.
DATA:  END OF STATUS_ZOT_32_T_P_MAST               .
CONTROLS: TCTRL_ZOT_32_T_P_MAST
            TYPE TABLEVIEW USING SCREEN '0002'.
*.........table declarations:.................................*
TABLES: *ZOT_32_T_P_ATUR               .
TABLES: *ZOT_32_T_P_ILTSM              .
TABLES: *ZOT_32_T_P_ITUR               .
TABLES: *ZOT_32_T_P_MAST               .
TABLES: ZOT_32_T_P_ATUR                .
TABLES: ZOT_32_T_P_ILTSM               .
TABLES: ZOT_32_T_P_ITUR                .
TABLES: ZOT_32_T_P_MAST                .

* general table data declarations..............
  INCLUDE LSVIMTDT                                .
