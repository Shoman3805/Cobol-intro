       IDENTIFICATION DIVISION.
       PROGRAM-ID. borrar.

       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION. 
       FILE-CONTROL.

           SELECT BORRADA ASSIGN TO "contactos.txt"
           ORGANIZATION IS LINE SEQUENTIAL. 

            SELECT TEMP ASSIGN TO "temp.txt"
           ORGANIZATION IS LINE SEQUENTIAL. 
       DATA DIVISION.
       FILE SECTION.
     
       FD  BORRADA.
       01  tabla.
           05 usuario pic x(30).
           05 nom PIC X(20).
           05 ap pic x(20).
           05 msg pic x(40).
           05 num pic 9(10).

       FD  TEMP.
       01  ttabla.
           05 tusuario pic x(30).
           05 tnom PIC X(20).
           05 tap pic x(20).
           05 tmsg pic x(40).
           05 tnum pic 9(10).

       WORKING-STORAGE SECTION.
       01 FIN-ARCHIVO PIC X VALUE "N".
       01 flag pic 9(1).
       LINKAGE SECTION.
       01 user pic x(15).
       01 nombre pic x(20).
       01 apellido pic x(20).
       01 nota pic x(40).
       01 numero pic 9(10).
      
       
       PROCEDURE DIVISION USING user nombre apellido nota numero.
           move "N" to FIN-ARCHIVO
           move 1 to flag
           Display "Ingrese el nombre de usuario a borrar"
           accept user
            OPEN  input BORRADA
            open output TEMP
          
           PERFORM UNTIL FIN-ARCHIVO = "S"
           READ BORRADA
           AT END
           MOVE "S" TO FIN-ARCHIVO
           NOT AT END

           IF user <> usuario then
           
           move usuario to tusuario
           move nom to tnom
           move ap to tap 
           move msg to tmsg
           move num to tnum
           write ttabla

           else 
           display usuario " eliminado."
           move 0 to flag
           end-if
           END-READ
           END-PERFORM
        
           close TEMP
           CLOSE BORRADA.
           if flag = 1 then
              display "Usuario no encontrado"
              accept FIN-ARCHIVO
              exit program 
           end-if
           move "N" to FIN-ARCHIVO
           OPEN  output BORRADA
           open input TEMP
          
           PERFORM UNTIL FIN-ARCHIVO = "S"
           READ TEMP
           AT END
           MOVE "S" TO FIN-ARCHIVO
           NOT AT END

           move tusuario to usuario
           move tnom to nom
           move tap to ap 
           move tmsg to msg
           move tnum to num
           write tabla
           
           END-READ
           END-PERFORM
           close TEMP
           CLOSE BORRADA.
           
               
           
           
            accept FIN-ARCHIVO
           
           

           EXIT PROGRAM.
