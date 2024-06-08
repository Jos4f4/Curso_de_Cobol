
       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGRAMA06.
      *===========================================
      *== AUTOR: ***; EMPRESA: XPTO
      *==OBJETIVO: VARIAVEL ESTRUTURAL(GRUPO) - EXEMPLO2
      *==DATA XX/XX/2024
      *==OBSERVACOES:
      *===========================================

       ENVIRONMENT         DIVISION.
       CONFIGURATION       SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.

       DATA                DIVISION.
       WORKING-STORAGE     SECTION.
       COPY "#BOOKDATprograma6.cpy"

       PROCEDURE           DIVISION.
       0100-RECEBE         SECTION.
           DISPLAY "ENTRE COM A LINHA DE DADOS: "
           ACCEPT WRK-ENTRADA.

       0200-MOSTRA         SECTION.
           DISPLAY "CÓDIGO... " WRK-CODIGO.
           DISPLAY "NOME... " WRK-NOME.
           DISPLAY "SALÁRIO... " WRK-SALARIO.

       0300-FINALIZAR      SECTION.
           STOP RUN.
