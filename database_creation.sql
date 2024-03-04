CREATE DATABASE coches_bd;
USE coches_bd;
CREATE TABLE cars(
	Vin VARCHAR(17) PRIMARY KEY,
    Manufacturer VARCHAR (50),
    Model VARCHAR (50),
    Year YEAR,
    Color VARCHAR(20)
    );
    
CREATE TABLE Customers (
    CustomerID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100),
    PhoneNumber VARCHAR(15),
    Email VARCHAR(100),
    Address VARCHAR(255),
    City VARCHAR(50),
    StateProvince VARCHAR(50),
    Country VARCHAR(50),
    ZipPostalCode VARCHAR(20)
);

CREATE TABLE Salespersons (
    StaffID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100),
    Store VARCHAR(100)
);

CREATE TABLE Invoices (
    InvoiceNumber INT AUTO_INCREMENT PRIMARY KEY,
    Date DATE,
    CarVIN VARCHAR(17),
    CustomerID INT,
    StaffID INT,
    FOREIGN KEY (CarVIN) REFERENCES Cars(vin),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID),
    FOREIGN KEY (StaffID) REFERENCES Salespersons(StaffID)
);
