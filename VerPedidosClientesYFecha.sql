USE Tienda

SELECT Pedidos.ID_PEDIDO, Clientes.Nombre AS NombreCliente, Pedidos.Fecha

FROM Clientes

INNER JOIN Pedidos ON Clientes.ID_CLIENTE = Pedidos.ID_CLIENTE