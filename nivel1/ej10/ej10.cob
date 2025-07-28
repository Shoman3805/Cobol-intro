       IDENTIFICATION DIVISION.
       PROGRAM-ID. EJERCICIO1.

       ENVIRONMENT DIVISION.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 ITERADOR PIC 9(2).
       01 TABLA PIC 9(2).
       01 RES PIC 9(4).
       01 FIN PIC 9(2).
       PROCEDURE DIVISION.
           DISPLAY "Ingrese que tabla desea "
           ACCEPT TABLA
           DISPLAY "Hasta donde"
           ACCEPT FIN
           PERFORM UNTIL ITERADOR = FIN
           ADD 1 TO ITERADOR
           MULTIPLY TABLA BY ITERADOR GIVING RES
           DISPLAY ITERADOR " X " TABLA " = " RES
           END-PERFORM
           STOP RUN.
