       IDENTIFICATION DIVISION.
       PROGRAM-ID. EJERCICIO2.

       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION. 
       FILE-CONTROL.

           SELECT MENSAJE ASSIGN TO "copiar.txt"
           ORGANIZATION IS LINE SEQUENTIAL. 

           SELECT EJASNEM ASSIGN TO "inverso.txt"
           ORGANIZATION IS LINE SEQUENTIAL. 

       DATA DIVISION.
       
       FILE SECTION.

       FD  MENSAJE.
       01  ENTRADA.
           05 NOMBRE PIC X(30).
           05 EDAD PIC 9(2).
           05 SUELDO PIC 9(7).

       FD  EJASNEM.
       01  ENTRADANT.
           05 NOMBRENT PIC X(30).
           05 EDADNT PIC 9(2).
           05 SUELDONT PIC 9(7).
       WORKING-STORAGE SECTION.
       01 FIN-ARCHIVO PIC X VALUE "N".
       01 ITERADOR PIC 9(2).

       01  TABLA.
           05 TIPITO OCCURS 5 TIMES.
           10 NOM PIC X(30).
           10 ED PIC 9(2).
           10 SAL PIC 9(7).
         
       PROCEDURE DIVISION.
           MOVE 1 TO ITERADOR
           OPEN INPUT MENSAJE

           PERFORM UNTIL FIN-ARCHIVO = "S"
           READ MENSAJE
           AT END
           MOVE "S" TO FIN-ARCHIVO
           NOT AT END
           MOVE NOMBRE TO NOM(ITERADOR)
           MOVE EDAD TO ED(ITERADOR)
           MOVE SUELDO TO SAL(ITERADOR)
           ADD 1 TO ITERADOR
           END-READ
           END-PERFORM

           CLOSE MENSAJE
           OPEN OUTPUT EJASNEM
           COMPUTE ITERADOR = ITERADOR - 1 
       
           PERFORM UNTIL ITERADOR = 0
           MOVE NOM(ITERADOR) TO NOMBRENT
           MOVE ED(ITERADOR) TO EDADNT
           MOVE SAL(ITERADOR) TO SUELDONT

          
           WRITE ENTRADANT

           COMPUTE ITERADOR = ITERADOR - 1
           END-PERFORM
           CLOSE EJASNEM


           STOP RUN.
