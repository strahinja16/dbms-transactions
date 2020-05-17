USE master
IF EXISTS(SELECT * FROM sys.databases WHERE NAME='transactionsdemo')
BEGIN
    ALTER DATABASE transactionsdemo SET SINGLE_USER WITH ROLLBACK IMMEDIATE
    DROP DATABASE transactionsdemo
END

CREATE DATABASE transactionsdemo

GO

USE transactionsdemo

CREATE TABLE Automobiles (
    ID int NOT NULL IDENTITY PRIMARY KEY,
    Model varchar(255),
    Price int,
);

GO

INSERT INTO Automobiles (Model, Price)
VALUES 
    ('Audi', 5000), ('Audi', 6000),  ('Audi', 7000),  ('Audi', 8000),  ('Audi', 11000),
    ('BMW', 5000), ('BMW', 5500), ('BMW', 6000), ('BMW', 7000), ('BMW', 12000)

GO
 