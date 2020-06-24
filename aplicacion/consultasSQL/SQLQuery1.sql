--Select
--u.UsuarioId,
--u.Correo
--from
--dbo.USUARIOS as u
--where u.Correo ='admin@creamostuweb.com';

--select 
--max(UsuarioId)
--from 
--dbo.USUARIOS

--select
--*
--from
--dbo.USUARIOS as u

--Select 
--*
--from 
--dbo.USUARIOS as u
--where
-- u.Correo = 'admin@creamostuweb.com' and  u.Pass = 'ADMIN678';

--Select 
--@@ROWCOUNT,
--u.Correo,
--u.Pass
--from 
--dbo.USUARIOS as u
--where
--u.Activo = 'true' and u.Correo = 'admin@creamostuweb.com' and  u.Pass = 'lopez';

 -- ALTER TABLE USUARIOS
 --  ALTER COLUMN Correo NVARCHAR (MAX) COLLATE Latin1_General_CS_AS
 
 --ALTER TABLE USUARIOS
 --  ALTER COLUMN Pass  NVARCHAR (50) COLLATE Latin1_General_CS_AS


-- select COUNT(@@ROWCOUNT) from MENSAJES WHERE FkUsuario = 2
-- select m.NumeroDelChat, m.Mensaje, m.Fecha, m.FkUsuario, u.Nombre from MENSAJES as m inner join USUARIOS as u on m.FkUsuario = u.UsuarioId where m.NumeroDelChat = 1
 --select * from USUARIOS

 select m.NumeroDelChat, m.Mensaje, m.Fecha, m.FkUsuario, u.Nombre from MENSAJES as m inner join USUARIOS as u on m.FkUsuario = u.UsuarioId where m.NumeroDelChat = 2