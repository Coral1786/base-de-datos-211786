USE Tienda

SELECT Pedidos.ID_CLIENTE, Clientes.Nombre

FROM Clientes

INNER JOIN Pedidos ON Clientes.ID_CLIENTE = Pedidos.ID_CLIENTE