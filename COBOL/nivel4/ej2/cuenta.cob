       IDENTIFICATION DIVISION.
       PROGRAM-ID. CUENTA.

       ENVIRONMENT DIVISION.

       DATA DIVISION.
       LINKAGE SECTION.
       01 a PIC 9(5).
       01 b PIC 9(5).
       01 c PIC 9(6).
       


           PROCEDURE DIVISION USING a, b, c.
       
            ACCEPT a 
             ACCEPT b
           ADD a TO b GIVING c

           EXIT PROGRAM.
