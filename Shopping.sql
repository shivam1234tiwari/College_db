create database Shopping;
use Shopping;
CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(50),
    email VARCHAR(100),
    city VARCHAR(50)
);

CREATE TABLE Products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(50),
    price INT
);

CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    product_id INT,
    order_date DATE,
    quantity INT,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
    FOREIGN KEY (product_id) REFERENCES Products(product_id)
);
INSERT INTO Customers VALUES
(1, 'Rahul', 'rahul@gmail.com', 'Pune'),
(2, 'Amit', 'amit@gmail.com', 'Mumbai'),
(3, 'Neha', 'neha@gmail.com', 'Delhi'),
(4, 'Priya', 'priya@gmail.com', 'Chennai');

INSERT INTO Products VALUES
(101, 'Laptop', 60000),
(102, 'Mobile', 20000),
(103, 'Tablet', 30000),
(104, 'Headphones', 5000);

INSERT INTO Orders VALUES
(1001, 1, 101, '2026-01-10', 1),
(1002, 1, 102, '2026-01-12', 2),
(1003, 2, 103, '2026-01-15', 1),
(1004, 3, 101, '2026-01-18', 1);

SELECT 
    c.customer_id,
    c.customer_name,
    o.order_id,
    p.product_name,
    p.price,
    o.quantity
FROM Customers c
INNER JOIN Orders o 
    ON c.customer_id = o.customer_id
INNER JOIN Products p 
    ON o.product_id = p.product_id;

SELECT 
    c.customer_name,
    o.order_id,
    p.product_name,
    p.price
FROM Customers c
LEFT JOIN Orders o 
    ON c.customer_id = o.customer_id
LEFT JOIN Products p 
    ON o.product_id = p.product_id;

SELECT 
    c.customer_name,
    o.order_id,
    p.product_name,
    p.price
FROM Customers c
RIGHT JOIN Orders o 
    ON c.customer_id = o.customer_id
RIGHT JOIN Products p 
    ON o.product_id = p.product_id;

SELECT 
    c.customer_name,
    o.order_id,
    p.product_name
FROM Customers c
LEFT JOIN Orders o 
    ON c.customer_id = o.customer_id
LEFT JOIN Products p 
    ON o.product_id = p.product_id

UNION

SELECT 
    c.customer_name,
    o.order_id,
    p.product_name
FROM Customers c
RIGHT JOIN Orders o 
    ON c.customer_id = o.customer_id
RIGHT JOIN Products p 
    ON o.product_id = p.product_id;


