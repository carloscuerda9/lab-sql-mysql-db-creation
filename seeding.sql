USE coches_bd;

-- Inserting into cars table
INSERT INTO cars (vin, manufacturer, model, year, color)
VALUES 
    ("3K096I98581DHSNUP", "Volkswagen", "Tiguan", "2019", "Blue"),
    ("ZM8G7BEUQZ97IH46V", "Peugeot", "Rifter", "2019", "Red"),
    ("RKXVNNIHLVVZOUB4M", "Ford", "Fusion", "2018", "White"),
    ("HKNDGS7CU31E9Z7JW", "Toyota", "RAV4", "2018", "Silver"),
    ("DAM41UDN3CHU2WVF6", "Volvo", "V60", "2019", "Gray"),
    ("I93JG7HE72FAH84S", "Volvo", "V60 Cross Country", "2019", "Gray");

-- Inserting into customers table
INSERT INTO customers (CustomerID, Name, PhoneNumber, Email, Address, City, StateProvince, Country, ZipPostalCode)
VALUES
    ("10001", "Pablo Picasso", "+34 17 63 82", "ppicasso@gmail.com", "Paseo de la Chopera", "Madrid", "Madrid", "Spain", "28045"),
    ("20001", "Abraham Lincoln", "+1 907 70862", "lincoln@us.gov", "120 SW 8th St", "Miami", "Florida", "United States", "33130"),
    ("30001", "Napoléon Bonaparte", "+33 75 40 00", "hello@napoleon.me", "40 Rue du Colisée", "Paris", "Île-de-France", "France", "75008");

-- Inserting into salespersons table
INSERT INTO salespersons (StaffID, Name, Store)
VALUES
    ("00001", "Petey Cruiser", "Madrid"),
    ("00002", "Anna Sthesia", "Barcelona"),
    ("00003", "Paul Molive", "Berlin"),
    ("00004", "Gail Forcewind", "Paris"),
    ("00005", "Paige Turner", "Miami"),
    ("00006", "Bob Frapples", "Mexico City"),
    ("00007", "Walter Melon", "Amsterdam"),
    ("00008", "Shonda Leer", "São Paulo");

-- Inserting into invoices table
INSERT INTO invoices (InvoiceNumber, Date, CarVIN, CustomerID, StaffID)
VALUES
    ("852399038", "2018-08-22", "3K096I98581DHSNUP", "10001", "00001"),
    ("731166526", "2018-12-31", "RKXVNNIHLVVZOUB4M", "30001", "00002"),
    ("271135104", "2019-01-22", "ZM8G7BEUQZ97IH46V", "20001", "00003");

-- Selecting all records from invoices table
SELECT *
FROM cars;
SELECT *
FROM customers;
SELECT *
FROM invoices;
SELECT *
FROM salespersons;

SET SQL_SAFE_UPDATES = 0;
-- Update email addresses for customers
UPDATE customers
SET Email = 'ppicasso@gmail.com'
WHERE Name = 'Pablo Picasso' AND Email = 'ppicasso@gmail.com';
SET SQL_SAFE_UPDATES = 1;

SET SQL_SAFE_UPDATES = 0;
UPDATE customers
SET Email = 'lincoln@us.gov'
WHERE Name = 'Abraham Lincoln' AND Email = 'lincoln@us.gov';
SET SQL_SAFE_UPDATES = 1;

SET SQL_SAFE_UPDATES = 0;
UPDATE customers
SET Email = 'hello@napoleon.me'
WHERE Name = 'Napoléon Bonaparte' AND Email = 'hello@napoleon.me';
SET SQL_SAFE_UPDATES = 1;

SELECT *
FROM cars;
SELECT *
FROM customers;
SELECT *
FROM invoices;
SELECT *
FROM salespersons;

SET SQL_SAFE_UPDATES = 0;

USE coches_bd;
	DELETE FROM cars
	WHERE vin = 4;

SET SQL_SAFE_UPDATES = 1;

SELECT *
FROM cars;    
    