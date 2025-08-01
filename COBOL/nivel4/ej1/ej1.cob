       IDENTIFICATION DIVISION.
       PROGRAM-ID. EJERCICIO1.

       ENVIRONMENT DIVISION.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 NOM PIC X(30).

       PROCEDURE DIVISION.
           CALL 'INPU' USING NOM.
           DISPLAY "Hola, " NOM
           

           STOP RUN.
