/***********************************************************************************************   
AUTOR		:	rbendezuv
PROPOSITO	:	Creación de la base de datos BD conexiones
CREADO 		:	15/06/2024
ALCANCE		:	proyecto conexiones base de datos
   
************************************************************************************************   
ID	  AUTOR	            FECHA	     	PROPOSITO                                                               
--    --------------	------------	------------------------------------------------------------   
@1    rbendezuv          15/06/2024      Creación de base de datos
************************************************************************************************/ 

/* Script para creación de nueva BD */

CREATE DATABASE "BD_CONEXIONES"
    WITH 
    OWNER = "usrBdConexiones"
    ENCODING = 'UTF8'
    LC_COLLATE = 'en_US.UTF-8'
    LC_CTYPE = 'en_US.UTF-8'
    TABLESPACE = "TBS_BDCONEXIONES"
    CONNECTION LIMIT = -1;