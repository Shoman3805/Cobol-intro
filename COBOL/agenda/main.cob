       IDENTIFICATION DIVISION.
       PROGRAM-ID. EJERCICIO1.

       ENVIRONMENT DIVISION.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 user pic x(30).
       01 nombre pic x(20).
       01 apellido pic x(20).
       01 desc pic x(40).
       01 numero pic 9(10).
       01 accion pic 9(1).
       PROCEDURE DIVISION.
       
           move 7 to accion
           Perform until accion = 0
           CALL "SYSTEM" USING "clear"
           Display "Menu:"
           Display "0- Salir"
           Display "1- Agregar contacto"
           Display "2- Ver informacion de contacto"
           Display "3- Eliminar contacto"
           Display "4- Ver todos los contactos"
           accept accion
        

           if accion = 1 then
            CALL 'entrada' USING user nombre apellido desc numero
            DISPLAY  user " Agregado."
           end-if
           
           if accion = 2 then
            CALL 'lectura' USING user nombre apellido desc numero
           end-if

           if accion = 3 then
            CALL 'borrar' USING user nombre apellido desc numero
           end-if
           
           if accion = 4 then
            call 'readall' using user nombre apellido desc numero
           end-if
              end-perform
           STOP RUN.
