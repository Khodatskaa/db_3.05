CREATE DATABASE [db_3.05];
GO
USE [db_3.05];
GO

CREATE TABLE Suppliers (
    SupplierID INT PRIMARY KEY IDENTITY(1,1),
    SupplierName VARCHAR(255) NOT NULL,
    SupplierLocation VARCHAR(255) NOT NULL
);

CREATE TABLE Products (
    ProductID INT PRIMARY KEY IDENTITY(1,1),
    ProductName VARCHAR(255) NOT NULL,
    ProductType VARCHAR(100) NOT NULL,
    SupplierID INT NOT NULL,
    Quantity INT NOT NULL CHECK (Quantity >= 0), 
    CostPrice DECIMAL(10, 2) NOT NULL CHECK (CostPrice >= 0.00),  -- Ensures CostPrice is never negative
    DeliveryDate DATE NOT NULL,
    FOREIGN KEY (SupplierID) REFERENCES Suppliers(SupplierID)
);
