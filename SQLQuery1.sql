CREATE DATABASE [db_3.05]
GO
USE [db_3.05]
GO

CREATE TABLE Suppliers (
    SupplierID INT PRIMARY KEY IDENTITY(1,1),
    SupplierName VARCHAR(255),
    SupplierLocation VARCHAR(255)
);

CREATE TABLE Products (
    ProductID INT PRIMARY KEY IDENTITY(1,1),
    ProductName VARCHAR(255),
    ProductType VARCHAR(100),
    SupplierID INT,
    Quantity INT,
    CostPrice DECIMAL(10, 2),
    DeliveryDate DATE,
    FOREIGN KEY (SupplierID) REFERENCES Suppliers(SupplierID)
);
