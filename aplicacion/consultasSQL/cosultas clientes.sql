--select * from INCIDENCIAS as i
--select u.Nombre, i.Tipo, i.Comentario, i.Valoracion from INCIDENCIAS as i inner join USUARIOS as u on i.FkUsuario = u.UsuarioId;

--select * from PETICIONES as p
--select u.Nombre,p.Tipo, p.Comnetario from PETICIONES as p inner join USUARIOS as u on p.FkUsuario = u.UsuarioId;


--Tabla1 INNER JOIN Tabla2 ON (Tabla1.campo2 = Tabla2.campo1),
--Tabla1 INNER JOIN Tabla3 ON (Tabla1.campo3 = Tabla3.campo1)


DECLARE @valor VARCHAR(50) = 'analisis'; 
DECLARE @valor2 VARCHAR(50) = 'Pagina web'; 

select u.Nombre, pr.AnalisisWeb, pr.Nuevo, p.Estado from PEDIDOS as p
inner join USUARIOS as u on p.FkUsuario = u.UsuarioId inner join PRODUCTOS as pr on  p.FkProducto  = pr.ProductoId


where  @valor = (

select 'Pagina web' from PRODUCTOS as pro where pro.Nuevo = 'True'

)


DECLARE @valor2 VARCHAR(50) = 'Pagina web'; 
select @valor2 from PRODUCTOS as pro where pro.Nuevo = 'True'