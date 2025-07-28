       IDENTIFICATION DIVISION.
       PROGRAM-ID. EJERCICIO1.

       ENVIRONMENT DIVISION.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 BASE PIC 9(4).
       01 ALTURA PIC 9(4).
       01 RES PIC 9(5).
       PROCEDURE DIVISION.
       
           DISPLAY "Ingrese 2 numeros"
           ACCEPT BASE
           ACCEPT ALTURA
           COMPUTE RES = BASE * ALTURA
           DISPLAY "El area es: " RES

           STOP RUN.
