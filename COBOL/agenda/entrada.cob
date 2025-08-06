       IDENTIFICATION DIVISION.
       PROGRAM-ID. entrada.

       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION. 
       FILE-CONTROL.

           SELECT ENTRADA ASSIGN TO "contactos.txt"
           ORGANIZATION IS LINE SEQUENTIAL. 

       DATA DIVISION.
       FILE SECTION.
     
       FD  ENTRADA.
       01  tabla.
           05 usuario pic x(30).
           05 nom PIC X(20).
           05 ap pic x(20).
           05 msg pic x(40).
           05 num pic 9(10).

       WORKING-STORAGE SECTION.
       01 FIN-ARCHIVO PIC X VALUE "N".
       LINKAGE SECTION.
       01 user pic x(15).
       01 nombre pic x(20).
       01 apellido pic x(20).
       01 nota pic x(40).
       01 numero pic 9(10).
      
       
       PROCEDURE DIVISION USING user nombre apellido nota numero.
       
           DISPLAY "Ingrese nombre de usuario"
           ACCEPT user
           
           DISPLAY "Ingrese nombre"
           accept nombre 
           
           DISPLAY "Ingrese apellido"
           accept apellido
           
           Display "Descripcion / notas adicionales"
           accept nota

           DISPLAY "Ingrese numero telefonico"
           accept numero
           
           OPEN  extend  ENTRADA
          
          
           move user to usuario
           move nombre to nom
           move apellido to ap
           move nota to msg
           move numero to num
           write tabla
           
               
           
           
         
           
            
           CLOSE  ENTRADA.
            accept FIN-ARCHIVO

           EXIT PROGRAM.
