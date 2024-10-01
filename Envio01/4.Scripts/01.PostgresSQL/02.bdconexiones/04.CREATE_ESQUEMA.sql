/***********************************************************************************************   
AUTOR		:	rbendezuv
PROPOSITO	:	Creación de esquema de serviciosexternos
CREADO 		:	15/06/2024
ALCANCE		:	Proyecto botón de pánico
   
************************************************************************************************   
ID	  AUTOR	            FECHA	     	PROPOSITO                                                               
--    --------------	------------	------------------------------------------------------------   
@1    rbendezuv          15/06/2024      Creación de esquema de bdconexiones en la base de datos BD_CONEXIONES
************************************************************************************************/ 
/* Script para crear un esquema en nueva BD */

CREATE SCHEMA IF NOT EXISTS bdconexiones AUTHORIZATION "usrBdConexiones";
COMMENT ON SCHEMA bdconexiones IS 'Esquema para proyecto conexiones base de datos';