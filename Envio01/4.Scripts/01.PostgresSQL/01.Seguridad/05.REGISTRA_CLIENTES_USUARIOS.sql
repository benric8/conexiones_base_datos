/***********************************************************************************************   
AUTOR			:	RBENDEZUV
PROPOSITO		:	Registrar los clientes que consumiran el servicio y sus usuarios correspondientes
CREADO 			:	01/07/2024 12:00
VERSION     	: 	1.0
BASE DE DATOS	:	Seguridad
REQUISITOS		:	Haber generado la clave encriptada utilizando el utilitario Encryptador.jar que se 
					encuentra en la ruta del pase, leer el documento: GUIA-GENERACION-CLAVE-ENCRIPTADA-v1.0
OBSERVACIONES	:	1. El responsable de la base de datos del ambiente en la que se ejecuta el script debe determinar la clave 
					2. Encriptar la clave ingresando el USUARIO_CORRESPONDIENTE en la opcion <Encriptar con usuario y clave> del utilitario Encryptador.jar.
					3. La clave encriptada debe ser reemplazado en el texto "PASSWORD"
					4. El DBA debe asignar el valor correspondiente a las variables (var_c_aud_uidred, var_c_aud_pc, var_c_aud_mcaddr) 
						debido a que esos datos no se pueden obtener del motor de base de datos.
************************************************************************************************   
ID	  AUTOR	            FECHA	     	PROPOSITO                                                               
--    --------------	------------	------------------------------------------------------------   
@1    RBENDEZUV         01/07/2024 12:00   Registrar los clientes que consumiran el servicio y sus usuarios correspondientes
************************************************************************************************/
 
DO $$
	DECLARE var_f_aud timestamp := localtimestamp;
	DECLARE var_b_aud CHARACTER varying(1) := 'I';
	DECLARE var_c_aud_uid CHARACTER varying(30) := CURRENT_USER;
	DECLARE var_c_aud_uidred CHARACTER varying(30) := 'PC-DESARROLLO';
	DECLARE var_c_aud_pc CHARACTER varying(30) := 'PC-DESARROLLO';
	DECLARE var_c_aud_ip CHARACTER varying(15) := cast(host(inet_client_addr()) as varchar(15));
	DECLARE var_c_aud_mcaddr CHARACTER varying(17) := '00-09-00-00-00-00';
BEGIN 
	/*::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*/
	/*:::::::::::::::::::::::::::::::::::::CEJ SUPREMA::::::::::::::::::::::::::::::::::::::::*/
	/*::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*/
	IF NOT EXISTS(SELECT 1 FROM seguridad.mae_cliente WHERE c_cliente='00002')
	THEN 

		INSERT INTO seguridad.mae_cliente( n_cliente, c_cliente, x_cliente, x_descripcion, l_tipo_cliente, l_activo,f_aud, b_aud, c_aud_uid, c_aud_uidred, c_aud_pc, c_aud_ip, c_aud_mcaddr)
		VALUES ( nextval('seguridad.mae_cliente_seq'), 
		 '00002', 
		 'Sistema de Expedientes Judiciales Suprema',
		 'cliente del ws expedientes-judiciales-query-ws-rest',
		 'I', 
		 '1',
		 var_f_aud,
		 var_b_aud, 
		 var_c_aud_uid,
		 var_c_aud_uidred, 
		 var_c_aud_pc,
		 var_c_aud_ip,
		 var_c_aud_mcaddr);
		 
		RAISE NOTICE 'Se creo el cliente con código 00002 ';
	ELSE
		RAISE NOTICE 'Ya estaba registrado el cliente con código 00002 ';
	END IF;
	
	IF NOT EXISTS(SELECT 1 FROM seguridad.mae_usuario WHERE c_usuario='USR_00002' AND n_cliente = (select n_cliente from seguridad.mae_cliente where c_cliente='00002'))
	THEN 

		/*Cambiar el texto "PASSWORD" por la clave encriptada con  la opcion opcion <Encriptar con usuario y clave> y usuario USR_CLEXJUQWS*/
		INSERT INTO seguridad.mae_usuario
		( n_usuario, c_usuario, c_clave,n_cliente, f_registro, l_activo,f_aud, b_aud, c_aud_uid, c_aud_uidred, c_aud_pc, c_aud_ip, c_aud_mcaddr) 
		VALUES (nextval('seguridad.mae_usuario_seq'),
		 'USR_00002',
		 'PASSWORD',
		 (select n_cliente from seguridad.mae_cliente where c_cliente='00002'),
		 localtimestamp,
		 '1',
		var_f_aud,
		 var_b_aud, 
		 var_c_aud_uid,
		 var_c_aud_uidred, 
		 var_c_aud_pc,
		 var_c_aud_ip,
		 var_c_aud_mcaddr);
		 
		RAISE NOTICE 'Se asigno el usuario USR_00002 al cliente 00002';
	ELSE
		RAISE NOTICE 'Ya estaba asignado el usuario USR_00002 al cliente 00002';
	END IF;
END $$;