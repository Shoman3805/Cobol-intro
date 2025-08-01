       IDENTIFICATION DIVISION.
       PROGRAM-ID. INPU.

       ENVIRONMENT DIVISION.

       DATA DIVISION.
       LINKAGE SECTION.
       01 NOMBRE PIC X(30).
       WORKING-STORAGE SECTION.


       PROCEDURE DIVISION.
       
           DISPLAY "Ingrese su nombre"
           ACCEPT NOMBRE
           

           EXIT PROGRAM.
