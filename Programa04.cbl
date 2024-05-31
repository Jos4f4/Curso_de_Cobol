
       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGRAMA04.
      *===========================================
      *== AUTOR: ***; EMPRESA: XPTO
      *==OBJETIVO: MOVE(EXEMPLOS)
      *==DATA XX/XX/2024
      *==OBSERVACOES:
      *===========================================

       ENVIRONMENT         DIVISION.
       CONFIGURATION       SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.

       DATA                DIVISION.
       WORKING-STORAGE     SECTION.
       77 WRK-VALOR0        PIC X(05)       VALUE ZEROS.
       77 WRK-VALOR1        PIC 9(05)       VALUE ZEROS.
       77 WRK-VALOR2        PIC 9(05)       VALUE ZEROS.
       77 WRK-RESULTADO     PIC S9(05)V99   VALUE ZEROS.

       PROCEDURE DIVISION.
       0100-RECEBE         SECTION.
           DISPLAY "Digite o valor 1: ".
               ACCEPT WRK-VALOR1.
               MOVE WRK-VALOR0 TO WRK-VALOR1.
           DISPLAY "Digite o valor 2: ".
               ACCEPT WRK-VALOR2.

           COMPUTE WRK-RESULTADO = WRK-VALOR1 - WRK-VALOR2.

       0200-MOSTRA         SECTION.
           DISPLAY "RESULTADO: " WRK-RESULTADO.
           DISPLAY "vaLOR O TEXTO: " WRK-VALOR0.

       0300-FINALIZAR      SECTION.
           STOP RUN.
