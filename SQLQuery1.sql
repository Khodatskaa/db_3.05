USE [db_3.05]
GO

SELECT * FROM Products;

SELECT * FROM Suppliers;

SELECT p.ProductName, p.ProductType, s.SupplierName, s.SupplierLocation, p.Quantity, p.CostPrice, p.DeliveryDate
FROM Products p
INNER JOIN Suppliers s ON p.SupplierID = s.SupplierID;

SELECT * FROM Products WHERE ProductType = 'Type1';

SELECT * FROM Products WHERE SupplierID = 1;

SELECT TOP 1 * FROM Products ORDER BY CostPrice DESC;

SELECT TOP 1 * FROM Products ORDER BY Quantity ASC;
