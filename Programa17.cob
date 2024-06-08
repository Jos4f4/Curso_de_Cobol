
       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGRAMA17.
      *===========================================
      *    == AUTOR: ***; EMPRESA: XPTO
      *    ==OBJETIVO: COMUNICACAO ENTRE PROGRAMAS.
      *==DATA XX/XX/2024
      *==OBSERVACOES:
      *===========================================

       ENVIRONMENT         DIVISION.
       CONFIGURATION       SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.

       DATA                DIVISION.
       WORKING-STORAGE     SECTION.
       77 WRK-DATA PIC X(30).

       PROCEDURE          DIVISION.
       0001-MAIN     SECTION.
           CALL "DATAMES" USING WRK-DATA.
           DISPLAY WRK-DATA.
           STOP RUN.
