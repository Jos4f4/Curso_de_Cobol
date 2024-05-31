
       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGRAMA02.
      *===========================================
      *== AUTOR: ***; EMPRESA: XPTO
      *==OBJETIVO: VARIAVEL COM CASA DECIMAL
      *==DATA XX/XX/2024
      *==OBSERVACOES:
      *===========================================

       ENVIRONMENT         DIVISION.
       CONFIGURATION       SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.

       DATA                DIVISION.
       WORKING-STORAGE     SECTION.
       77 WRK-NOME         PIC X(30) VALUE SPACES.
       77 WRK-IDADE        PIC 9(03) VALUE ZEROS.
       77 WRK-SALARIO      PIC 9(08)V9(02) VALUE ZEROS.

       PROCEDURE DIVISION.
       0100-RECEBE         SECTION.
           DISPLAY "Digite seu nome: ".
               ACCEPT WRK-NOME.
           DISPLAY "Digite sua idade: ".
               ACCEPT WRK-IDADE.
           DISPLAY "Infome o seu salário: ".
               ACCEPT WRK-SALARIO.

       0200-MOSTRA         SECTION.
           DISPLAY "Nome digitado: " WRK-NOME ". IDADE: " WRK-IDADE ".".
           DISPLAY "Salário informado: R$ " WRK-SALARIO.

       0300-FINALIZAR      SECTION.
           STOP RUN.
