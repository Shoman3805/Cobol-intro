       IDENTIFICATION DIVISION.
       PROGRAM-ID. EJERCICIO1.

       ENVIRONMENT DIVISION.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 X PIC 9(4).
       01 Y PIC 9(4).
       01 RES PIC 9(5).
       PROCEDURE DIVISION.
       
           DISPLAY "Ingrese un numero"
           ACCEPT X
           
           DIVIDE X BY 2 GIVING Y REMAINDER RES
        
           IF RES = 1 THEN
           DISPLAY "El numero es impar "
           END-IF.
           IF RES = 0 THEN
           DISPLAY "El numero es par "
           END-IF.
           STOP RUN.
