CREATE DATABASE join_union_agregationdb;

SHOW DATABASES;

USE join_union_agregationdb;

SHOW TABLES;

CREATE TABLE operators (
    id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    name VARCHAR (200),
    created_at TIMESTAMP,
    updated_at TIMESTAMP
);

CREATE TABLE product_types (
    id INT PRIMARY KEY,
    name VARCHAR (200),
    created_at TIMESTAMP,
    updated_at TIMESTAMP
);

CREATE TABLE product_descriptions (
    id INT PRIMARY KEY,
    description TEXT,
    created_at TIMESTAMP,
    updated_at TIMESTAMP
);

CREATE TABLE products (
    id INT PRIMARY KEY,
    product_type_id INT,
    operator_id INT,
    code VARCHAR (50),
    name VARCHAR (200),
    status SMALLINT,
    created_at TIMESTAMP,
    updated_at TIMESTAMP
);

CREATE TABLE payment_methods (
    id INT PRIMARY KEY,
    name VARCHAR (200),
    status SMALLINT,
    created_at TIMESTAMP,
    updated_at TIMESTAMP
);

CREATE TABLE transactions (
    id INT PRIMARY KEY,
    user_id INT,
    payment_method_id INT,
    status VARCHAR (15),
    total_qty INT,
    total_price NUMERIC(25,2),
    created_at TIMESTAMP,
    updated_at TIMESTAMP
);

CREATE TABLE transaction_details (
    transaction_id INT,
    product_id INT,
    status VARCHAR (15),
    qty INT,
    price NUMERIC(25,2),
    created_at TIMESTAMP,
    updated_at TIMESTAMP
);

CREATE TABLE users (
    id INT PRIMARY KEY,
    status SMALLINT,
    dob DATE,
    gender CHAR(1),
    created_at TIMESTAMP,
    updated_at TIMESTAMP
);

INSERT INTO operators (name, created_at, updated_at) VALUES
('Operator A1', NOW(), NOW()),
('Operator A2', NOW(), NOW()),
('Operator A3', NOW(), NOW()),
('Operator A4', NOW(), NOW()),
('Operator A5', NOW(), NOW());

INSERT INTO product_types (id, name, created_at, updated_at) VALUES
(1, 'Electronics', NOW(), NOW()),
(2, 'Clothing', NOW(), NOW()),
(3, 'Food & Beverage', NOW(), NOW());

INSERT INTO products (product_type_id, operator_id, code, name, status, created_at, updated_at) VALUES
(1, 3, 'E001', 'Laptop', 1, NOW(), NOW()),
(1, 3, 'E002', 'Smartphone', 1, NOW(), NOW());

INSERT INTO products (product_type_id, operator_id, code, name, status, created_at, updated_at) VALUES
(2, 1, 'C001', 'T-Shirt', 1, NOW(), NOW()),
(2, 1, 'C002', 'Jeans', 1, NOW(), NOW()),
(2, 1, 'C003', 'Jacket', 1, NOW(), NOW());

ALTER TABLE products MODIFY COLUMN id INT AUTO_INCREMENT;

INSERT INTO products (product_type_id, operator_id, code, name, status, created_at, updated_at) VALUES
(3, 4, 'F001', 'Soda', 1, NOW(), NOW()),
(3, 4, 'F002', 'Bread', 1, NOW(), NOW()),
(3, 4, 'F003', 'Chips', 1, NOW(), NOW());

INSERT INTO product_descriptions (id, description, created_at, updated_at) VALUES
(1, 'An HP and Macbook Laptop.', NOW(), NOW()),
(2, 'A Galaxy and an Iphone.', NOW(), NOW()),
(3, 'A comfortable T-Shirt made of organic cotton.', NOW(), NOW()),
(4, 'A pair of jeans that combines style and comfort.', NOW(), NOW()),
(5, 'A sweater.', NOW(), NOW()),
(6, 'A soft drink.', NOW(), NOW()),
(7, 'Freshly baked bread.', NOW(), NOW()),
(8, 'Crispy chips with a salty flavor.', NOW(), NOW());


