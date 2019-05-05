--(*)Muestre el número de factura, la fecha de venta, el artículo, el importe y nombre del vendedor
--para los casos en que para esa factura su importe total sea superior o igual a 350.
--(*)Liste número de factura, fecha, artículo, cantidad e importe; para los casos en que todas
--las cantidades compradas sean superior a 30.
--(*)Liste número de factura, fecha, cliente, artículo e importe para los casos en que alguno
--de los importes de esa factura sean menores a 20 y que en la descripción del artículo contenga la palabra papel.
--(*)Se quiere saber la cantidad total vendida, el importe total vendido y el promedio vendido por fecha,
--siempre que esa cantidad vendida sea superior al promedio de la cantidad global.
--(*)Liste factura, fecha, vendedor, cliente, articulo, cantidad e importe; para las ventas de febrero y marzo 
--de los años 2006 y 2007 y siempre que el artículo contenga la palabra goma. 
--(*)Liste nombre de clientes, fecha y factura para las ventas del año actual. Muestre los clientes hayan comprado o no en este año.
--(*)Listar todos los vendedores (incluidos los que nunca vendieron) y los años de venta. No muestre registros repetidos
--(*)Crear una vista que muestre todos los productos vendidos con el número de factura, y también los  que no fueron vendidos nunca.
--(*)Cree un procedimiento que inserte un registro en la tabla Articulos con los valores de las columnas
--de las tablas pasados por parámetros y muestre en un parámetro de salida el código del artículo generado
--(*)Cree un procedimiento que incremente el valor del precio unitario en un 10% a un artículo ingresado por parámetro,
--actualizando el valor en la tabla y muestre por parámetro de salida el nuevo valor calculado del precio unitario.
select f.nro_factura, f.fecha, a.descripcion, d.cantidad*d.pre_unitario 'importe', v.nom_vendedor + v.ape_vendedor 'NombreV'
from facturas f, detalle_facturas d, articulos a, vendedores v
where f.nro_factura=d.nro_factura and d.cod_articulo=a.cod_articulo and v.cod_vendedor=f.cod_vendedor
and 'importe' >350