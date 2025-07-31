       IDENTIFICATION DIVISION.
       PROGRAM-ID. EJERCICIO1.

       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION. 
       FILE-CONTROL.

           SELECT ARCHIVO-ENTRADA ASSIGN TO "nombres.txt"
           ORGANIZATION IS LINE SEQUENTIAL. 

       DATA DIVISION.
       FILE SECTION.

       FD  ARCHIVO-ENTRADA.
       01  REGISTRO-ENTRADA.
           05 NOMBRE PIC X(30).

       WORKING-STORAGE SECTION.
       01 FIN-ARCHIVO PIC X VALUE "N".

       PROCEDURE DIVISION.

           OPEN  INPUT  ARCHIVO-ENTRADA
           PERFORM UNTIL FIN-ARCHIVO = "SI"
           READ  ARCHIVO-ENTRADA 
           AT END
           MOVE "SI"  TO FIN-ARCHIVO
               
           NOT AT END
           DISPLAY "Nombre: " NOMBRE
           END-READ
           END-PERFORM
           CLOSE  ARCHIVO-ENTRADA.
           
           

           STOP RUN.
