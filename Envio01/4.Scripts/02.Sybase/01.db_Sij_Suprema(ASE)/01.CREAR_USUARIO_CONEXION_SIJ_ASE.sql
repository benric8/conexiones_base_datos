/* 
 *******************************************************************************************************************************
 Objeto        : uc_exjuqws_sijsuprema
 Tipo de Objeto: USER
 Proposito     : Crear el usuario de conexión para el aplicativo Expediente Judicial Query .
 Autor         : RBENDEZUV
 Creado el     : 31/07/2024 15:00
 Version       : 1.0
 Base de Datos : SIJ ASE
 Observaciones : En el entorno de producción, modificar el password de conexión. En 
                 las pruebas de desarrollo se usó el password: '123456'.
				Reemplazar sij_001_18_50_suprema por el nombre de la base de datos ASE que corresponde.
 
 Bitacora      : Id        Responsable           Fecha     Hora  Version  Modificacion
                 --  ----------------------   ----------  -----  -------  ------------ 
 ******************************************************************************************************************************** 
*/
USE master	
GO

IF NOT EXISTS(SELECT 1 FROM master..syslogins WHERE name = 'uc_exjuqws_sijsuprema')
	BEGIN  
		EXEC sp_addlogin 'uc_exjuqws_sijsuprema','123456','sij_001_18_50_suprema','us_english',null,null,6,null
		EXEC sp_role 'grant','sso_role','uc_exjuqws_sijsuprema'
	END  
GO


/* Crea User */
USE sij_001_18_50_suprema
GO

IF NOT EXISTS(SELECT 1 FROM dbo.sysusers WHERE name = 'uc_exjuqws_sijsuprema')
	BEGIN  
		EXEC sp_adduser 'uc_exjuqws_sijsuprema', 'uc_exjuqws_sijsuprema', 'public'
	END  
GO