
       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGRAMA10.
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
      *=======VARIAVEIS DE APOIO
       77  WRK-PRODUTO PIC X(30) VALUE SPACES.
       77  WRK-ESTADO  PIC X(02) VALUE SPACES.
       77  WRK-VALOR   PIC 9(08)V99 VALUE ZEROS.
       77  WRK-FRETE   PIC 9(08)V99 VALUE ZEROS.

      *=======VARIAVEIS DE EDICAO
       77  WRK-VALOR-ED PIC ZZ.ZZZ.ZZ9,99.
       77  WRK-FRETE-ED PIC ZZ.ZZZ.ZZ9,99.

       PROCEDURE          DIVISION.
       0100-INPUT         SECTION.

           DISPLAY "PRODUTO... ".
               ACCEPT WRK-PRODUTO.
           DISPLAY "VALOR..."
               WRK-VALOR.
           DISPLAY "ESTADO(SP/RJ/ES)...".
               ACCEPT WRK-ESTADO.



       0150-PROCESS       SECTION .
           IF WRK-ESTADO EQUAL "SP"
               COMPUTE WRK-FRETE = WRK-VALOR*0,10
           END-IF.

           IF WRK-ESTADO EQUAL "RJ"
               COMPUTE WRK-FRETE = WRK-VALOR*0,15
           END-IF.

           IF WRK-ESTADO EQUAL "ES"
               COMPUTE WRK-FRETE = WRK-VALOR*0,20
           END-IF.

           COMPUTE WRK-VALOR = WRK-VALOR + WRK-FRETE.
           MOVE WRK-VALOR TO WRK-VALOR-ED.
           MOVE WRK-FRETE TO WRK-FRETE-ED.

       0200-PRINT         SECTION.
           DISPLAY "VALOR FINAL: " WRK-VALOR-ED.

           IF WRK-ESTADO = "SP" OR WRK-ESTADO ="RJ" OR WRK-ESTADO = "ES"
               DISPLAY "ESTADO VÁLIDO"
           ELSE
               DISPLAY "NÃO HÁ UM ESTADO VÁLIDO"
           END-IF.

           IF WRK-FRETE GREATER 0
               DISPLAY " FRETE " WRK-FRETE-ED
           ELSE
               DISPLAY "NÃO ENTREGAMOS NESTE ESTADO" WRK-ESTADO
           END-IF.

       0300-BREAK         SECTION.
           STOP RUN.
