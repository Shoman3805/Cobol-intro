       IDENTIFICATION DIVISION.
       PROGRAM-ID. EJERCICIO1.

       ENVIRONMENT DIVISION.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 ITERADOR PIC 9(3).
       
       PROCEDURE DIVISION.
           
           PERFORM UNTIL ITERADOR = 100
           ADD 5 TO ITERADOR
           DISPLAY ITERADOR
           END-PERFORM
           
           STOP RUN.
