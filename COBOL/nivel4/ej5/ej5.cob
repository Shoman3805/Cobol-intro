
       IDENTIFICATION DIVISION.
       PROGRAM-ID. EJERCICIO5.

       ENVIRONMENT DIVISION.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 inano pic 9(4).
       01 inmes pic 9(2).
       01 india pic 9(2).

       01 hcano pic 9(4).
       01 hcmes pic 9(2).
       01 hcdia pic 9(2).
       PROCEDURE DIVISION.
           move 2025 to hcano.
           move 8 to hcmes.
           move 1 to hcdia
           display "Ingrese su año de nacimiento"
           accept inano

           CALL 'MENSAJE'
           
           call 'edad' using inano, hcano.
           display inano

           call 'fecha' using hcano hcmes hcdia.


           
          
          
           
     
           

           STOP RUN.
