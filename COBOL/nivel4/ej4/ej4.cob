       >>SOURCE FORMAT FREE
       
       IDENTIFICATION DIVISION.
       PROGRAM-ID. EJERCICIO4.

       ENVIRONMENT DIVISION.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 aa PIC 9(3).
       01 bb pic 9(3).
       01 cc pic 9(3).
       01 res pic 9(3).

       PROCEDURE DIVISION.
           accept aa
           accept bb
           accept cc

           CALL 'promedio' using aa, bb, cc, res. 
           
           
          
           display res
           
     
           

           STOP RUN.
