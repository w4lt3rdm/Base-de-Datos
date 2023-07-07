#Queremos tener un listado de todas las categorías.
SELECT * FROM categorias;
#Cómo las categorías no tienen imágenes, solamente interesa obtener un listado de CategoriaNombre y Descripcion.
SELECT categoriaNombre, descripcion FROM categorias;
# Obtener un listado de los productos.
SELECT * FROM productos;
#¿Existen productos discontinuados? (Discontinuado = 1).
SELECT * FROM productos WHERE Discontinuado =1;
#Para el viernes hay que reunirse con el Proveedor 8. ¿Qué productos son los que nos provee?
SELECT * FROM productos WHERE ProveedorID =8;
#Queremos conocer todos los productos cuyo precio unitario se encuentre entre 10 y 22.
SELECT * FROM productos WHERE PrecioUnitario BETWEEN 10 AND 22;
#Se define que un producto hay que solicitarlo al proveedor si sus unidades en stock son menores al Nivel de Reorden. ¿Hay productos por solicitar?
SELECT * FROM productos WHERE NivelReorden < UnidadesStock; 
#Se quiere conocer todos los productos del listado anterior, pero que unidades pedidas sea igual a cero.
SELECT * FROM productos WHERE NivelReorden < UnidadesStock AND UnidadesPedidas =0; 
#Obtener un listado de todos los clientes con Contacto, Compania, Título, País. Ordenar el listado por País.
SELECT Contacto,Compania, Titulo,Pais  FROM clientes order by Pais;
#Queremos conocer a todos los clientes que tengan un título “Owner”.
SELECT *  FROM clientes WHERE Titulo LIKE "%Owner%";
#El operador telefónico que atendió a un cliente no recuerda su nombre. Solo sabe que comienza con “C”. ¿Lo ayudamos a obtener un listado con todos los contactos que inician con la letra “C”?
SELECT *  FROM clientes WHERE Contacto LIKE "C%";
#Obtener un listado de todas las facturas, ordenado por fecha de factura ascendente.
SELECT *  FROM facturas ORDER BY FechaFactura;
#Ahora se requiere un listado de las facturas con el país de envío “USA” y que su correo (EnvioVia) sea distinto de 3.
SELECT *  FROM facturas WHERE PaisEnvio LIKE "USA" AND EnvioVia <> 3;
#¿El cliente 'GOURL' realizó algún pedido?
SELECT * FROM facturas WHERE ClienteID LIKE "GOURL";
#Se quiere visualizar todas las facturas de los empleados 2, 3, 5, 8 y 9.
SELECT * FROM facturas WHERE EmpleadoID =2 OR EmpleadoID =3 OR EmpleadoID =5 OR EmpleadoID =8 OR EmpleadoID =9;
#Obtener el listado de todos los productos ordenados descendentemente por precio unitario.
SELECT * FROM productos ORDER BY PrecioUnitario desc;
#Obtener el listado de top 5 de productos cuyo precio unitario es el más caro.
SELECT * FROM productos ORDER BY PrecioUnitario desc LIMIT 5; 
#Obtener un top 10 de los productos con más unidades en stock.
SELECT * FROM productos ORDER BY UnidadesStock desc limit 10;
#Obtener un listado de FacturaID, Producto, Cantidad.
SELECT facturaId, productoId, cantidad FROM facturadetalle;
#Ordenar el listado anterior por cantidad descendentemente.
SELECT facturaId, productoId, cantidad FROM facturadetalle ORDER BY cantidad desc;
#Filtrar el listado solo para aquellos productos donde la cantidad se encuentre entre 50 y 100.
SELECT * FROM facturadetalle WHERE CANTIDAD BETWEEN 50 AND 100;
#En otro listado nuevo, obtener un listado con los siguientes nombres de columnas: NroFactura (FacturaID), Producto (ProductoID), Total (PrecioUnitario*Cantidad).
SELECT FacturaID AS NroFactura, ProductoID AS Producto, PrecioUnitario*Cantidad AS TOTAL  FROM facturadetalle;
#Obtener un listado de todos los clientes que viven en “Brazil" o “Mexico”, o que tengan un título que empiece con “Sales”. 
SELECT * FROM clientes WHERE (Pais = "Brazil" OR Pais = "Mexico") AND Titulo LIKE "Sales%" ;
SELECT * FROM clientes WHERE Pais IN ("Brazil", "Mexico") AND Titulo LIKE "Sales%" ;
SELECT * FROM clientes WHERE Pais NOT IN ("Brazil", "Mexico") AND Titulo LIKE "Sales%" ;

#Obtener un listado de todos los clientes que pertenecen a una compañía que empiece con la letra "A".
SELECT * FROM clientes WHERE Compania LIKE "A%";
#Obtener un listado con los datos: Ciudad, Contacto y renombrarlo como Apellido y Nombre, Titulo y renombrarlo como Puesto, de todos los clientes que sean de la ciudad "Madrid".
SELECT ciudad, contacto AS Apellido_y_Nombre, titulo as Puesto FROM clientes WHERE ciudad ="Madrid";
#Obtener un listado de todas las facturas con ID entre 10000 y 10500
SELECT * FROM facturas WHERE FacturaID BETWEEN 10000 AND 10500;
#Obtener un listado de todas las facturas con ID entre 10000 y 10500 o de los clientes con ID que empiecen con la letra “B”.
SELECT * FROM facturas WHERE (FacturaID BETWEEN 10000 AND 10500) OR ClienteID LIKE "B%";
#¿Existen facturas que la ciudad de envío sea “Vancouver” o que utilicen el correo 3?
SELECT * FROM facturas WHERE CiudadEnvio = "Vancouver" OR EnvioVia =3 ORDER BY CiudadEnvio desc;
#¿Cuál es el ID de empleado de “Buchanan”?
SELECT EmpleadoID FROM empleados WHERE apellido ="Buchanan";
#¿Existen facturas con EmpleadoID del empleado del ejercicio anterior? (No relacionar, sino verificar que existan facturas)
SELECT * FROM facturas WHERE EmpleadoID= 5;







