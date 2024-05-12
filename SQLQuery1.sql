USE [db_3.05]
GO

INSERT INTO Suppliers (SupplierName, SupplierLocation)
VALUES ('Supplier1', 'Location1'),
       ('Supplier2', 'Location2'),
       ('Supplier3', 'Location3');

INSERT INTO Products (ProductName, ProductType, SupplierID, Quantity, CostPrice, DeliveryDate)
VALUES ('Product1', 'Type1', 1, 100, 10.50, '2024-05-12'),
       ('Product2', 'Type2', 2, 150, 15.75, '2024-05-13'),
       ('Product3', 'Type3', 3, 200, 20.25, '2024-05-14');
