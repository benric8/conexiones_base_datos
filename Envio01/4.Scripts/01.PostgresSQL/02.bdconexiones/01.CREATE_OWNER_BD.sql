/***********************************************************************************************   
AUTOR		:	rbendezuv
PROPOSITO	:	Creación de usuario propietario de los objetos del proyecto conexiones base de datos
CREADO 		:	15/06/2024
ALCANCE		:	proyecto conexiones base de datos
   
************************************************************************************************   
ID	  AUTOR	            FECHA	     	PROPOSITO                                                               
--    --------------	------------	------------------------------------------------------------   
@1    rbendezuv          15/06/2024      Creación de usuario de base de datos
************************************************************************************************/ 
/* Script para creación de rol/usuario propietarío de la DB, reemplazar "123456" por su clave personalizada */

CREATE ROLE "usrBdConexiones" WITH
  LOGIN
  NOSUPERUSER
  INHERIT
  NOCREATEDB
  NOCREATEROLE
  NOREPLICATION
  PASSWORD '123456';