       >>SOURCE FORMAT FREE
       
       IDENTIFICATION DIVISION.
       PROGRAM-ID. promedio.

       ENVIRONMENT DIVISION.

       DATA DIVISION.
       LINKAGE SECTION.
       01 n1 PIC 9(3).
       01 n2 pic 9(3).
       01 n3 pic 9(3).
       01 prom pic 9(3).

       PROCEDURE DIVISION USING n1 n2 n3 prom.
           COMPUTE prom = (n1 + n2 + n3) / 3
           
           
           

           EXIT PROGRAM.
