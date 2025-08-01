       IDENTIFICATION DIVISION.
       PROGRAM-ID. paridad.

       ENVIRONMENT DIVISION.

       DATA DIVISION.
       LINKAGE SECTION.
       01 numero PIC 9(8).
       01 divi pic 9(8).
       01 resto pic 9(1).


       PROCEDURE DIVISION USING numero, divi, resto.
           divide numero by 2 giving numero remainder resto
           
           
           

           EXIT PROGRAM.