INSERT INTO payment_methods (id, name, status, created_at, updated_at) VALUES
(1, 'Danna', 1, NOW(), NOW()),
(2, 'GoPay', 1, NOW(), NOW()),
(3, 'Cash', 1, NOW(), NOW());

INSERT INTO users (id, status, dob, gender, created_at, updated_at) VALUES
(1, 1, '1990-01-01', 'M', NOW(), NOW()),
(2, 1, '1985-05-10', 'F', NOW(), NOW()),
(3, 1, '1992-08-25', 'M', NOW(), NOW()),
(4, 1, '2000-12-15', 'F', NOW(), NOW()),
(5, 1, '1995-07-07', 'M', NOW(), NOW());

INSERT INTO transactions (user_id, payment_method_id, status, total_qty, total_price, created_at, updated_at) VALUES
(1, 1, 'Completed', 5, 250.00, NOW(), NOW()),
(1, 2, 'Completed', 3, 150.00, NOW(), NOW()),
(1, 3, 'Pending', 4, 200.00, NOW(), NOW()),

(2, 1, 'Completed', 6, 300.00, NOW(), NOW()),
(2, 2, 'Pending', 2, 100.00, NOW(), NOW()),
(2, 3, 'Completed', 3, 120.00, NOW(), NOW()),

(3, 1, 'Completed', 7, 350.00, NOW(), NOW()),
(3, 2, 'Completed', 4, 180.00, NOW(), NOW()),
(3, 3, 'Pending', 5, 210.00, NOW(), NOW()),

(4, 1, 'Completed', 8, 400.00, NOW(), NOW()),
(4, 2, 'Pending', 3, 150.00, NOW(), NOW()),
(4, 3, 'Completed', 4, 160.00, NOW(), NOW()),

(5, 1, 'Completed', 6, 330.00, NOW(), NOW()),
(5, 2, 'Completed', 5, 270.00, NOW(), NOW()),
(5, 3, 'Pending', 4, 220.00, NOW(), NOW());

ALTER TABLE transactions MODIFY COLUMN id INT AUTO_INCREMENT;

SELECT * FROM users WHERE gender = 'M';

SELECT * FROM products WHERE id = 3;

SELECT COUNT(*) FROM users WHERE gender = 'F';

SELECT * FROM products LIMIT 5;

UPDATE products SET name = 'product dummy' WHERE id = 1;

UPDATE transaction_details SET qty = 3 WHERE product_id = 1;

DELETE FROM products WHERE id = 5;

DELETE FROM products WHERE product_type_id = 6;

SELECT * FROM transactions WHERE user_id = 1
UNION
SELECT * FROM transactions WHERE user_id = 2;

SELECT SUM(total_price) AS total_price FROM transactions WHERE user_id = 1;

SELECT COUNT(*) AS total_transactions
FROM transactions t
JOIN transaction_details td ON t.id = td.transaction_id
JOIN products p ON td.product_id = p.id
WHERE p.product_type_id = 2;


/*join exmple*/

SELECT 
    t.id AS transaction_id,
    t.total_price,
    p.name AS product_name,
    o.name AS operator_name,
    pm.name AS payment_method_name
FROM 
    transactions t
JOIN 
    transaction_details td ON t.id = td.transaction_id
JOIN 
    products p ON td.product_id = p.id
JOIN 
    operators o ON p.operator_id = o.id
JOIN 
    payment_methods pm ON t.payment_method_id = pm.id;

/*union example*/

SELECT 
    name, 'Product Type' AS category
FROM 
    product_types
UNION
SELECT 
    name, 'Payment Method' AS category
FROM 
    payment_methods;

/*aggregation example*/

SELECT 
    p.name AS product_name,
    SUM(td.qty) AS total_quantity_sold,
    SUM(td.price * td.qty) AS total_sales
FROM 
    transaction_details td
JOIN 
    products p ON td.product_id = p.id
GROUP BY 
    p.name;

/*subquery example*/

SELECT 
    p.name
FROM 
    products p
WHERE 
    p.id IN (
        SELECT 
            td.product_id
        FROM 
            transaction_details td
        GROUP BY 
            td.product_id
        HAVING 
            COUNT(td.qty) > 1
    );