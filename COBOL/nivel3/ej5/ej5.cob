       IDENTIFICATION DIVISION.
       PROGRAM-ID. EJERCICIO2.

       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION. 
       FILE-CONTROL.

           SELECT LISTA ASSIGN TO "utiles.txt"
           ORGANIZATION IS LINE SEQUENTIAL. 


       DATA DIVISION.
       
       FILE SECTION.

       FD  LISTA.
       01  ENTRADA.
           05 NUMERO PIC 9(3).
           05 OBJETO PIC X(9).
           05 PRECIO PIC 9(4).

       
       WORKING-STORAGE SECTION.
       01 FIN-ARCHIVO PIC X VALUE "N".
       01 AUXPRECIO PIC 9(4).

    
         
       PROCEDURE DIVISION.
           
           OPEN INPUT LISTA
           DISPLAY "------------------------------------------------------------"
           PERFORM UNTIL FIN-ARCHIVO = "S"
           READ LISTA
           AT END
           MOVE "S" TO FIN-ARCHIVO
           NOT AT END
           IF PRECIO > 1000 THEN 
            DISPLAY "id: " NUMERO " Articulo: " OBJETO " Precio: " PRECIO
            DISPLAY "------------------------------------------------------------"
           END-IF 
           END-READ
           END-PERFORM

           CLOSE LISTA
           


           STOP RUN.
