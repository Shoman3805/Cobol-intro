       IDENTIFICATION DIVISION.
       PROGRAM-ID. EJERCICIO1.

       ENVIRONMENT DIVISION.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 X PIC 9(4).
       01 Y PIC 9(4).
       01 RES PIC 9(5).
       PROCEDURE DIVISION.
       
           DISPLAY "Ingrese 2 numeros"
           ACCEPT X
           ACCEPT Y
           COMPUTE RES = X + Y
           DISPLAY "La suma da: " RES

           STOP RUN.
