/***********************************************************************************************   
AUTOR			:	RBENDEZUV
PROPOSITO		:	Asigna permisos al usuario de conexión de BD Seguridad
CREADO 			:	01/07/2024 12:00
VERSION     	: 	1.0
BASE DE DATOS	:	Seguridad
   
************************************************************************************************   
ID	  AUTOR	            FECHA	     	PROPOSITO                                                               
--    --------------	------------	------------------------------------------------------------   
@1    RBENDEZUV         01/07/2024 12:00      Asigna permisos al usuario de conexión 
************************************************************************************************/ 
GRANT ALL ON SCHEMA seguridad TO uc_exjuqws_seguridad;
GRANT SELECT ON ALL TABLES IN SCHEMA seguridad TO uc_exjuqws_seguridad;