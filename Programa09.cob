
       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGRAMA09.
      *===========================================
      *    == AUTOR: ***; EMPRESA: XPTO
      *    ==OBJETIVO: COMANDOS DE DECISAO
      *==DATA XX/XX/2024
      *==OBSERVACOES:
      *===========================================

       ENVIRONMENT         DIVISION.
       CONFIGURATION       SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.

       DATA                DIVISION.
       WORKING-STORAGE     SECTION.
       77  WRK-NOTA1 PIC 9(02)V99 VALUE ZEROS.
       77  WRK-NOTA2 PIC 9(02)V99 VALUE ZEROS.
       77  WRK-MEDIA PIC 9(02)V99 VALUE ZEROS.

       PROCEDURE DIVISION.
       0100-INPUT         SECTION.
           DISPLAY "NOTA 1...".
               ACCEPT WRK-NOTA1.
           DISPLAY "NOTA 2...".
               ACCEPT WRK-NOTA2.

       0150-PROCESS       SECTION .
           COMPUTE WRK-MEDIA = (WRK-NOTA1 + WRK-NOTA2) / 2.

       0200-PRINT         SECTION.
           DISPLAY "MÉDIA... " WRK-MEDIA.
           IF WRK-MEDIA GREATER 7
               DISPLAY "APROVADO..."
           ELSE
               DISPLAY "REPROVADO..."
           END-IF.

       0300-BREAK         SECTION.
           STOP RUN.
