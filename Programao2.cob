
       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGRAMA02.
      *===========================================
      *== AUTOR: JOSAFA; EMPRESA: XPTO
      *==OBJETIVO: 1º CONTATO COM COBOL
      *==DATA XX/XX/2024
      *==OBSERVACOES:
      *===========================================

       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 WRK-NOME PIC X(30) VALUE SPACES.
       77 WRK-IDADE PIC 9(03) VALUE ZEROS.

       PROCEDURE DIVISION.
           DISPLAY "Digite seu nome: ".
           ACCEPT WRK-NOME.
           DISPLAY "Digite sua idade: ".
           ACCEPT WRK-IDADE.

           DISPLAY "Nome digitado: " WRK-NOME ". IDADE: " WRK-IDADE ".".

           STOP RUN.
