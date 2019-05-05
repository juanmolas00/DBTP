--(*)Muestre el n�mero de factura, la fecha de venta, el art�culo, el importe y nombre del vendedor
--para los casos en que para esa factura su importe total sea superior o igual a 350.
--(*)Liste n�mero de factura, fecha, art�culo, cantidad e importe; para los casos en que todas
--las cantidades compradas sean superior a 30.
--(*)Liste n�mero de factura, fecha, cliente, art�culo e importe para los casos en que alguno
--de los importes de esa factura sean menores a 20 y que en la descripci�n del art�culo contenga la palabra papel.
--(*)Se quiere saber la cantidad total vendida, el importe total vendido y el promedio vendido por fecha,
--siempre que esa cantidad vendida sea superior al promedio de la cantidad global.
--(*)Liste factura, fecha, vendedor, cliente, articulo, cantidad e importe; para las ventas de febrero y marzo 
--de los a�os 2006 y 2007 y siempre que el art�culo contenga la palabra goma. 
--(*)Liste nombre de clientes, fecha y factura para las ventas del a�o actual. Muestre los clientes hayan comprado o no en este a�o.
--(*)Listar todos los vendedores (incluidos los que nunca vendieron) y los a�os de venta. No muestre registros repetidos
--(*)Crear una vista que muestre todos los productos vendidos con el n�mero de factura, y tambi�n los  que no fueron vendidos nunca.
--(*)Cree un procedimiento que inserte un registro en la tabla Articulos con los valores de las columnas
--de las tablas pasados por par�metros y muestre en un par�metro de salida el c�digo del art�culo generado
--(*)Cree un procedimiento que incremente el valor del precio unitario en un 10% a un art�culo ingresado por par�metro,
--actualizando el valor en la tabla y muestre por par�metro de salida el nuevo valor calculado del precio unitario.
select f.nro_factura, f.fecha, a.descripcion, d.cantidad*d.pre_unitario 'importe', v.nom_vendedor + v.ape_vendedor 'NombreV'
from facturas f, detalle_facturas d, articulos a, vendedores v
where f.nro_factura=d.nro_factura and d.cod_articulo=a.cod_articulo and v.cod_vendedor=f.cod_vendedor
and 'importe' >350