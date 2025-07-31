       IDENTIFICATION DIVISION.
       PROGRAM-ID. EJERCICIO2.

       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION. 
       FILE-CONTROL.

           SELECT MENSAJE ASSIGN TO "mensajes.txt"
           ORGANIZATION IS LINE SEQUENTIAL. 

       DATA DIVISION.
       
       FILE SECTION.

       FD  MENSAJE.
       01  ENTRADA.
           05 NOMBRE PIC X(50).
           05 IDE PIC 9(3).
       WORKING-STORAGE SECTION.
       01 ESCR PIC X(50).
       01 ITERADOR PIC 9(3).
       PROCEDURE DIVISION.

           OPEN OUTPUT MENSAJE
           PERFORM UNTIL ESCR = "0"
           ADD 1 TO ITERADOR
           
           ACCEPT ESCR
           IF ESCR NOT = "0"
               MOVE ESCR TO NOMBRE
               MOVE ITERADOR TO IDE 
               WRITE ENTRADA
           END-IF
           
           END-PERFORM
           CLOSE MENSAJE
           
           STOP RUN.
