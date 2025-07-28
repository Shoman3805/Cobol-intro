       IDENTIFICATION DIVISION.
       PROGRAM-ID. EJERCICIO1.

       ENVIRONMENT DIVISION.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 USERNAME PIC X(30).

       PROCEDURE DIVISION.
       
           DISPLAY "Ingrese su nombre de usuario"
           ACCEPT USERNAME

           DISPLAY "Hola, " USERNAME

           STOP RUN.
