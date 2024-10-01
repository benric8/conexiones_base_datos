/***********************************************************************************************   
AUTOR		:	rbendezuv
PROPOSITO	:	Creación de TABLESPACE donde se alamcenaran los objetos del proyecto conexiones base de datos
CREADO 		:	15/06/2024
ALCANCE		:	Proyecto conexiones base de datos
   
************************************************************************************************   
ID	  AUTOR	            FECHA	     	PROPOSITO                                                               
--    --------------	------------	------------------------------------------------------------   
@1    rbendezuv          15/06/2024      Creación de objetos base
************************************************************************************************/ 
/* En LOCATION de tablespace colocar la ruta donde se almacenara el tablespace tbs_bdconexiones */
  
/* Script para crear tablespace */

CREATE TABLESPACE "TBS_BDCONEXIONES" OWNER "usrServiciosExternos" LOCATION '/voldata/dbdata/pgsql/bdconexiones'
CREATE TABLESPACE "TBS_BDCONEXIONES_AUD" OWNER "usrServiciosExternos" LOCATION '/voldata/dbdata/pgsql/bdconexiones_aud'
CREATE TABLESPACE "TBS_BDCONEXIONES_MAE" OWNER "usrServiciosExternos" LOCATION '/voldata/dbdata/pgsql/bdconexiones_mae'
CREATE TABLESPACE "TBS_BDCONEXIONES_MOV" OWNER "usrServiciosExternos" LOCATION '/voldata/dbdata/pgsql/bdconexiones_mov'
CREATE TABLESPACE "TBS_BDCONEXIONES_IDX" OWNER "usrServiciosExternos" LOCATION '/voldata/dbdata/pgsql/bdconexiones_idx'