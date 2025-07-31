       IDENTIFICATION DIVISION.
       PROGRAM-ID. EJERCICIO2.

       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION. 
       FILE-CONTROL.

           SELECT FILAS ASSIGN TO "filitas.txt"
           ORGANIZATION IS LINE SEQUENTIAL. 

       DATA DIVISION.
       
       FILE SECTION.

       FD  FILAS.
       01  ENTRADA.
           05 NUM PIC 9(1).
        
       WORKING-STORAGE SECTION.
       01 FIN-ARCHIVO PIC X(1).
       01 ITERADOR PIC 9(3).
       PROCEDURE DIVISION.

           OPEN INPUT FILAS
           PERFORM UNTIL FIN-ARCHIVO = "S"
           READ FILAS
           AT END
           MOVE "S"  TO FIN-ARCHIVO
               
           NOT AT END
           ADD 1 TO ITERADOR
           DISPLAY ITERADOR
           END-PERFORM
           CLOSE FILAS
           DISPLAY ITERADOR
           STOP RUN.
