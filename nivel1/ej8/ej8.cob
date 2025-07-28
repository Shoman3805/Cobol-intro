       IDENTIFICATION DIVISION.
       PROGRAM-ID. EJERCICIO1.

       ENVIRONMENT DIVISION.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 EDAD PIC 9(2).
       01 TABLA PIC 9(1).
       01 RES PIC 9(2).
       PROCEDURE DIVISION.
           DISPLAY "Ingrese su edad "
           ACCEPT EDAD
           IF EDAD < 3 THEN 
           DISPLAY "Bebé"
           ELSE IF EDAD < 13 THEN 
           DISPLAY "Niño"
           ELSE IF EDAD < 65 THEN 
           DISPLAY "Adulto"
           ELSE 
           DISPLAY "Adulto mayor"
           END-IF
           STOP RUN.
