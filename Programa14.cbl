
       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGRAMA14.
      *===========================================
      *    == AUTOR: ***; EMPRESA: XPTO
      *    ==OBJETIVO: IMPRESAO TABUADA DE 1 A 10
      *==DATA XX/XX/2024
      *==OBSERVACOES:
      *===========================================

       ENVIRONMENT         DIVISION.
       CONFIGURATION       SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.

       DATA                DIVISION.
       WORKING-STORAGE     SECTION.
       77 WRK-NUMBER PIC 9(02) VALUE ZEROS.
       77 WRK-COUNTER PIC 9(02) VALUE 1.
       77 WRK-RESULT PIC 9(02) VALUE ZEROS.

       PROCEDURE          DIVISION.
       0001-MAIN     SECTION.

       0100-INICIALIZE         SECTION.
           DISPLAY "QUAL NÚMERO: ".
           ACCEPT WRK-NUMBER.

       0200-PROCESS       SECTION .

           PERFORM UNTIL WRK-COUNTER EQUAL 1
            COMPUTE WRK-RESULT = WRK-NUMBER * WRK-COUNTER
            DISPLAY  WRK-NUMBER " X " WRK-COUNTER " = " WRK-RESULT
            ADD 1 TO WRK-COUNTER
           END-PERFORM.

      *    PERFORM 10 TIMES
      *     COMPUTE WRK-RESULT = WRK-NUMBER*WRK-COUNTER
      *     DISPLAY  WRK-NUMBER " X " WRK-COUNTER " = " WRK-RESULT
      *     ADD 1 TO WRK-COUNTER
      *    END-PERFORM.

      *    PERFORM VARYING WRK-COUNTER FROM 1 BY 1
      *             UNTIL WRK-COUNTER GREATER 10
      *     COMPUTE WRK-RESULT = WRK-NUMBER*WRK-COUNTER
      *     DISPLAY  WRK-NUMBER " X " WRK-COUNTER " = " WRK-RESULT
      *    END-PERFORM.

       0300-FINISH        SECTION.
           STOP RUN.
