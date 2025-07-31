       IDENTIFICATION DIVISION.
       PROGRAM-ID. EJERCICIO1.

       ENVIRONMENT DIVISION.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 Y PIC 9(4).
       01 Z PIC 9(4).
       01 MAYOR PIC 9(4).
       PROCEDURE DIVISION.
        
           ACCEPT MAYOR
           ACCEPT Y
           ACCEPT Z
           IF MAYOR < Y THEN
            MOVE Y TO MAYOR
           END-IF
           IF MAYOR < Z THEN 
           MOVE Z TO MAYOR
           END-IF

           DISPLAY MAYOR
          
         

           STOP RUN.
