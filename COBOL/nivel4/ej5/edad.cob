       IDENTIFICATION DIVISION.
       PROGRAM-ID. edad.

       ENVIRONMENT DIVISION.

       DATA DIVISION.
       LINKAGE SECTION.
       
       01 inputano pic 9(4).

       01 anofijo pic 9(4).
 
       PROCEDURE DIVISION using inputano anofijo.
           
           compute inputano = anofijo - inputano
         

           EXIT PROGRAM.
