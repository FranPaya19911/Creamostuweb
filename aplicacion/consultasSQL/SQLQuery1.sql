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

select
*
from
dbo.USUARIOS as u

Select 
*
from 
dbo.USUARIOS as u
where
u.Activo = 'true' and u.Correo = 'admin@creamostuweb.com' and  u.Pass = 'Admin678';
