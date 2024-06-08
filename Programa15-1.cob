
       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGRAMA15.
      *===========================================
      *    == AUTOR: ***; EMPRESA: XPTO
      *    ==OBJETIVO: VETORES2
      *==DATA XX/XX/2024
      *==OBSERVACOES:
      *===========================================

       ENVIRONMENT         DIVISION.
       CONFIGURATION       SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.

       DATA                DIVISION.
       WORKING-STORAGE     SECTION.
       01 WRK-DATA.
           05 WRK-ANO PIC 9(04).
           05 WRK-MES PIC 9(02).
           05 WRK-DIA PIC 9(02).

       01 TABELA-DE-MESES.
           05 FILLER PIC X(09) VALUE "JANEIRO  ".
           05 FILLER PIC X(09) VALUE "FEVEREIRO".
           05 FILLER PIC X(09) VALUE "MARCO    ".
           05 FILLER PIC X(09) VALUE "ABRIL    ".
           05 FILLER PIC X(09) VALUE "MAIO     ".
           05 FILLER PIC X(09) VALUE "JUNHO    ".
           05 FILLER PIC X(09) VALUE "JULHO    ".
           05 FILLER PIC X(09) VALUE "AGOSTO   ".
           05 FILLER PIC X(09) VALUE "SETEMBRO ".
           05 FILLER PIC X(09) VALUE "OUTUBRO  ".
           05 FILLER PIC X(09) VALUE "NOVEMBRO ".
           05 FILLER PIC X(09) VALUE "DEZEMBRO ".

       01 TABELA-DE-MESES-R REDEFINES TABELA-DE-MESES OCCURS 12 TIMES.
           05 MESES PIC X(09).

       01 WRK-MESES.
           05 WRK-MES-EXT PIC X(09) OCCURS 12 TIMES.

       PROCEDURE          DIVISION.
       0001-MAIN     SECTION.
           PERFORM 0100-INICIALIZE.
           PERFORM 0200-PROCESS.
           STOP RUN.

       0100-INICIALIZE         SECTION.
           ACCEPT WRK-DATA FROM DATE YYYYMMDD.

       0200-PROCESS       SECTION.
           DISPLAY "MANAUS, " WRK-DIA " DE " MESES(WRK-MES)
                               " DE " WRK-ANO.

       0300-FINISH        SECTION.
