       IDENTIFICATION DIVISION.
       PROGRAM-ID. EJERCICIO1.

       ENVIRONMENT DIVISION.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
     
       01 MENIU PIC 9(4).
       PROCEDURE DIVISION.
           PERFORM UNTIL MENIU = 3
           DISPLAY "Seleccione una de las siguientes opciones:"
           DISPLAY "1 - :)"
           DISPLAY "2 - :("
           DISPLAY "3 - Salir"
           ACCEPT MENIU
         
           IF MENIU = 1 THEN
            DISPLAY ":)"
            MOVE 3 TO MENIU
           END-IF
           IF MENIU = 2 THEN 
            DISPLAY ":'("
            MOVE 3 TO MENIU
           END-IF

           
           END-PERFORM
         
           STOP RUN.
           
