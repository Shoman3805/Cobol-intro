       IDENTIFICATION DIVISION.
       PROGRAM-ID. EJERCICIO2.

       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION. 
       FILE-CONTROL.

           SELECT MENSAJE ASSIGN TO "tetsto.txt"
           ORGANIZATION IS LINE SEQUENTIAL. 

       DATA DIVISION.
       
       FILE SECTION.

       FD  MENSAJE.
       01  ENTRADA.
           05 NOMBRE PIC X(30).
           05 EDAD PIC 9(2).
           05 SUELDO PIC 9(7).

       WORKING-STORAGE SECTION.
       01 NOM PIC X(30).
       01 ED PIC 9(2).
       01 SAL PIC 9(7).
       01 AUX PIC 9(7).
       01 FIN-ARCHIVO PIC X VALUE "N".
       PROCEDURE DIVISION.

           OPEN INPUT MENSAJE
           
           DISPLAY "-------------------------------------------------------------------"
           PERFORM UNTIL FIN-ARCHIVO = "SI"
           READ MENSAJE
           AT END
           MOVE "SI"  TO FIN-ARCHIVO
               
           NOT AT END
           MOVE SUELDO TO SAL 
           MOVE SUELDO TO AUX

           COMPUTE AUX = AUX * 13
           COMPUTE AUX = AUX / 100
           COMPUTE SAL = SAL - AUX
       
           DISPLAY "Nombre: " NOMBRE
           DISPLAY "Edad: " EDAD
           DISPLAY "Sueldo bruto: " SUELDO
           DISPLAY "Sueldo neto: " SAL
           DISPLAY "-------------------------------------------------------------------"
           
           END-PERFORM
           CLOSE MENSAJE
           
           STOP RUN.
