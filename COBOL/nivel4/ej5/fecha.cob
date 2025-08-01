       IDENTIFICATION DIVISION.
       PROGRAM-ID. fecha.

       ENVIRONMENT DIVISION.

       DATA DIVISION.
       LINKAGE SECTION.
     
       
       01 ano pic 9(4).
       01 mes pic 9(2).
       01 dia pic 9(2).

       PROCEDURE DIVISION using ano mes dia.
       
           DISPLAY dia "/" mes "/" ano
           

           EXIT PROGRAM.
