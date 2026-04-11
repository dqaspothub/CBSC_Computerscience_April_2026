CREATE DATABASE SuppliersDB;

USE SuppliersDB;


CREATE TABLE Suppliers (
    SuppNo VARCHAR(5) PRIMARY KEY,
    Supp_Name VARCHAR(50),
    Status INT,
    City VARCHAR(50)
);

CREATE TABLE Items (
    ItemNo VARCHAR(5) PRIMARY KEY,
    Item_Name VARCHAR(50),
    Price DECIMAL(5,2)
);

CREATE TABLE Shipments (
    SuppNo VARCHAR(5),
    ItemNo VARCHAR(5),
    Qty_supplied INT,
    PRIMARY KEY (SuppNo, ItemNo),   -- Composite Key
    FOREIGN KEY (SuppNo) REFERENCES Suppliers(SuppNo),
    FOREIGN KEY (ItemNo) REFERENCES Items(ItemNo)
);

INSERT INTO Suppliers VALUES
('S1', 'Britannia', 10, 'Delhi'),
('S2', 'New Bakers', 30, 'Mumbai'),
('S3', 'Mother Dairy', 10, 'Delhi'),
('S4', 'Cookz', 50, 'Bangalore'),
('S5', 'Haldiram', 40, 'Jaipur');

INSERT INTO suppliers  (SuppNo,Supp_Name,Status,City)  VALUES
('S6','kannathasan',1,'Chennai');

INSERT INTO suppliers VALUES
('S7','pranav','Chennai');



INSERT INTO Items VALUES
('I1', 'Milk', 15.00),
('I2', 'Cake', 5.00),
('I3', 'Bread', 9.00),
('I4', 'Milk Bread', 14.00),
('I5', 'Plain Biscuit', 6.00),
('I6', 'Cream Biscuit', 10.00),
('I7', 'Ice Cream', 16.00),
('I8', 'Cold Drink', 8.00),
('I9', 'Namkeen', 15.00);

INSERT INTO Shipments VALUES
('S1', 'I2', 10),
('S1', 'I3', 20),
('S1', 'I6', 20),
('S2', 'I4', 20),
('S2', 'I5', 10),
('S3', 'I1', 10),
('S3', 'I7', 10),
('S4', 'I8', 30),
('S5', 'I9', 30);

select * from suppliers;
select * from Items;
select * from Shipments;

select Supp_Name As SupplierName ,City from suppliers;

select * from Items where price < 12;

select Supp_Name As SupplierName ,City from suppliers where city = 'Delhi';

Update suppliers Set Status = 14 where City='Delhi';

DELETE from suppliers where City = 'Delhi';

/*CREATE VIEW view_name AS
SELECT column1, column2
FROM table_name
WHERE condition;*/

Create view Lesser_Product AS
select * from Items where price < 12;

select * from Lesser_Product;


CREATE TABLE Employees (
    emp_id INT,
    name VARCHAR(50),
    department VARCHAR(50),
    salary INT
);

INSERT INTO Employees VALUES
(1, 'Arun', 'IT', 50000),
(2, 'Bala', 'HR', 40000),
(3, 'Cathy', 'IT', 60000),
(4, 'David', 'Finance', 45000);


CREATE VIEW IT_Employees AS
SELECT emp_id, name, salary
FROM Employees
WHERE department = 'IT';

SELECT * FROM IT_Employees;

SELECT emp_id, name, salary
FROM Employees
WHERE department = 'IT';

UPDATE IT_Employees
SET salary = 55000
WHERE emp_id = 1;

DROP VIEW Lesser_Product;

drop table Employees;

truncate table Employees;

select * from Employees;

CREATE VIEW simple_view AS
SELECT name, salary FROM Employees;

CREATE VIEW dept_salary AS
SELECT department, AVG(salary) AS avg_salary
FROM Employees
GROUP BY department;

CREATE TABLE Departments (
    dept_name VARCHAR(50),
    manager VARCHAR(50)
);

INSERT INTO Departments VALUES
('IT', 'Ravi'),
('HR', 'Meena'),
('Finance', 'Kumar');

CREATE VIEW Employee_Manager AS
SELECT e.name, e.department, d.manager
FROM Employees e
JOIN Departments d
ON e.department = d.dept_name;
