       IDENTIFICATION DIVISION.
       PROGRAM-ID. EJERCICIO1.

       ENVIRONMENT DIVISION.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 X PIC 9(4).
       01 Y PIC 9(4).
       01 Z PIC 9(4).
       01 RES PIC 9(5).
       PROCEDURE DIVISION.
       
           DISPLAY "Ingrese 3 numeros"
           ACCEPT X
           ACCEPT Y
           ACCEPT Z
           COMPUTE RES = X + Y + Z
           COMPUTE RES = RES / 3
           DISPLAY "El promedio es: " RES

           STOP RUN.
