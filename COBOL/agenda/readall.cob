       IDENTIFICATION DIVISION.
       PROGRAM-ID. readall.

       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION. 
       FILE-CONTROL.

           SELECT SALIDA ASSIGN TO "contactos.txt"
           ORGANIZATION IS LINE SEQUENTIAL. 

       DATA DIVISION.
       FILE SECTION.
     
       FD  SALIDA.
       01  tabla.
           05 usuario pic x(30).
           05 nom PIC X(20).
           05 ap pic x(20).
           05 msg pic x(40).
           05 num pic 9(10).

       WORKING-STORAGE SECTION.
       01 FIN-ARCHIVO PIC X VALUE "N".
       01 texnum pic x(10).
       01 prim pic x(2).
       01 seg pic x(4).
       01 ter pic x(4).

       LINKAGE SECTION.
       01 user pic x(15).
       01 nombre pic x(20).
       01 apellido pic x(20).
       01 nota pic x(40).
       01 numero pic 9(10).
      
       
       PROCEDURE DIVISION USING user nombre apellido nota numero.
           move "N" to FIN-ARCHIVO
            OPEN  input SALIDA
           display "----------------------------------------------------"
           PERFORM UNTIL FIN-ARCHIVO = "S"
           READ SALIDA
           AT END
           MOVE "S" TO FIN-ARCHIVO
           NOT AT END

           move num to texnum 
           move texnum(1:2) to prim 
           move texnum(3:4) to seg 
           move texnum(7:4) to ter
           display "Usuario: " usuario
           display "Nombre: "nom
           display "Apellido: " ap    
           display "Notas adicionales: " msg 
           display "Numero: " prim " " seg "-" ter
           display "----------------------------------------------------"
           END-READ
           
           END-PERFORM
          
          
          
           
            accept FIN-ARCHIVO    
           
           move "N" to FIN-ARCHIVO
         
           
            
           CLOSE SALIDA.
           

           EXIT PROGRAM.
