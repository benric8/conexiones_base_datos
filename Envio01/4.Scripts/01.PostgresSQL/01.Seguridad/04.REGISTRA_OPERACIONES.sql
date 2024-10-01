/***********************************************************************************************   
AUTOR			:	RBENDEZUV
PROPOSITO		:	Registrar las operaciones de Expedientes Judiciales Query Ws Rest
CREADO 			:	01/07/2024 12:00
VERSION     	: 	1.0
BASE DE DATOS	:	Seguridad
OBSERVACION		:	El DBA debe asignar el valor correspondiente a las variables 
					(var_c_aud_uidred, var_c_aud_pc, var_c_aud_mcaddr) debido a que 
					esos datos no se pueden obtener del motor de base de datos.
************************************************************************************************   
ID	  AUTOR	            FECHA	     	PROPOSITO                                                               
--    --------------	------------	------------------------------------------------------------   
@1    RBENDEZUV         01/07/2024 12:00      Registrar operaciones para el ser consumidos por los clientes del api
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
IF NOT EXISTS(SELECT 1 FROM seguridad.mae_operacion WHERE x_operacion='/suprema/lista-resumen-expediente')
	THEN
		INSERT INTO seguridad.mae_operacion 
			(n_operacion, n_aplicativo, n_rol, x_operacion, x_descripcion, x_endpoint, l_activo,
			f_aud, b_aud, c_aud_uid, c_aud_uidred, c_aud_pc, c_aud_ip, c_aud_mcaddr) 
		VALUES ( Nextval('seguridad.mae_operacion_seq'),
		(SELECT n_aplicativo FROM seguridad.mae_aplicativo WHERE c_aplicativo = 'EJQWS'),
		(SELECT n_rol FROM seguridad.mae_rol WHERE c_rol ='AEXJU01'), 
		'/suprema/lista-resumen-expediente', 
		'Método para listar el resumen de un expediente.',
		'/expedientes-judiciales-query-ws/suprema/lista-resumen-expediente',
		'1',
		var_f_aud, var_b_aud, var_c_aud_uid, var_c_aud_uidred,var_c_aud_pc,var_c_aud_ip,var_c_aud_mcaddr); 
	 	RAISE NOTICE 'Se creo la operacion con endpoint /suprema/lista-resumen-expediente';
	ELSE
		RAISE NOTICE 'Ya estaba registrado la operacion con endpoint /suprema/lista-resumen-expediente';
	END IF; 

IF NOT EXISTS(SELECT 1 FROM seguridad.mae_operacion WHERE x_operacion='/suprema/hitos-expediente')
	THEN
		INSERT INTO seguridad.mae_operacion 
			(n_operacion, n_aplicativo, n_rol, x_operacion, x_descripcion, x_endpoint, l_activo,
			f_aud, b_aud, c_aud_uid, c_aud_uidred, c_aud_pc, c_aud_ip, c_aud_mcaddr) 
		VALUES ( Nextval('seguridad.mae_operacion_seq'),
		(SELECT n_aplicativo FROM seguridad.mae_aplicativo WHERE c_aplicativo = 'EJQWS'),
		(SELECT n_rol FROM seguridad.mae_rol WHERE c_rol ='AEXJU01'), 
		'/suprema/hitos-expediente', 
		'Método para listar los hitos del expediente.',
		'/expedientes-judiciales-query-ws/suprema/hitos-expediente',
		'1',
		var_f_aud, var_b_aud, var_c_aud_uid, var_c_aud_uidred,var_c_aud_pc,var_c_aud_ip,var_c_aud_mcaddr); 
	 	RAISE NOTICE 'Se creo la operacion con endpoint /suprema/hitos-expediente';
	ELSE
		RAISE NOTICE 'Ya estaba registrado la operacion con endpoint /suprema/hitos-expediente';
	END IF; 

IF NOT EXISTS(SELECT 1 FROM seguridad.mae_operacion WHERE x_operacion='/suprema/movimientos-interinstitucionales')
	THEN
		INSERT INTO seguridad.mae_operacion 
			(n_operacion, n_aplicativo, n_rol, x_operacion, x_descripcion, x_endpoint, l_activo,
			f_aud, b_aud, c_aud_uid, c_aud_uidred, c_aud_pc, c_aud_ip, c_aud_mcaddr) 
		VALUES ( Nextval('seguridad.mae_operacion_seq'),
		(SELECT n_aplicativo FROM seguridad.mae_aplicativo WHERE c_aplicativo = 'EJQWS'),
		(SELECT n_rol FROM seguridad.mae_rol WHERE c_rol ='AEXJU01'), 
		'/suprema/movimientos-interinstitucionales', 
		'Método para listar los hitos del expediente.',
		'/expedientes-judiciales-query-ws/suprema/movimientos-interinstitucionales',
		'1',
		var_f_aud, var_b_aud, var_c_aud_uid, var_c_aud_uidred,var_c_aud_pc,var_c_aud_ip,var_c_aud_mcaddr); 
	 	RAISE NOTICE 'Se creo la operacion con endpoint /suprema/movimientos-interinstitucionales';
	ELSE
		RAISE NOTICE 'Ya estaba registrado la operacion con endpoint /suprema/movimientos-interinstitucionales';
	END IF; 

IF NOT EXISTS(SELECT 1 FROM seguridad.mae_operacion WHERE x_operacion='/suprema/detalle-suprema')
	THEN
		INSERT INTO seguridad.mae_operacion 
			(n_operacion, n_aplicativo, n_rol, x_operacion, x_descripcion, x_endpoint, l_activo,
			f_aud, b_aud, c_aud_uid, c_aud_uidred, c_aud_pc, c_aud_ip, c_aud_mcaddr) 
		VALUES ( Nextval('seguridad.mae_operacion_seq'),
		(SELECT n_aplicativo FROM seguridad.mae_aplicativo WHERE c_aplicativo = 'EJQWS'),
		(SELECT n_rol FROM seguridad.mae_rol WHERE c_rol ='AEXJU01'), 
		'/suprema/detalle-suprema', 
		'Método para listar los hitos del expediente.',
		'/expedientes-judiciales-query-ws/suprema/detalle-suprema',
		'1',
		var_f_aud, var_b_aud, var_c_aud_uid, var_c_aud_uidred,var_c_aud_pc,var_c_aud_ip,var_c_aud_mcaddr); 
	 	RAISE NOTICE 'Se creo la operacion con endpoint /suprema/detalle-suprema';
	ELSE
		RAISE NOTICE 'Ya estaba registrado la operacion con endpoint /suprema/detalle-suprema';
	END IF; 

IF NOT EXISTS(SELECT 1 FROM seguridad.mae_operacion WHERE x_operacion='/suprema/detalle-partes')
	THEN
		INSERT INTO seguridad.mae_operacion 
			(n_operacion, n_aplicativo, n_rol, x_operacion, x_descripcion, x_endpoint, l_activo,
			f_aud, b_aud, c_aud_uid, c_aud_uidred, c_aud_pc, c_aud_ip, c_aud_mcaddr) 
		VALUES ( Nextval('seguridad.mae_operacion_seq'),
		(SELECT n_aplicativo FROM seguridad.mae_aplicativo WHERE c_aplicativo = 'EJQWS'),
		(SELECT n_rol FROM seguridad.mae_rol WHERE c_rol ='AEXJU01'), 
		'/suprema/detalle-partes', 
		'Método para listar los hitos del expediente.',
		'/expedientes-judiciales-query-ws/suprema/detalle-partes',
		'1',
		var_f_aud, var_b_aud, var_c_aud_uid, var_c_aud_uidred,var_c_aud_pc,var_c_aud_ip,var_c_aud_mcaddr); 
	 	RAISE NOTICE 'Se creo la operacion con endpoint /suprema/detalle-partes';
	ELSE
		RAISE NOTICE 'Ya estaba registrado la operacion con endpoint /suprema/detalle-partes';
	END IF; 

IF NOT EXISTS(SELECT 1 FROM seguridad.mae_operacion WHERE x_operacion='/suprema/seguimiento-expediente')
	THEN
		INSERT INTO seguridad.mae_operacion 
			(n_operacion, n_aplicativo, n_rol, x_operacion, x_descripcion, x_endpoint, l_activo,
			f_aud, b_aud, c_aud_uid, c_aud_uidred, c_aud_pc, c_aud_ip, c_aud_mcaddr) 
		VALUES ( Nextval('seguridad.mae_operacion_seq'),
		(SELECT n_aplicativo FROM seguridad.mae_aplicativo WHERE c_aplicativo = 'EJQWS'),
		(SELECT n_rol FROM seguridad.mae_rol WHERE c_rol ='AEXJU01'), 
		'/suprema/seguimiento-expediente', 
		'Método para listar los hitos del expediente.',
		'/expedientes-judiciales-query-ws/suprema/seguimiento-expediente',
		'1',
		var_f_aud, var_b_aud, var_c_aud_uid, var_c_aud_uidred,var_c_aud_pc,var_c_aud_ip,var_c_aud_mcaddr); 
	 	RAISE NOTICE 'Se creo la operacion con endpoint /suprema/seguimiento-expediente';
	ELSE
		RAISE NOTICE 'Ya estaba registrado la operacion con endpoint /suprema/seguimiento-expediente';
	END IF; 

IF NOT EXISTS(SELECT 1 FROM seguridad.mae_operacion WHERE x_operacion='/suprema/notificacion-expediente')
	THEN
		INSERT INTO seguridad.mae_operacion 
			(n_operacion, n_aplicativo, n_rol, x_operacion, x_descripcion, x_endpoint, l_activo,
			f_aud, b_aud, c_aud_uid, c_aud_uidred, c_aud_pc, c_aud_ip, c_aud_mcaddr) 
		VALUES ( Nextval('seguridad.mae_operacion_seq'),
		(SELECT n_aplicativo FROM seguridad.mae_aplicativo WHERE c_aplicativo = 'EJQWS'),
		(SELECT n_rol FROM seguridad.mae_rol WHERE c_rol ='AEXJU01'), 
		'/suprema/notificacion-expediente', 
		'Método para listar los hitos del expediente.',
		'/expedientes-judiciales-query-ws/suprema/notificacion-expediente',
		'1',
		var_f_aud, var_b_aud, var_c_aud_uid, var_c_aud_uidred,var_c_aud_pc,var_c_aud_ip,var_c_aud_mcaddr); 
	 	RAISE NOTICE 'Se creo la operacion con endpoint /suprema/notificacion-expediente';
	ELSE
		RAISE NOTICE 'Ya estaba registrado la operacion con endpoint /suprema/notificacion-expediente';
	END IF; 

IF NOT EXISTS(SELECT 1 FROM seguridad.mae_operacion WHERE x_operacion='/suprema/vocal-ponente')
	THEN
		INSERT INTO seguridad.mae_operacion 
			(n_operacion, n_aplicativo, n_rol, x_operacion, x_descripcion, x_endpoint, l_activo,
			f_aud, b_aud, c_aud_uid, c_aud_uidred, c_aud_pc, c_aud_ip, c_aud_mcaddr) 
		VALUES ( Nextval('seguridad.mae_operacion_seq'),
		(SELECT n_aplicativo FROM seguridad.mae_aplicativo WHERE c_aplicativo = 'EJQWS'),
		(SELECT n_rol FROM seguridad.mae_rol WHERE c_rol ='AEXJU01'), 
		'/suprema/vocal-ponente', 
		'Método para listar los hitos del expediente.',
		'/expedientes-judiciales-query-ws/suprema/vocal-ponente',
		'1',
		var_f_aud, var_b_aud, var_c_aud_uid, var_c_aud_uidred,var_c_aud_pc,var_c_aud_ip,var_c_aud_mcaddr); 
	 	RAISE NOTICE 'Se creo la operacion con endpoint /suprema/vocal-ponente';
	ELSE
		RAISE NOTICE 'Ya estaba registrado la operacion con endpoint /suprema/vocal-ponente';
	END IF; 

IF NOT EXISTS(SELECT 1 FROM seguridad.mae_operacion WHERE x_operacion='/suprema/link-ejecutoria')
	THEN
		INSERT INTO seguridad.mae_operacion 
			(n_operacion, n_aplicativo, n_rol, x_operacion, x_descripcion, x_endpoint, l_activo,
			f_aud, b_aud, c_aud_uid, c_aud_uidred, c_aud_pc, c_aud_ip, c_aud_mcaddr) 
		VALUES ( Nextval('seguridad.mae_operacion_seq'),
		(SELECT n_aplicativo FROM seguridad.mae_aplicativo WHERE c_aplicativo = 'EJQWS'),
		(SELECT n_rol FROM seguridad.mae_rol WHERE c_rol ='AEXJU01'), 
		'/suprema/link-ejecutoria', 
		'Método para listar los hitos del expediente.',
		'/expedientes-judiciales-query-ws/suprema/link-ejecutoria',
		'1',
		var_f_aud, var_b_aud, var_c_aud_uid, var_c_aud_uidred,var_c_aud_pc,var_c_aud_ip,var_c_aud_mcaddr); 
	 	RAISE NOTICE 'Se creo la operacion con endpoint /suprema/link-ejecutoria';
	ELSE
		RAISE NOTICE 'Ya estaba registrado la operacion con endpoint /suprema/link-ejecutoria';
	END IF; 

IF NOT EXISTS(SELECT 1 FROM seguridad.mae_operacion WHERE x_operacion='/suprema/vista-causa-expediente')
	THEN
		INSERT INTO seguridad.mae_operacion 
			(n_operacion, n_aplicativo, n_rol, x_operacion, x_descripcion, x_endpoint, l_activo,
			f_aud, b_aud, c_aud_uid, c_aud_uidred, c_aud_pc, c_aud_ip, c_aud_mcaddr) 
		VALUES ( Nextval('seguridad.mae_operacion_seq'),
		(SELECT n_aplicativo FROM seguridad.mae_aplicativo WHERE c_aplicativo = 'EJQWS'),
		(SELECT n_rol FROM seguridad.mae_rol WHERE c_rol ='AEXJU01'), 
		'/suprema/vista-causa-expediente', 
		'Método para listar los hitos del expediente.',
		'/expedientes-judiciales-query-ws/suprema/vista-causa-expediente',
		'1',
		var_f_aud, var_b_aud, var_c_aud_uid, var_c_aud_uidred,var_c_aud_pc,var_c_aud_ip,var_c_aud_mcaddr); 
	 	RAISE NOTICE 'Se creo la operacion con endpoint /suprema/vista-causa-expediente';
	ELSE
		RAISE NOTICE 'Ya estaba registrado la operacion con endpoint /suprema/vista-causa-expediente';
	END IF; 

IF NOT EXISTS(SELECT 1 FROM seguridad.mae_operacion WHERE x_operacion='/suprema/lista-ejecutoria')
	THEN
		INSERT INTO seguridad.mae_operacion 
			(n_operacion, n_aplicativo, n_rol, x_operacion, x_descripcion, x_endpoint, l_activo,
			f_aud, b_aud, c_aud_uid, c_aud_uidred, c_aud_pc, c_aud_ip, c_aud_mcaddr) 
		VALUES ( Nextval('seguridad.mae_operacion_seq'),
		(SELECT n_aplicativo FROM seguridad.mae_aplicativo WHERE c_aplicativo = 'EJQWS'),
		(SELECT n_rol FROM seguridad.mae_rol WHERE c_rol ='AEXJU01'), 
		'/suprema/lista-ejecutoria', 
		'Método para listar los hitos del expediente.',
		'/expedientes-judiciales-query-ws/suprema/lista-ejecutoria',
		'1',
		var_f_aud, var_b_aud, var_c_aud_uid, var_c_aud_uidred,var_c_aud_pc,var_c_aud_ip,var_c_aud_mcaddr); 
	 	RAISE NOTICE 'Se creo la operacion con endpoint /suprema/lista-ejecutoria';
	ELSE
		RAISE NOTICE 'Ya estaba registrado la operacion con endpoint /suprema/lista-ejecutoria';
	END IF; 

IF NOT EXISTS(SELECT 1 FROM seguridad.mae_operacion WHERE x_operacion='/suprema/obtener-resolucion')
	THEN
		INSERT INTO seguridad.mae_operacion 
			(n_operacion, n_aplicativo, n_rol, x_operacion, x_descripcion, x_endpoint, l_activo,
			f_aud, b_aud, c_aud_uid, c_aud_uidred, c_aud_pc, c_aud_ip, c_aud_mcaddr) 
		VALUES ( Nextval('seguridad.mae_operacion_seq'),
		(SELECT n_aplicativo FROM seguridad.mae_aplicativo WHERE c_aplicativo = 'EJQWS'),
		(SELECT n_rol FROM seguridad.mae_rol WHERE c_rol ='AEXJU01'), 
		'/suprema/obtener-resolucion', 
		'Método para listar los hitos del expediente.',
		'/expedientes-judiciales-query-ws/suprema/obtener-resolucion',
		'1',
		var_f_aud, var_b_aud, var_c_aud_uid, var_c_aud_uidred,var_c_aud_pc,var_c_aud_ip,var_c_aud_mcaddr); 
	 	RAISE NOTICE 'Se creo la operacion con endpoint /suprema/obtener-resolucion';
	ELSE
		RAISE NOTICE 'Ya estaba registrado la operacion con endpoint /suprema/obtener-resolucion';
	END IF; 

COMMIT;
END $$;