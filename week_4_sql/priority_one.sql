CREATE database bakerydb;

SHOW databases;

USE bakerydb;

CREATE TABLE users (
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255),
    email VARCHAR(255),
    phone_number VARCHAR(20),
    address VARCHAR(255)
);

CREATE TABLE admins (
    admin_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255),
    email VARCHAR(255),
    phone_number VARCHAR(20)
);

CREATE TABLE bread (
    bread_id INT AUTO_INCREMENT PRIMARY KEY,
    bread_name VARCHAR(255),
    price DECIMAL(10, 2),
    points INT
);

CREATE TABLE ingredients (
    ingredient_id INT AUTO_INCREMENT PRIMARY KEY,
    ingredient_name VARCHAR(255),
    quantity_available DECIMAL(10, 2),
    unit VARCHAR(50)
);

CREATE TABLE payment_methods (
    payment_method_id INT AUTO_INCREMENT PRIMARY KEY,
    method_name VARCHAR(255)
);

CREATE TABLE purchases (
    purchase_id INT AUTO_INCREMENT PRIMARY KEY,
    purchase_date DATETIME,
    total_amount DECIMAL(10, 2),
    user_id INT,
    payment_method_id INT,
    FOREIGN KEY (user_id) REFERENCES users(user_id),
    FOREIGN KEY (payment_method_id) REFERENCES payment_methods(payment_method_id)
);

CREATE TABLE bread_ingredients (
    bread_id INT,
    ingredient_id INT,
    quantity_used DECIMAL(10, 2),
    PRIMARY KEY (bread_id, ingredient_id),
    FOREIGN KEY (bread_id) REFERENCES bread(bread_id),
    FOREIGN KEY (ingredient_id) REFERENCES ingredients(ingredient_id)
);

CREATE TABLE purchase_bread (
    purchase_id INT,
    bread_id INT,
    PRIMARY KEY (purchase_id, bread_id),
    FOREIGN KEY (purchase_id) REFERENCES purchases(purchase_id),
    FOREIGN KEY (bread_id) REFERENCES bread(bread_id)
);

CREATE TABLE points (
    points_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    points_earned INT,
    points_redeemed INT,
    current_points INT,
    FOREIGN KEY (user_id) REFERENCES users(user_id)
);

INSERT INTO users (name, email, phone_number, address) 
VALUES ('Hadi Hamdam', 'hadi.hamdam@mail.com', '123-456-7890', 'BSD tangsel');

INSERT INTO admins (name, email, phone_number) 
VALUES ('Rahmat John', 'rahmat@example.com', '098-765-4321');

INSERT INTO bread (bread_name, price, points) 
VALUES ('Roti Sari', 15000, 6);

INSERT INTO ingredients (ingredient_name, quantity_available, unit) 
VALUES ('Flour', 10, 'kg');

INSERT INTO payment_methods (method_name) 
VALUES ('GoPay');

INSERT INTO purchases (purchase_date, total_amount, user_id, payment_method_id) 
VALUES ('2024-08-17 10:00:00', 150000, 1, 1);

INSERT INTO bread_ingredients (bread_id, ingredient_id, quantity_used) 
VALUES (1, 1, 25.5);


INSERT INTO points (user_id, points_earned, points_redeemed, current_points) 
VALUES (1, 6, 0, 6);

UPDATE users 
SET email = 'hadi.newemail@example.com' 
WHERE user_id = 1;

UPDATE ingredients 
SET quantity_available = 95.00 
WHERE ingredient_id = 1;

DELETE FROM users 
WHERE user_id = 7;

DELETE FROM ingredients 
WHERE ingredient_id = 5;

SELECT * FROM users;

SELECT b.bread_name, i.ingredient_name, bi.quantity_used 
FROM bread b
JOIN bread_ingredients bi ON b.bread_id = bi.bread_id
JOIN ingredients i ON bi.ingredient_id = i.ingredient_id;

SELECT p.purchase_id, p.purchase_date, p.total_amount, u.name AS user_name, pm.method_name 
FROM purchases p
JOIN users u ON p.user_id = u.user_id
JOIN payment_methods pm ON p.payment_method_id = pm.payment_method_id;

SELECT u.name, pt.points_earned, pt.points_redeemed, pt.current_points 
FROM points pt
JOIN users u ON pt.user_id = u.user_id 
WHERE u.user_id = 1;
