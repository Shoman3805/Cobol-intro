       IDENTIFICATION DIVISION.
       PROGRAM-ID. EJERCICIO1.

       ENVIRONMENT DIVISION.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 SECRETO PIC 9(6).
       01 NUM PIC 9(4).
       PROCEDURE DIVISION.
           ACCEPT SECRETO
           PERFORM UNTIL NUM = SECRETO
           ACCEPT NUM
           
           IF NUM < SECRETO THEN
            DISPLAY "El numero secreto es mayor"
           END-IF
           IF NUM > SECRETO then
            DISPLAY "El numero secreto es menor"
           
           END-IF
           
           END-PERFORM
           display "Ganaste"

           STOP RUN.
           
