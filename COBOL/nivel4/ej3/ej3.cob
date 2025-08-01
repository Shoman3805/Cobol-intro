       IDENTIFICATION DIVISION.
       PROGRAM-ID. EJERCICIO1.

       ENVIRONMENT DIVISION.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 num PIC 9(8).
       01 res pic 9(1).
        01 divis pic 9(8).
       PROCEDURE DIVISION.
           accept num
           CALL 'paridad' USING num, divis, res.
           
           if res = 0 then
           display "Par"
           else
           display "Impar"
           end-if
     
           

           STOP RUN.
