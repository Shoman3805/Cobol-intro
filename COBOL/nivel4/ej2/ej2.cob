       IDENTIFICATION DIVISION.
       PROGRAM-ID. EJERCICIO2.

       ENVIRONMENT DIVISION.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 a PIC 9(5).
       01 b PIC 9(5).
       01 res PIC 9(6).

       PROCEDURE DIVISION.
           CALL 'CUENTA' USING a, b, res
           DISPLAY "Resultado: " res
           

           STOP RUN.
