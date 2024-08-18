CREATE DATABASE restaurantdb;

SHOW databases;

USE restaurantdb;

CREATE TABLE restaurant_types (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(250)
);

CREATE TABLE restaurants (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR (250),
    address TEXT,
    restaurant_type_id INT,
    FOREIGN KEY (restaurant_type_id) REFERENCES restaurant_types(id)
);

CREATE TABLE menu_types (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(250)
);

CREATE TABLE menus (
    id INT PRIMARY KEY AUTO_INCREMENT,
    restaurant_id INT,
    menu_type_id INT,
    name VARCHAR(250),
    description TEXT,
    price INT,
    FOREIGN KEY (restaurant_id) REFERENCES restaurants(id),
    FOREIGN KEY (menu_type_id) REFERENCES menu_types(id)
);

CREATE TABLE users (
    id INT PRIMARY KEY AUTO_INCREMENT,
    user_name VARCHAR (250),
    email VARCHAR (250),
    password VARCHAR (250)
);

CREATE TABLE user_reviews (
    id INT PRIMARY KEY AUTO_INCREMENT,
    restaurant_id INT,
    user_id INT,
    rating FLOAT,
    description TEXT,
    FOREIGN KEY (restaurant_id) REFERENCES restaurants(id),
    FOREIGN KEY (user_id) REFERENCES users(id)
);

INSERT INTO restaurant_types (name) 
VALUES ('Italian'), ('Fast Food'), ('Cafe'), ('padang');

INSERT INTO restaurants (name, address, restaurant_type_id) 
VALUES 
('Ayam Bakar', '123 serpong St', 1), 
('Burger King', '456 Burger Ave', 2),
('Nasi Goreng', '789 Coffee Ln', 3),
('Ikan special', '101 Noodle Blvd', 4);


INSERT INTO menu_types (name) 
VALUES ('Breakfast'), ('Lunch'), ('Dinner'), ('Desserts');

INSERT INTO menus (restaurant_id, menu_type_id, name, description, price) 
VALUES 
(1, 3, 'Spaghetti Carbonara', 'Classic Italian pasta with creamy sauce', 12),
(2, 2, 'Cheeseburger', 'Grilled beef patty with cheese, lettuce, and tomato', 8),
(3, 1, 'Cappuccino', 'Freshly brewed espresso with steamed milk', 5),
(4, 3, 'Kung Pao Chicken', 'Spicy stir-fried chicken with peanuts and vegetables', 14);

INSERT INTO users (user_name, email, password) 
VALUES 
('fahim', 'fahim@example.com', 'password123'),
('mahsa', 'mahsa@example.com', 'securePass!'),
('zahir', 'zahir@example.com', 'pass1234');


INSERT INTO user_reviews (restaurant_id, user_id, rating, description) 
VALUES 
(1, 1, 4.5, 'Amazing pasta, will definitely come back!'),
(2, 2, 3.0, 'Burger was okay, nothing special.'),
(3, 3, 5.0, 'Best coffee in town, highly recommend!');


UPDATE restaurants 
SET name = 'Pasta Palace' 
WHERE id = 1;

UPDATE menus 
SET price = 10 
WHERE id = 2;

DELETE FROM users 
WHERE id = 1;

DELETE FROM menus 
WHERE id = 3;

SELECT * FROM restaurants;

SELECT m.name AS menu_name, m.description, m.price, mt.name AS menu_type 
FROM menus m
JOIN menu_types mt ON m.menu_type_id = mt.id
WHERE m.restaurant_id = 1;

SELECT u.user_name, ur.rating, ur.description 
FROM user_reviews ur
JOIN users u ON ur.user_id = u.id
WHERE ur.restaurant_id = 1;
