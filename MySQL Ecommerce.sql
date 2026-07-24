create schema ecommerce

use ecommerce;
CREATE DATABASE customer; 


drop table if exists order_item;
drop table if exists orders;
drop table if exists product;
drop table if exists customer;

SET FOREIGN_KEY_CHECKS = 0;
SET FOREIGN_KEY_CHECKS = 1;


CREATE TABLE customer (
  `customer_id` INT PRIMARY KEY,
  `first_name` VARCHAR(255),
  `last_name` VARCHAR(255),
  `email` VARCHAR(255),
  `city` VARCHAR(255),
  `country` VARCHAR(255),
  `signup_date` DATE
);


CREATE TABLE IF NOT EXISTS customer (
    customer_id INT PRIMARY KEY,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    email VARCHAR(255),
    city VARCHAR(255),
    country VARCHAR(255),
    signup_date DATE
);


CREATE TABLE product (
  `product_id` INT PRIMARY KEY,
  `product_name` VARCHAR(255),
  `category` VARCHAR(255),
  `unit_price` DECIMAL(10,2)
);

CREATE TABLE orders (
  `order_id` INT PRIMARY KEY,
  `customer_id` INT,
  `order_date` DATE,
  `billing_city` VARCHAR(255),
  `billing_country` VARCHAR(255),
  `status` VARCHAR(50),
  `total` DECIMAL(10,2)
);

CREATE TABLE order_item (
  `order_item_id` INT PRIMARY KEY,
  `order_id` INT,
  `product_id` INT,
  `unit_price` DECIMAL(10,2),
  `quantity` INT,
  FOREIGN KEY (order_id) REFERENCES orders(order_id),
  FOREIGN KEY (product_id) REFERENCES product(product_id)
);

select order_id, customer_id, total 
from orders;

select count(*) as total_rows
from orders;

select * from orders;
SELECT * FROM orders LIMIT 10;



INSERT INTO customer VALUES (1, 'Daniel', 'Martinez', 'daniel.martinez1@example.com', 'Paris', 'France', '2025-04-30');
INSERT INTO customer VALUES (2, 'Noah', 'Brown', 'noah.brown2@example.com', 'Chicago', 'USA', '2024-07-16');
INSERT INTO customer VALUES (3, 'Marco', 'Wright', 'marco.wright3@example.com', 'Austin', 'USA', '2024-09-07');
INSERT INTO customer VALUES (4, 'Lisa', 'Nguyen', 'lisa.nguyen4@example.com', 'Los Angeles', 'USA', '2025-03-18');
INSERT INTO customer VALUES (5, 'Leo', 'Allen', 'leo.allen5@example.com', 'Vancouver', 'Canada', '2024-06-04');
INSERT INTO customer VALUES (6, 'Robert', 'Garcia', 'robert.garcia6@example.com', 'Lyon', 'France', '2024-11-29');
INSERT INTO customer VALUES (7, 'Mark', 'Jones', 'mark.jones7@example.com', 'Montreal', 'Canada', '2025-01-20');
INSERT INTO customer VALUES (8, 'Jennifer', 'Scott', 'jennifer.scott8@example.com', 'Lyon', 'France', '2023-07-22');
INSERT INTO customer VALUES (9, 'Patricia', 'Evans', 'patricia.evans9@example.com', 'Sydney', 'Australia', '2023-02-19');
INSERT INTO customer VALUES (10, 'Linda', 'Anderson', 'linda.anderson10@example.com', 'Mumbai', 'India', '2023-09-28');
INSERT INTO customer VALUES (11, 'Sofia', 'Nguyen', 'sofia.nguyen11@example.com', 'Los Angeles', 'USA', '2023-09-14');
INSERT INTO customer VALUES (12, 'Amara', 'Nguyen', 'amara.nguyen12@example.com', 'Paris', 'France', '2025-02-25');
INSERT INTO customer VALUES (13, 'Patricia', 'Anderson', 'patricia.anderson13@example.com', 'Los Angeles', 'USA', '2025-04-01');
INSERT INTO customer VALUES (14, 'Hiroshi', 'Collins', 'hiroshi.collins14@example.com', 'Seattle', 'USA', '2023-01-05');
INSERT INTO customer VALUES (15, 'Charles', 'Clark', 'charles.clark15@example.com', 'Seattle', 'USA', '2024-03-25');
INSERT INTO customer VALUES (16, 'Olga', 'Davis', 'olga.davis16@example.com', 'Sydney', 'Australia', '2025-01-09');
INSERT INTO customer VALUES (17, 'Karen', 'Scott', 'karen.scott17@example.com', 'Rio de Janeiro', 'Brazil', '2023-04-29');
INSERT INTO customer VALUES (18, 'Liam', 'Lopez', 'liam.lopez18@example.com', 'Austin', 'USA', '2024-12-18');
INSERT INTO customer VALUES (19, 'Diego', 'Torres', 'diego.torres19@example.com', 'Mumbai', 'India', '2023-04-18');
INSERT INTO customer VALUES (20, 'Richard', 'White', 'richard.white20@example.com', 'Austin', 'USA', '2024-02-26');
INSERT INTO customer VALUES (21, 'Hiroshi', 'Mitchell', 'hiroshi.mitchell21@example.com', 'Chicago', 'USA', '2025-01-04');
INSERT INTO customer VALUES (22, 'Amara', 'Brown', 'amara.brown22@example.com', 'Melbourne', 'Australia', '2023-09-30');
INSERT INTO customer VALUES (23, 'Susan', 'Young', 'susan.young23@example.com', 'Bangalore', 'India', '2023-11-04');
INSERT INTO customer VALUES (24, 'Olga', 'Ramirez', 'olga.ramirez24@example.com', 'Singapore', 'Singapore', '2023-09-08');
INSERT INTO customer VALUES (25, 'Daniel', 'Robinson', 'daniel.robinson25@example.com', 'Sydney', 'Australia', '2024-10-09');
INSERT INTO customer VALUES (26, 'Grace', 'Robinson', 'grace.robinson26@example.com', 'Munich', 'Germany', '2023-08-18');
INSERT INTO customer VALUES (27, 'Karen', 'Thomas', 'karen.thomas27@example.com', 'Sao Paulo', 'Brazil', '2025-06-10');
INSERT INTO customer VALUES (28, 'Barbara', 'Carter', 'barbara.carter28@example.com', 'Singapore', 'Singapore', '2024-02-05');
INSERT INTO customer VALUES (29, 'Jessica', 'Garcia', 'jessica.garcia29@example.com', 'Sydney', 'Australia', '2024-03-06');
INSERT INTO customer VALUES (30, 'Karen', 'King', 'karen.king30@example.com', 'Barcelona', 'Spain', '2024-03-30');
INSERT INTO customer VALUES (31, 'Sam', 'Perez', 'sam.perez31@example.com', 'Osaka', 'Japan', '2024-06-08');
INSERT INTO customer VALUES (32, 'Donald', 'Jackson', 'donald.jackson32@example.com', 'Melbourne', 'Australia', '2024-05-13');
INSERT INTO customer VALUES (33, 'John', 'Davis', 'john.davis33@example.com', 'Rome', 'Italy', '2024-04-03');
INSERT INTO customer VALUES (34, 'Mark', 'Hernandez', 'mark.hernandez34@example.com', 'Singapore', 'Singapore', '2025-06-14');
INSERT INTO customer VALUES (35, 'Nancy', 'Martinez', 'nancy.martinez35@example.com', 'Barcelona', 'Spain', '2024-12-27');
INSERT INTO customer VALUES (36, 'Mark', 'Williams', 'mark.williams36@example.com', 'Bangalore', 'India', '2024-12-14');
INSERT INTO customer VALUES (37, 'John', 'Turner', 'john.turner37@example.com', 'Milan', 'Italy', '2024-09-22');
INSERT INTO customer VALUES (38, 'Amara', 'Campbell', 'amara.campbell38@example.com', 'Rio de Janeiro', 'Brazil', '2024-07-13');
INSERT INTO customer VALUES (39, 'Daniel', 'Perez', 'daniel.perez39@example.com', 'Tokyo', 'Japan', '2023-11-03');
INSERT INTO customer VALUES (40, 'Matthew', 'Hill', 'matthew.hill40@example.com', 'Barcelona', 'Spain', '2025-06-09');
INSERT INTO customer VALUES (41, 'Diego', 'Parker', 'diego.parker41@example.com', 'Madrid', 'Spain', '2024-02-24');
INSERT INTO customer VALUES (42, 'John', 'Edwards', 'john.edwards42@example.com', 'Chicago', 'USA', '2023-07-13');
INSERT INTO customer VALUES (43, 'Sarah', 'Walker', 'sarah.walker43@example.com', 'Tokyo', 'Japan', '2025-01-30');
INSERT INTO customer VALUES (44, 'Emma', 'Jones', 'emma.jones44@example.com', 'Los Angeles', 'USA', '2023-05-25');
INSERT INTO customer VALUES (45, 'Lucas', 'Carter', 'lucas.carter45@example.com', 'Manchester', 'United Kingdom', '2025-02-10');
INSERT INTO customer VALUES (46, 'Noah', 'Torres', 'noah.torres46@example.com', 'Bangalore', 'India', '2024-07-05');
INSERT INTO customer VALUES (47, 'Marco', 'Lewis', 'marco.lewis47@example.com', 'Manchester', 'United Kingdom', '2023-04-14');
INSERT INTO customer VALUES (48, 'Mia', 'Harris', 'mia.harris48@example.com', 'Bangalore', 'India', '2023-02-09');
INSERT INTO customer VALUES (49, 'Matthew', 'Johnson', 'matthew.johnson49@example.com', 'Madrid', 'Spain', '2024-02-05');
INSERT INTO customer VALUES (50, 'Matthew', 'Hernandez', 'matthew.hernandez50@example.com', 'Melbourne', 'Australia', '2023-02-02');
INSERT INTO customer VALUES (51, 'Linda', 'Young', 'linda.young51@example.com', 'Los Angeles', 'USA', '2023-05-08');
INSERT INTO customer VALUES (52, 'Susan', 'Phillips', 'susan.phillips52@example.com', 'Manchester', 'United Kingdom', '2024-04-08');
INSERT INTO customer VALUES (53, 'David', 'Roberts', 'david.roberts53@example.com', 'Montreal', 'Canada', '2025-05-23');
INSERT INTO customer VALUES (54, 'Betty', 'Sanchez', 'betty.sanchez54@example.com', 'Mexico City', 'Mexico', '2024-02-24');
INSERT INTO customer VALUES (55, 'Wei', 'Garcia', 'wei.garcia55@example.com', 'Toronto', 'Canada', '2024-12-28');
INSERT INTO customer VALUES (56, 'Donald', 'Sanchez', 'donald.sanchez56@example.com', 'Milan', 'Italy', '2025-04-05');
INSERT INTO customer VALUES (57, 'Sarah', 'Sanchez', 'sarah.sanchez57@example.com', 'Seattle', 'USA', '2025-01-11');
INSERT INTO customer VALUES (58, 'Marco', 'Ramirez', 'marco.ramirez58@example.com', 'Mexico City', 'Mexico', '2024-07-20');
INSERT INTO customer VALUES (59, 'Hiroshi', 'Moore', 'hiroshi.moore59@example.com', 'Tokyo', 'Japan', '2024-02-02');
INSERT INTO customer VALUES (60, 'Mark', 'Thompson', 'mark.thompson60@example.com', 'Bangalore', 'India', '2024-04-07');

select * from customer;


INSERT INTO product VALUES (1, 'Eco Speaker', 'Electronics', 211.33);
INSERT INTO product VALUES (2, 'Essential Earbuds', 'Electronics', 117.82);
INSERT INTO product VALUES (3, 'Essential Speaker', 'Electronics', 29.42);
INSERT INTO product VALUES (4, 'Pro Router', 'Electronics', 97.15);
INSERT INTO product VALUES (5, 'Pro Earbuds', 'Electronics', 284.51);
INSERT INTO product VALUES (6, 'Everyday Webcam', 'Electronics', 100.23);
INSERT INTO product VALUES (7, 'Essential Charger', 'Electronics', 163.58);
INSERT INTO product VALUES (8, 'Ultra Earbuds', 'Electronics', 26.4);
INSERT INTO product VALUES (9, 'Essential Smartwatch', 'Electronics', 336.27);
INSERT INTO product VALUES (10, 'Compact Webcam', 'Electronics', 82.92);
INSERT INTO product VALUES (11, 'Compact Hoodie', 'Apparel', 43.1);
INSERT INTO product VALUES (12, 'Classic Jeans', 'Apparel', 107.43);
INSERT INTO product VALUES (13, 'Eco Jeans', 'Apparel', 68.53);
INSERT INTO product VALUES (14, 'Eco Jeans', 'Apparel', 103.95);
INSERT INTO product VALUES (15, 'Premium Jeans', 'Apparel', 82.17);
INSERT INTO product VALUES (16, 'Eco Tee', 'Apparel', 92.89);
INSERT INTO product VALUES (17, 'Pro Tee', 'Apparel', 24.61);
INSERT INTO product VALUES (18, 'Pro Jeans', 'Apparel', 71.82);
INSERT INTO product VALUES (19, 'Essential Tee', 'Apparel', 68.32);
INSERT INTO product VALUES (20, 'Compact Sweater', 'Apparel', 106.49);
INSERT INTO product VALUES (21, 'Classic Sneaker', 'Footwear', 70.16);
INSERT INTO product VALUES (22, 'Classic Boot', 'Footwear', 99.77);
INSERT INTO product VALUES (23, 'Premium Sandal', 'Footwear', 32.41);
INSERT INTO product VALUES (24, 'Classic Sneaker', 'Footwear', 73.45);
INSERT INTO product VALUES (25, 'Pro Runner', 'Footwear', 65.38);
INSERT INTO product VALUES (26, 'Essential Sandal', 'Footwear', 43.77);
INSERT INTO product VALUES (27, 'Compact Sandal', 'Footwear', 127.04);
INSERT INTO product VALUES (28, 'Everyday Sneaker', 'Footwear', 72.43);
INSERT INTO product VALUES (29, 'Premium Pillow', 'Home & Kitchen', 195.96);
INSERT INTO product VALUES (30, 'Everyday Pillow', 'Home & Kitchen', 122.1);
INSERT INTO product VALUES (31, 'Everyday Organizer', 'Home & Kitchen', 124.96);
INSERT INTO product VALUES (32, 'Premium Lamp', 'Home & Kitchen', 131.22);
INSERT INTO product VALUES (33, 'Premium Organizer', 'Home & Kitchen', 138.53);
INSERT INTO product VALUES (34, 'Ultra Pillow', 'Home & Kitchen', 38.65);
INSERT INTO product VALUES (35, 'Essential Knife Set', 'Home & Kitchen', 93.66);
INSERT INTO product VALUES (36, 'Classic Lamp', 'Home & Kitchen', 55.52);
INSERT INTO product VALUES (37, 'Compact Lamp', 'Home & Kitchen', 86.47);
INSERT INTO product VALUES (38, 'Classic Knife Set', 'Home & Kitchen', 28.37);
INSERT INTO product VALUES (39, 'Ultra Serum', 'Beauty', 68.01);
INSERT INTO product VALUES (40, 'Ultra Shampoo', 'Beauty', 21.33);
INSERT INTO product VALUES (41, 'Essential Shampoo', 'Beauty', 49.65);
INSERT INTO product VALUES (42, 'Pro Shampoo', 'Beauty', 26.63);
INSERT INTO product VALUES (43, 'Pro Moisturizer', 'Beauty', 62.19);
INSERT INTO product VALUES (44, 'Pro Sunscreen', 'Beauty', 49.06);
INSERT INTO product VALUES (45, 'Pro Moisturizer', 'Beauty', 16.16);
INSERT INTO product VALUES (46, 'Everyday Shampoo', 'Beauty', 60.39);
INSERT INTO product VALUES (47, 'Classic Yoga Mat', 'Sports & Outdoors', 208.55);
INSERT INTO product VALUES (48, 'Ultra Dumbbell Set', 'Sports & Outdoors', 200.01);
INSERT INTO product VALUES (49, 'Ultra Water Bottle', 'Sports & Outdoors', 130.5);
INSERT INTO product VALUES (50, 'Compact Dumbbell Set', 'Sports & Outdoors', 42.26);
INSERT INTO product VALUES (51, 'Compact Backpack', 'Sports & Outdoors', 52.03);
INSERT INTO product VALUES (52, 'Premium Water Bottle', 'Sports & Outdoors', 205.0);
INSERT INTO product VALUES (53, 'Premium Water Bottle', 'Sports & Outdoors', 126.88);
INSERT INTO product VALUES (54, 'Everyday Water Bottle', 'Sports & Outdoors', 49.55);
INSERT INTO product VALUES (55, 'Compact Cookbook', 'Books', 31.87);
INSERT INTO product VALUES (56, 'Everyday Novel', 'Books', 25.32);
INSERT INTO product VALUES (57, 'Everyday Planner', 'Books', 23.38);
INSERT INTO product VALUES (58, 'Premium Novel', 'Books', 18.16);
INSERT INTO product VALUES (59, 'Eco Cookbook', 'Books', 19.1);
INSERT INTO product VALUES (60, 'Everyday Cookbook', 'Books', 14.47);



INSERT INTO orders VALUES (1, 28, '2024-06-04', 'Singapore', 'Singapore', 'Returned', 200.0);
INSERT INTO orders VALUES (2, 52, '2023-01-28', 'Manchester', 'United Kingdom', 'Returned', 43.77);
INSERT INTO orders VALUES (3, 30, '2023-02-10', 'Barcelona', 'Spain', 'Delivered', 200.01);
INSERT INTO orders VALUES (4, 6, '2023-01-19', 'Lyon', 'France', 'Returned', 86.2);
INSERT INTO orders VALUES (5, 11, '2023-03-21', 'Los Angeles', 'USA', 'Delivered', 117.82);
INSERT INTO orders VALUES (6, 10, '2024-04-25', 'Mumbai', 'India', 'Cancelled', 140.26);
INSERT INTO orders VALUES (7, 52, '2023-07-24', 'Manchester', 'United Kingdom', 'Returned', 82.92);
INSERT INTO orders VALUES (8, 40, '2024-05-14', 'Barcelona', 'Spain', 'Cancelled', 312.11);
INSERT INTO orders VALUES (9, 60, '2023-10-29', 'Bangalore', 'India', 'Delivered', 82.92);
INSERT INTO orders VALUES (10, 36, '2024-11-12', 'Bangalore', 'India', 'Cancelled', 454.09);
INSERT INTO orders VALUES (11, 1, '2024-09-10', 'Paris', 'France', 'Returned', 26.63);
INSERT INTO orders VALUES (12, 7, '2024-08-18', 'Montreal', 'Canada', 'Cancelled', 214.48);
INSERT INTO orders VALUES (13, 9, '2023-06-18', 'Sydney', 'Australia', 'Delivered', 25.32);
INSERT INTO orders VALUES (14, 13, '2023-06-15', 'Los Angeles', 'USA', 'Delivered', 117.82);
INSERT INTO orders VALUES (15, 17, '2023-08-15', 'Rio de Janeiro', 'Brazil', 'Delivered', 68.32);
INSERT INTO orders VALUES (16, 33, '2024-11-23', 'Rome', 'Italy', 'Delivered', 261.0);
INSERT INTO orders VALUES (17, 38, '2023-06-09', 'Rio de Janeiro', 'Brazil', 'Delivered', 372.35);
INSERT INTO orders VALUES (18, 54, '2023-11-21', 'Mexico City', 'Mexico', 'Delivered', 116.25);
INSERT INTO orders VALUES (19, 48, '2024-11-21', 'Bangalore', 'India', 'Delivered', 36.32);
INSERT INTO orders VALUES (20, 30, '2024-10-03', 'Barcelona', 'Spain', 'Returned', 28.37);
INSERT INTO orders VALUES (21, 53, '2023-04-29', 'Montreal', 'Canada', 'Cancelled', 399.9);
INSERT INTO orders VALUES (22, 57, '2024-01-15', 'Seattle', 'USA', 'Cancelled', 523.59);
INSERT INTO orders VALUES (23, 10, '2023-08-06', 'Mumbai', 'India', 'Cancelled', 138.53);
INSERT INTO orders VALUES (24, 2, '2023-08-31', 'Chicago', 'USA', 'Delivered', 42.26);
INSERT INTO orders VALUES (25, 12, '2023-08-07', 'Paris', 'France', 'Cancelled', 253.59);
INSERT INTO orders VALUES (26, 52, '2024-10-30', 'Manchester', 'United Kingdom', 'Delivered', 107.43);
INSERT INTO orders VALUES (27, 10, '2023-11-29', 'Mumbai', 'India', 'Delivered', 42.66);
INSERT INTO orders VALUES (28, 47, '2024-04-26', 'Manchester', 'United Kingdom', 'Delivered', 55.52);
INSERT INTO orders VALUES (29, 4, '2023-10-28', 'Los Angeles', 'USA', 'Delivered', 49.06);
INSERT INTO orders VALUES (30, 34, '2024-04-08', 'Singapore', 'Singapore', 'Cancelled', 55.52);
INSERT INTO orders VALUES (31, 31, '2024-05-25', 'Osaka', 'Japan', 'Delivered', 134.42);
INSERT INTO orders VALUES (32, 4, '2024-08-18', 'Los Angeles', 'USA', 'Delivered', 208.88);
INSERT INTO orders VALUES (33, 3, '2024-08-18', 'Austin', 'USA', 'Delivered', 138.53);
INSERT INTO orders VALUES (34, 29, '2024-10-30', 'Sydney', 'Australia', 'Cancelled', 117.82);
INSERT INTO orders VALUES (35, 49, '2024-05-30', 'Madrid', 'Spain', 'Delivered', 195.96);
INSERT INTO orders VALUES (36, 21, '2023-07-01', 'Chicago', 'USA', 'Cancelled', 138.53);
INSERT INTO orders VALUES (37, 39, '2023-03-21', 'Tokyo', 'Japan', 'Cancelled', 84.69);
INSERT INTO orders VALUES (38, 18, '2023-05-02', 'Austin', 'USA', 'Delivered', 530.85);
INSERT INTO orders VALUES (39, 31, '2023-06-07', 'Osaka', 'Japan', 'Cancelled', 92.89);
INSERT INTO orders VALUES (40, 45, '2024-03-21', 'Manchester', 'United Kingdom', 'Cancelled', 46.76);
INSERT INTO orders VALUES (41, 57, '2023-12-08', 'Seattle', 'USA', 'Delivered', 69.99);
INSERT INTO orders VALUES (42, 58, '2024-12-01', 'Mexico City', 'Mexico', 'Delivered', 49.55);
INSERT INTO orders VALUES (43, 29, '2023-08-08', 'Sydney', 'Australia', 'Delivered', 179.84);
INSERT INTO orders VALUES (44, 26, '2024-04-02', 'Munich', 'Germany', 'Delivered', 354.67);
INSERT INTO orders VALUES (45, 43, '2024-07-02', 'Tokyo', 'Japan', 'Delivered', 72.43);
INSERT INTO orders VALUES (46, 5, '2024-10-06', 'Vancouver', 'Canada', 'Delivered', 168.68);
INSERT INTO orders VALUES (47, 51, '2023-11-28', 'Los Angeles', 'USA', 'Delivered', 120.84);
INSERT INTO orders VALUES (48, 10, '2024-04-27', 'Mumbai', 'India', 'Returned', 26.63);
INSERT INTO orders VALUES (49, 43, '2023-08-18', 'Tokyo', 'Japan', 'Delivered', 107.53);
INSERT INTO orders VALUES (50, 57, '2024-09-25', 'Seattle', 'USA', 'Delivered', 204.27);
INSERT INTO orders VALUES (51, 48, '2024-04-07', 'Bangalore', 'India', 'Delivered', 43.77);
INSERT INTO orders VALUES (52, 57, '2024-11-20', 'Seattle', 'USA', 'Delivered', 43.1);
INSERT INTO orders VALUES (53, 43, '2024-03-10', 'Tokyo', 'Japan', 'Delivered', 43.1);
INSERT INTO orders VALUES (54, 46, '2023-03-15', 'Bangalore', 'India', 'Delivered', 320.83);
INSERT INTO orders VALUES (55, 22, '2023-08-12', 'Melbourne', 'Australia', 'Delivered', 68.53);
INSERT INTO orders VALUES (56, 23, '2023-09-29', 'Bangalore', 'India', 'Delivered', 100.23);
INSERT INTO orders VALUES (57, 47, '2024-09-15', 'Manchester', 'United Kingdom', 'Delivered', 117.82);
INSERT INTO orders VALUES (58, 22, '2023-11-30', 'Melbourne', 'Australia', 'Cancelled', 122.1);
INSERT INTO orders VALUES (59, 29, '2023-05-01', 'Sydney', 'Australia', 'Returned', 183.2);
INSERT INTO orders VALUES (60, 22, '2023-02-26', 'Melbourne', 'Australia', 'Cancelled', 21.33);
INSERT INTO orders VALUES (61, 19, '2024-06-22', 'Mumbai', 'India', 'Cancelled', 284.51);
INSERT INTO orders VALUES (62, 8, '2024-10-23', 'Lyon', 'France', 'Delivered', 186.96);
INSERT INTO orders VALUES (63, 6, '2023-01-15', 'Lyon', 'France', 'Delivered', 101.24);
INSERT INTO orders VALUES (64, 58, '2023-11-14', 'Mexico City', 'Mexico', 'Delivered', 71.82);
INSERT INTO orders VALUES (65, 49, '2023-02-21', 'Madrid', 'Spain', 'Delivered', 199.31);
INSERT INTO orders VALUES (66, 55, '2024-07-20', 'Toronto', 'Canada', 'Returned', 126.88);
INSERT INTO orders VALUES (67, 17, '2024-11-19', 'Rio de Janeiro', 'Brazil', 'Delivered', 82.92);
INSERT INTO orders VALUES (68, 35, '2024-07-06', 'Barcelona', 'Spain', 'Cancelled', 86.47);
INSERT INTO orders VALUES (69, 32, '2024-04-10', 'Melbourne', 'Australia', 'Returned', 70.16);
INSERT INTO orders VALUES (70, 6, '2024-10-16', 'Lyon', 'France', 'Delivered', 302.15);
INSERT INTO orders VALUES (71, 45, '2023-10-23', 'Manchester', 'United Kingdom', 'Delivered', 447.53);
INSERT INTO orders VALUES (72, 18, '2024-12-28', 'Austin', 'USA', 'Delivered', 149.88);
INSERT INTO orders VALUES (73, 52, '2024-03-07', 'Manchester', 'United Kingdom', 'Delivered', 168.24);
INSERT INTO orders VALUES (74, 55, '2024-07-07', 'Toronto', 'Canada', 'Delivered', 284.51);
INSERT INTO orders VALUES (75, 17, '2023-09-07', 'Rio de Janeiro', 'Brazil', 'Delivered', 122.1);
INSERT INTO orders VALUES (76, 1, '2024-09-08', 'Paris', 'France', 'Delivered', 55.52);
INSERT INTO orders VALUES (77, 27, '2024-07-15', 'Sao Paulo', 'Brazil', 'Delivered', 378.93);
INSERT INTO orders VALUES (78, 3, '2023-10-06', 'Austin', 'USA', 'Cancelled', 60.39);
INSERT INTO orders VALUES (79, 16, '2024-11-06', 'Sydney', 'Australia', 'Delivered', 43.1);
INSERT INTO orders VALUES (80, 17, '2024-12-25', 'Rio de Janeiro', 'Brazil', 'Delivered', 283.39);
INSERT INTO orders VALUES (81, 60, '2023-11-14', 'Bangalore', 'India', 'Delivered', 194.79);
INSERT INTO orders VALUES (82, 49, '2023-03-09', 'Madrid', 'Spain', 'Delivered', 68.32);
INSERT INTO orders VALUES (83, 29, '2024-09-16', 'Sydney', 'Australia', 'Cancelled', 228.31);
INSERT INTO orders VALUES (84, 23, '2023-05-20', 'Bangalore', 'India', 'Delivered', 24.61);
INSERT INTO orders VALUES (85, 3, '2023-03-22', 'Austin', 'USA', 'Delivered', 117.82);
INSERT INTO orders VALUES (86, 47, '2023-08-18', 'Manchester', 'United Kingdom', 'Cancelled', 55.52);
INSERT INTO orders VALUES (87, 13, '2024-11-17', 'Los Angeles', 'USA', 'Cancelled', 342.81);
INSERT INTO orders VALUES (88, 60, '2024-12-27', 'Bangalore', 'India', 'Delivered', 163.58);
INSERT INTO orders VALUES (89, 43, '2024-01-11', 'Tokyo', 'Japan', 'Returned', 72.43);
INSERT INTO orders VALUES (90, 43, '2023-04-02', 'Tokyo', 'Japan', 'Delivered', 93.66);
INSERT INTO orders VALUES (91, 54, '2024-02-20', 'Mexico City', 'Mexico', 'Delivered', 138.53);
INSERT INTO orders VALUES (92, 20, '2024-09-20', 'Austin', 'USA', 'Returned', 186.12);
INSERT INTO orders VALUES (93, 22, '2024-07-22', 'Melbourne', 'Australia', 'Delivered', 49.55);
INSERT INTO orders VALUES (94, 57, '2023-07-26', 'Seattle', 'USA', 'Returned', 208.55);
INSERT INTO orders VALUES (95, 41, '2024-11-20', 'Madrid', 'Spain', 'Delivered', 76.18);
INSERT INTO orders VALUES (96, 4, '2024-07-31', 'Los Angeles', 'USA', 'Delivered', 422.66);
INSERT INTO orders VALUES (97, 5, '2024-12-04', 'Vancouver', 'Canada', 'Returned', 400.02);
INSERT INTO orders VALUES (98, 57, '2024-11-18', 'Seattle', 'USA', 'Delivered', 72.43);
INSERT INTO orders VALUES (99, 11, '2023-11-19', 'Los Angeles', 'USA', 'Delivered', 211.97);
INSERT INTO orders VALUES (100, 25, '2023-12-30', 'Sydney', 'Australia', 'Cancelled', 62.19);
INSERT INTO orders VALUES (101, 19, '2024-10-29', 'Mumbai', 'India', 'Cancelled', 125.21);
INSERT INTO orders VALUES (102, 19, '2023-12-06', 'Mumbai', 'India', 'Delivered', 336.96);
INSERT INTO orders VALUES (103, 11, '2024-05-26', 'Los Angeles', 'USA', 'Delivered', 407.29);
INSERT INTO orders VALUES (104, 17, '2024-05-12', 'Rio de Janeiro', 'Brazil', 'Delivered', 210.81);
INSERT INTO orders VALUES (105, 21, '2024-09-03', 'Chicago', 'USA', 'Delivered', 58.84);
INSERT INTO orders VALUES (106, 57, '2024-03-11', 'Seattle', 'USA', 'Delivered', 103.95);
INSERT INTO orders VALUES (107, 23, '2023-07-23', 'Bangalore', 'India', 'Delivered', 476.25);
INSERT INTO orders VALUES (108, 6, '2023-03-08', 'Lyon', 'France', 'Delivered', 210.35);
INSERT INTO orders VALUES (109, 42, '2024-08-21', 'Chicago', 'USA', 'Delivered', 92.89);
INSERT INTO orders VALUES (110, 33, '2024-11-24', 'Rome', 'Italy', 'Delivered', 225.07);
INSERT INTO orders VALUES (111, 53, '2023-11-28', 'Montreal', 'Canada', 'Delivered', 82.92);
INSERT INTO orders VALUES (112, 26, '2024-05-03', 'Munich', 'Germany', 'Cancelled', 73.19);
INSERT INTO orders VALUES (113, 2, '2024-08-06', 'Chicago', 'USA', 'Delivered', 238.31);
INSERT INTO orders VALUES (114, 6, '2023-01-12', 'Lyon', 'France', 'Cancelled', 38.65);
INSERT INTO orders VALUES (115, 55, '2024-12-01', 'Toronto', 'Canada', 'Delivered', 62.19);
INSERT INTO orders VALUES (116, 58, '2023-03-03', 'Mexico City', 'Mexico', 'Returned', 143.42);
INSERT INTO orders VALUES (117, 25, '2023-02-20', 'Sydney', 'Australia', 'Delivered', 208.55);
INSERT INTO orders VALUES (118, 32, '2024-02-07', 'Melbourne', 'Australia', 'Delivered', 68.32);
INSERT INTO orders VALUES (119, 47, '2023-07-27', 'Manchester', 'United Kingdom', 'Cancelled', 26.63);
INSERT INTO orders VALUES (120, 10, '2024-10-03', 'Mumbai', 'India', 'Delivered', 176.43);
INSERT INTO orders VALUES (121, 46, '2023-11-07', 'Bangalore', 'India', 'Cancelled', 49.65);
INSERT INTO orders VALUES (122, 28, '2024-08-12', 'Singapore', 'Singapore', 'Returned', 221.16);
INSERT INTO orders VALUES (123, 33, '2023-11-01', 'Rome', 'Italy', 'Delivered', 19.1);
INSERT INTO orders VALUES (124, 34, '2023-10-24', 'Singapore', 'Singapore', 'Cancelled', 136.02);
INSERT INTO orders VALUES (125, 53, '2023-02-22', 'Montreal', 'Canada', 'Delivered', 126.88);
INSERT INTO orders VALUES (126, 44, '2024-07-05', 'Los Angeles', 'USA', 'Cancelled', 241.32);
INSERT INTO orders VALUES (127, 46, '2023-03-06', 'Bangalore', 'India', 'Returned', 16.16);
INSERT INTO orders VALUES (128, 42, '2024-07-27', 'Chicago', 'USA', 'Delivered', 100.23);
INSERT INTO orders VALUES (129, 2, '2024-09-19', 'Chicago', 'USA', 'Delivered', 336.27);
INSERT INTO orders VALUES (130, 41, '2024-09-20', 'Madrid', 'Spain', 'Delivered', 228.96);
INSERT INTO orders VALUES (131, 54, '2023-10-04', 'Mexico City', 'Mexico', 'Delivered', 55.52);
INSERT INTO orders VALUES (132, 4, '2023-11-04', 'Los Angeles', 'USA', 'Returned', 117.82);
INSERT INTO orders VALUES (133, 41, '2024-02-19', 'Madrid', 'Spain', 'Cancelled', 49.06);
INSERT INTO orders VALUES (134, 16, '2024-12-30', 'Sydney', 'Australia', 'Delivered', 24.61);
INSERT INTO orders VALUES (135, 1, '2024-07-18', 'Paris', 'France', 'Delivered', 489.51);
INSERT INTO orders VALUES (136, 48, '2024-11-22', 'Bangalore', 'India', 'Cancelled', 111.82);
INSERT INTO orders VALUES (137, 6, '2023-04-06', 'Lyon', 'France', 'Returned', 323.16);
INSERT INTO orders VALUES (138, 48, '2023-02-23', 'Bangalore', 'India', 'Returned', 124.96);
INSERT INTO orders VALUES (139, 17, '2023-07-22', 'Rio de Janeiro', 'Brazil', 'Delivered', 56.48);
INSERT INTO orders VALUES (140, 16, '2024-08-27', 'Sydney', 'Australia', 'Returned', 130.5);
INSERT INTO orders VALUES (141, 14, '2024-04-26', 'Seattle', 'USA', 'Delivered', 200.01);
INSERT INTO orders VALUES (142, 42, '2024-02-03', 'Chicago', 'USA', 'Delivered', 163.09);
INSERT INTO orders VALUES (143, 25, '2023-05-12', 'Sydney', 'Australia', 'Delivered', 144.06);
INSERT INTO orders VALUES (144, 44, '2024-06-18', 'Los Angeles', 'USA', 'Delivered', 71.68);
INSERT INTO orders VALUES (145, 40, '2023-10-07', 'Barcelona', 'Spain', 'Returned', 95.16);
INSERT INTO orders VALUES (146, 5, '2023-10-02', 'Vancouver', 'Canada', 'Cancelled', 82.92);
INSERT INTO orders VALUES (147, 22, '2023-05-01', 'Melbourne', 'Australia', 'Delivered', 242.8);
INSERT INTO orders VALUES (148, 20, '2023-05-29', 'Austin', 'USA', 'Cancelled', 86.47);
INSERT INTO orders VALUES (149, 9, '2024-12-09', 'Sydney', 'Australia', 'Delivered', 222.11);
INSERT INTO orders VALUES (150, 32, '2024-07-17', 'Melbourne', 'Australia', 'Delivered', 49.06);
INSERT INTO orders VALUES (151, 7, '2023-10-03', 'Montreal', 'Canada', 'Returned', 284.23);
INSERT INTO orders VALUES (152, 19, '2023-12-23', 'Mumbai', 'India', 'Returned', 106.97);
INSERT INTO orders VALUES (153, 30, '2024-10-20', 'Barcelona', 'Spain', 'Delivered', 122.1);
INSERT INTO orders VALUES (154, 50, '2023-11-16', 'Melbourne', 'Australia', 'Delivered', 18.16);
INSERT INTO orders VALUES (155, 36, '2023-12-29', 'Bangalore', 'India', 'Delivered', 106.49);
INSERT INTO orders VALUES (156, 6, '2023-04-10', 'Lyon', 'France', 'Delivered', 235.64);
INSERT INTO orders VALUES (157, 19, '2023-06-09', 'Mumbai', 'India', 'Delivered', 284.51);
INSERT INTO orders VALUES (158, 53, '2023-01-19', 'Montreal', 'Canada', 'Cancelled', 195.96);
INSERT INTO orders VALUES (159, 18, '2023-04-07', 'Austin', 'USA', 'Delivered', 103.95);
INSERT INTO orders VALUES (160, 59, '2023-12-01', 'Tokyo', 'Japan', 'Delivered', 312.88);
INSERT INTO orders VALUES (161, 6, '2023-04-18', 'Lyon', 'France', 'Delivered', 400.02);
INSERT INTO orders VALUES (162, 34, '2023-10-24', 'Singapore', 'Singapore', 'Delivered', 146.9);
INSERT INTO orders VALUES (163, 9, '2023-06-04', 'Sydney', 'Australia', 'Cancelled', 176.53);
INSERT INTO orders VALUES (164, 33, '2024-10-14', 'Rome', 'Italy', 'Delivered', 49.78);
INSERT INTO orders VALUES (165, 46, '2023-03-17', 'Bangalore', 'India', 'Delivered', 213.39);
INSERT INTO orders VALUES (166, 58, '2024-11-26', 'Mexico City', 'Mexico', 'Delivered', 87.54);
INSERT INTO orders VALUES (167, 2, '2024-05-11', 'Chicago', 'USA', 'Delivered', 391.61);
INSERT INTO orders VALUES (168, 29, '2024-10-30', 'Sydney', 'Australia', 'Delivered', 212.98);
INSERT INTO orders VALUES (169, 47, '2024-10-15', 'Manchester', 'United Kingdom', 'Delivered', 127.04);
INSERT INTO orders VALUES (170, 23, '2024-03-19', 'Bangalore', 'India', 'Delivered', 70.16);
INSERT INTO orders VALUES (171, 8, '2023-07-10', 'Lyon', 'France', 'Delivered', 422.66);
INSERT INTO orders VALUES (172, 21, '2024-05-21', 'Chicago', 'USA', 'Delivered', 93.32);
INSERT INTO orders VALUES (173, 8, '2023-11-02', 'Lyon', 'France', 'Delivered', 60.39);
INSERT INTO orders VALUES (174, 1, '2023-04-07', 'Paris', 'France', 'Returned', 136.64);
INSERT INTO orders VALUES (175, 17, '2023-01-11', 'Rio de Janeiro', 'Brazil', 'Delivered', 372.05);
INSERT INTO orders VALUES (176, 25, '2023-07-23', 'Sydney', 'Australia', 'Cancelled', 284.51);
INSERT INTO orders VALUES (177, 24, '2023-03-08', 'Singapore', 'Singapore', 'Delivered', 130.5);
INSERT INTO orders VALUES (178, 18, '2024-07-28', 'Austin', 'USA', 'Delivered', 235.4);
INSERT INTO orders VALUES (179, 4, '2023-06-17', 'Los Angeles', 'USA', 'Returned', 132.44);
INSERT INTO orders VALUES (180, 10, '2023-07-15', 'Mumbai', 'India', 'Delivered', 144.25);
INSERT INTO orders VALUES (181, 33, '2023-09-12', 'Rome', 'Italy', 'Delivered', 137.06);
INSERT INTO orders VALUES (182, 50, '2023-01-26', 'Melbourne', 'Australia', 'Delivered', 52.03);
INSERT INTO orders VALUES (183, 28, '2024-07-01', 'Singapore', 'Singapore', 'Delivered', 335.5);
INSERT INTO orders VALUES (184, 41, '2024-07-12', 'Madrid', 'Spain', 'Delivered', 38.2);
INSERT INTO orders VALUES (185, 57, '2024-11-03', 'Seattle', 'USA', 'Cancelled', 159.47);
INSERT INTO orders VALUES (186, 47, '2023-08-02', 'Manchester', 'United Kingdom', 'Delivered', 97.15);
INSERT INTO orders VALUES (187, 60, '2023-05-03', 'Bangalore', 'India', 'Returned', 127.04);
INSERT INTO orders VALUES (188, 29, '2024-05-24', 'Sydney', 'Australia', 'Cancelled', 493.4);
INSERT INTO orders VALUES (189, 56, '2023-12-23', 'Milan', 'Italy', 'Delivered', 262.44);
INSERT INTO orders VALUES (190, 4, '2023-07-23', 'Los Angeles', 'USA', 'Cancelled', 336.27);
INSERT INTO orders VALUES (191, 11, '2024-03-14', 'Los Angeles', 'USA', 'Delivered', 127.04);
INSERT INTO orders VALUES (192, 22, '2023-08-12', 'Melbourne', 'Australia', 'Delivered', 106.49);
INSERT INTO orders VALUES (193, 17, '2024-05-30', 'Rio de Janeiro', 'Brazil', 'Returned', 200.01);
INSERT INTO orders VALUES (194, 42, '2023-02-16', 'Chicago', 'USA', 'Delivered', 114.17);
INSERT INTO orders VALUES (195, 16, '2023-02-26', 'Sydney', 'Australia', 'Delivered', 124.96);
INSERT INTO orders VALUES (196, 36, '2024-02-22', 'Bangalore', 'India', 'Returned', 87.54);
INSERT INTO orders VALUES (197, 8, '2024-08-24', 'Lyon', 'France', 'Delivered', 69.73);
INSERT INTO orders VALUES (198, 5, '2023-12-13', 'Vancouver', 'Canada', 'Delivered', 295.22);
INSERT INTO orders VALUES (199, 52, '2023-12-23', 'Manchester', 'United Kingdom', 'Delivered', 55.52);
INSERT INTO orders VALUES (200, 15, '2024-01-16', 'Seattle', 'USA', 'Delivered', 19.1);
INSERT INTO orders VALUES (201, 22, '2023-07-31', 'Melbourne', 'Australia', 'Delivered', 72.43);
INSERT INTO orders VALUES (202, 9, '2024-08-16', 'Sydney', 'Australia', 'Cancelled', 261.65);
INSERT INTO orders VALUES (203, 12, '2023-01-10', 'Paris', 'France', 'Delivered', 55.52);
INSERT INTO orders VALUES (204, 6, '2023-04-22', 'Lyon', 'France', 'Delivered', 190.95);
INSERT INTO orders VALUES (205, 52, '2024-03-23', 'Manchester', 'United Kingdom', 'Cancelled', 115.29);
INSERT INTO orders VALUES (206, 2, '2024-02-21', 'Chicago', 'USA', 'Returned', 25.32);
INSERT INTO orders VALUES (207, 27, '2023-12-02', 'Sao Paulo', 'Brazil', 'Delivered', 127.04);
INSERT INTO orders VALUES (208, 48, '2024-03-01', 'Bangalore', 'India', 'Cancelled', 273.28);
INSERT INTO orders VALUES (209, 18, '2024-08-25', 'Austin', 'USA', 'Delivered', 227.65);
INSERT INTO orders VALUES (210, 32, '2024-02-02', 'Melbourne', 'Australia', 'Delivered', 86.47);
INSERT INTO orders VALUES (211, 24, '2023-10-26', 'Singapore', 'Singapore', 'Delivered', 49.06);
INSERT INTO orders VALUES (212, 33, '2024-05-16', 'Rome', 'Italy', 'Cancelled', 151.33);
INSERT INTO orders VALUES (213, 56, '2023-10-08', 'Milan', 'Italy', 'Delivered', 200.46);
INSERT INTO orders VALUES (214, 18, '2023-07-02', 'Austin', 'USA', 'Delivered', 135.78);
INSERT INTO orders VALUES (215, 29, '2023-12-26', 'Sydney', 'Australia', 'Delivered', 265.24);
INSERT INTO orders VALUES (216, 56, '2023-12-09', 'Milan', 'Italy', 'Delivered', 336.27);
INSERT INTO orders VALUES (217, 3, '2023-12-15', 'Austin', 'USA', 'Delivered', 60.39);
INSERT INTO orders VALUES (218, 49, '2023-11-16', 'Madrid', 'Spain', 'Delivered', 582.25);
INSERT INTO orders VALUES (219, 5, '2023-07-10', 'Vancouver', 'Canada', 'Delivered', 43.41);
INSERT INTO orders VALUES (220, 60, '2023-08-15', 'Bangalore', 'India', 'Cancelled', 31.87);
INSERT INTO orders VALUES (221, 30, '2024-03-16', 'Barcelona', 'Spain', 'Delivered', 92.89);
INSERT INTO orders VALUES (222, 51, '2024-04-28', 'Los Angeles', 'USA', 'Delivered', 82.17);
INSERT INTO orders VALUES (223, 10, '2024-12-09', 'Mumbai', 'India', 'Delivered', 38.65);
INSERT INTO orders VALUES (224, 44, '2023-02-08', 'Los Angeles', 'USA', 'Delivered', 126.88);
INSERT INTO orders VALUES (225, 47, '2023-10-24', 'Manchester', 'United Kingdom', 'Returned', 26.63);
INSERT INTO orders VALUES (226, 55, '2024-03-04', 'Toronto', 'Canada', 'Delivered', 100.23);
INSERT INTO orders VALUES (227, 36, '2024-07-17', 'Bangalore', 'India', 'Delivered', 211.33);
INSERT INTO orders VALUES (228, 51, '2023-07-06', 'Los Angeles', 'USA', 'Delivered', 164.34);
INSERT INTO orders VALUES (229, 37, '2024-01-27', 'Milan', 'Italy', 'Delivered', 26.63);
INSERT INTO orders VALUES (230, 46, '2024-11-01', 'Bangalore', 'India', 'Delivered', 336.27);
INSERT INTO orders VALUES (231, 41, '2024-12-10', 'Madrid', 'Spain', 'Delivered', 126.95);
INSERT INTO orders VALUES (232, 28, '2023-11-16', 'Singapore', 'Singapore', 'Returned', 156.9);
INSERT INTO orders VALUES (233, 7, '2023-09-08', 'Montreal', 'Canada', 'Delivered', 183.79);
INSERT INTO orders VALUES (234, 38, '2024-12-11', 'Rio de Janeiro', 'Brazil', 'Delivered', 65.38);
INSERT INTO orders VALUES (235, 17, '2024-08-21', 'Rio de Janeiro', 'Brazil', 'Delivered', 399.38);
INSERT INTO orders VALUES (236, 1, '2023-08-31', 'Paris', 'France', 'Cancelled', 106.49);
INSERT INTO orders VALUES (237, 30, '2024-11-05', 'Barcelona', 'Spain', 'Delivered', 70.16);
INSERT INTO orders VALUES (238, 42, '2023-12-01', 'Chicago', 'USA', 'Delivered', 288.57);
INSERT INTO orders VALUES (239, 16, '2024-11-02', 'Sydney', 'Australia', 'Cancelled', 92.89);
INSERT INTO orders VALUES (240, 2, '2024-08-16', 'Chicago', 'USA', 'Delivered', 147.41);
INSERT INTO orders VALUES (241, 20, '2023-06-07', 'Austin', 'USA', 'Delivered', 566.61);
INSERT INTO orders VALUES (242, 57, '2023-11-27', 'Seattle', 'USA', 'Returned', 26.63);
INSERT INTO orders VALUES (243, 27, '2023-06-08', 'Sao Paulo', 'Brazil', 'Delivered', 24.61);
INSERT INTO orders VALUES (244, 15, '2024-07-06', 'Seattle', 'USA', 'Returned', 72.43);
INSERT INTO orders VALUES (245, 60, '2024-06-21', 'Bangalore', 'India', 'Delivered', 82.17);
INSERT INTO orders VALUES (246, 32, '2023-04-13', 'Melbourne', 'Australia', 'Delivered', 16.16);
INSERT INTO orders VALUES (247, 22, '2023-10-01', 'Melbourne', 'Australia', 'Returned', 127.04);
INSERT INTO orders VALUES (248, 24, '2024-08-08', 'Singapore', 'Singapore', 'Returned', 43.77);
INSERT INTO orders VALUES (249, 13, '2024-01-17', 'Los Angeles', 'USA', 'Delivered', 205.0);
INSERT INTO orders VALUES (250, 19, '2024-07-09', 'Mumbai', 'India', 'Returned', 170.4);
INSERT INTO orders VALUES (251, 5, '2024-12-25', 'Vancouver', 'Canada', 'Delivered', 199.75);
INSERT INTO orders VALUES (252, 20, '2024-05-23', 'Austin', 'USA', 'Delivered', 82.17);
INSERT INTO orders VALUES (253, 30, '2024-10-30', 'Barcelona', 'Spain', 'Delivered', 24.61);
INSERT INTO orders VALUES (254, 49, '2024-02-26', 'Madrid', 'Spain', 'Delivered', 184.91);
INSERT INTO orders VALUES (255, 32, '2023-06-16', 'Melbourne', 'Australia', 'Cancelled', 214.86);
INSERT INTO orders VALUES (256, 58, '2024-05-30', 'Mexico City', 'Mexico', 'Delivered', 131.22);
INSERT INTO orders VALUES (257, 27, '2024-07-20', 'Sao Paulo', 'Brazil', 'Returned', 331.0);
INSERT INTO orders VALUES (258, 60, '2023-05-27', 'Bangalore', 'India', 'Delivered', 318.92);
INSERT INTO orders VALUES (259, 39, '2023-07-23', 'Tokyo', 'Japan', 'Delivered', 127.04);
INSERT INTO orders VALUES (260, 4, '2024-05-27', 'Los Angeles', 'USA', 'Returned', 97.15);
INSERT INTO orders VALUES (261, 12, '2024-06-09', 'Paris', 'France', 'Delivered', 195.96);
INSERT INTO orders VALUES (262, 58, '2024-02-06', 'Mexico City', 'Mexico', 'Returned', 23.38);
INSERT INTO orders VALUES (263, 21, '2024-01-06', 'Chicago', 'USA', 'Returned', 141.1);
INSERT INTO orders VALUES (264, 11, '2023-01-23', 'Los Angeles', 'USA', 'Delivered', 68.53);
INSERT INTO orders VALUES (265, 12, '2023-10-10', 'Paris', 'France', 'Returned', 53.12);
INSERT INTO orders VALUES (266, 48, '2024-12-02', 'Bangalore', 'India', 'Delivered', 29.42);
INSERT INTO orders VALUES (267, 20, '2024-09-03', 'Austin', 'USA', 'Returned', 208.55);
INSERT INTO orders VALUES (268, 25, '2023-06-10', 'Sydney', 'Australia', 'Delivered', 295.73);
INSERT INTO orders VALUES (269, 11, '2024-06-06', 'Los Angeles', 'USA', 'Delivered', 211.33);
INSERT INTO orders VALUES (270, 6, '2024-10-21', 'Lyon', 'France', 'Delivered', 100.23);
INSERT INTO orders VALUES (271, 23, '2024-01-15', 'Bangalore', 'India', 'Delivered', 23.38);
INSERT INTO orders VALUES (272, 8, '2024-05-08', 'Lyon', 'France', 'Cancelled', 130.5);
INSERT INTO orders VALUES (273, 14, '2023-06-19', 'Seattle', 'USA', 'Delivered', 233.96);
INSERT INTO orders VALUES (274, 20, '2024-03-02', 'Austin', 'USA', 'Delivered', 200.46);
INSERT INTO orders VALUES (275, 4, '2023-08-12', 'Los Angeles', 'USA', 'Returned', 124.96);
INSERT INTO orders VALUES (276, 13, '2023-02-18', 'Los Angeles', 'USA', 'Delivered', 112.76);
INSERT INTO orders VALUES (277, 29, '2024-04-17', 'Sydney', 'Australia', 'Delivered', 140.32);
INSERT INTO orders VALUES (278, 24, '2023-05-10', 'Singapore', 'Singapore', 'Returned', 385.9);
INSERT INTO orders VALUES (279, 41, '2024-10-24', 'Madrid', 'Spain', 'Delivered', 92.89);
INSERT INTO orders VALUES (280, 52, '2023-08-16', 'Manchester', 'United Kingdom', 'Returned', 42.26);
INSERT INTO orders VALUES (281, 26, '2023-06-15', 'Munich', 'Germany', 'Delivered', 130.76);
INSERT INTO orders VALUES (282, 3, '2024-06-04', 'Austin', 'USA', 'Delivered', 489.51);
INSERT INTO orders VALUES (283, 59, '2024-09-25', 'Tokyo', 'Japan', 'Delivered', 24.61);
INSERT INTO orders VALUES (284, 13, '2024-11-16', 'Los Angeles', 'USA', 'Returned', 569.02);
INSERT INTO orders VALUES (285, 58, '2024-05-31', 'Mexico City', 'Mexico', 'Cancelled', 99.77);
INSERT INTO orders VALUES (286, 24, '2024-02-27', 'Singapore', 'Singapore', 'Delivered', 99.77);
INSERT INTO orders VALUES (287, 40, '2024-11-04', 'Barcelona', 'Spain', 'Delivered', 285.01);
INSERT INTO orders VALUES (288, 45, '2024-11-25', 'Manchester', 'United Kingdom', 'Delivered', 86.29);
INSERT INTO orders VALUES (289, 20, '2024-09-29', 'Austin', 'USA', 'Delivered', 417.1);
INSERT INTO orders VALUES (290, 49, '2024-02-25', 'Madrid', 'Spain', 'Cancelled', 19.1);
INSERT INTO orders VALUES (291, 52, '2024-12-24', 'Manchester', 'United Kingdom', 'Returned', 569.02);
INSERT INTO orders VALUES (292, 2, '2023-05-22', 'Chicago', 'USA', 'Delivered', 163.58);
INSERT INTO orders VALUES (293, 31, '2023-10-14', 'Osaka', 'Japan', 'Returned', 164.36);
INSERT INTO orders VALUES (294, 25, '2023-11-10', 'Sydney', 'Australia', 'Delivered', 19.1);
INSERT INTO orders VALUES (295, 28, '2024-06-17', 'Singapore', 'Singapore', 'Delivered', 336.27);
INSERT INTO orders VALUES (296, 60, '2023-10-06', 'Bangalore', 'India', 'Delivered', 530.09);
INSERT INTO orders VALUES (297, 52, '2023-06-28', 'Manchester', 'United Kingdom', 'Returned', 106.49);
INSERT INTO orders VALUES (298, 53, '2024-12-01', 'Montreal', 'Canada', 'Returned', 208.1);
INSERT INTO orders VALUES (299, 39, '2024-02-29', 'Tokyo', 'Japan', 'Delivered', 95.48);
INSERT INTO orders VALUES (300, 21, '2023-07-29', 'Chicago', 'USA', 'Delivered', 229.54);
INSERT INTO orders VALUES (301, 39, '2023-12-27', 'Tokyo', 'Japan', 'Delivered', 138.53);
INSERT INTO orders VALUES (302, 13, '2023-10-04', 'Los Angeles', 'USA', 'Delivered', 130.5);
INSERT INTO orders VALUES (303, 11, '2023-02-19', 'Los Angeles', 'USA', 'Delivered', 823.1);
INSERT INTO orders VALUES (304, 42, '2023-03-13', 'Chicago', 'USA', 'Delivered', 305.44);
INSERT INTO orders VALUES (305, 35, '2023-05-03', 'Barcelona', 'Spain', 'Delivered', 86.2);
INSERT INTO orders VALUES (306, 28, '2024-12-09', 'Singapore', 'Singapore', 'Delivered', 309.12);
INSERT INTO orders VALUES (307, 40, '2024-03-18', 'Barcelona', 'Spain', 'Delivered', 103.95);
INSERT INTO orders VALUES (308, 7, '2023-05-27', 'Montreal', 'Canada', 'Delivered', 131.22);
INSERT INTO orders VALUES (309, 46, '2023-03-24', 'Bangalore', 'India', 'Delivered', 525.87);
INSERT INTO orders VALUES (310, 27, '2024-08-07', 'Sao Paulo', 'Brazil', 'Delivered', 21.33);
INSERT INTO orders VALUES (311, 58, '2024-09-21', 'Mexico City', 'Mexico', 'Returned', 92.89);
INSERT INTO orders VALUES (312, 48, '2024-03-01', 'Bangalore', 'India', 'Cancelled', 31.87);
INSERT INTO orders VALUES (313, 50, '2023-09-26', 'Melbourne', 'Australia', 'Returned', 130.5);
INSERT INTO orders VALUES (314, 8, '2023-07-31', 'Lyon', 'France', 'Delivered', 226.61);
INSERT INTO orders VALUES (315, 18, '2024-03-28', 'Austin', 'USA', 'Delivered', 24.61);
INSERT INTO orders VALUES (316, 48, '2024-10-14', 'Bangalore', 'India', 'Delivered', 264.49);
INSERT INTO orders VALUES (317, 16, '2024-09-13', 'Sydney', 'Australia', 'Delivered', 351.62);
INSERT INTO orders VALUES (318, 19, '2023-04-10', 'Mumbai', 'India', 'Cancelled', 68.53);
INSERT INTO orders VALUES (319, 21, '2023-08-24', 'Chicago', 'USA', 'Delivered', 43.77);
INSERT INTO orders VALUES (320, 17, '2023-06-05', 'Rio de Janeiro', 'Brazil', 'Delivered', 138.53);
INSERT INTO orders VALUES (321, 34, '2024-02-18', 'Singapore', 'Singapore', 'Delivered', 258.26);
INSERT INTO orders VALUES (322, 7, '2023-03-21', 'Montreal', 'Canada', 'Returned', 122.1);
INSERT INTO orders VALUES (323, 3, '2023-02-26', 'Austin', 'USA', 'Delivered', 422.66);
INSERT INTO orders VALUES (324, 31, '2024-04-04', 'Osaka', 'Japan', 'Delivered', 49.55);
INSERT INTO orders VALUES (325, 29, '2024-06-21', 'Sydney', 'Australia', 'Delivered', 29.42);
INSERT INTO orders VALUES (326, 57, '2023-03-25', 'Seattle', 'USA', 'Delivered', 134.97);
INSERT INTO orders VALUES (327, 4, '2024-01-13', 'Los Angeles', 'USA', 'Delivered', 68.01);
INSERT INTO orders VALUES (328, 53, '2024-06-09', 'Montreal', 'Canada', 'Cancelled', 83.0);
INSERT INTO orders VALUES (329, 5, '2024-02-22', 'Vancouver', 'Canada', 'Delivered', 277.06);
INSERT INTO orders VALUES (330, 56, '2024-06-08', 'Milan', 'Italy', 'Delivered', 195.96);
INSERT INTO orders VALUES (331, 39, '2024-11-14', 'Tokyo', 'Japan', 'Delivered', 146.71);
INSERT INTO orders VALUES (332, 1, '2023-07-27', 'Paris', 'France', 'Delivered', 288.09);
INSERT INTO orders VALUES (333, 40, '2023-10-31', 'Barcelona', 'Spain', 'Delivered', 103.95);
INSERT INTO orders VALUES (334, 3, '2024-03-17', 'Austin', 'USA', 'Delivered', 99.77);
INSERT INTO orders VALUES (335, 10, '2024-07-14', 'Mumbai', 'India', 'Delivered', 103.95);
INSERT INTO orders VALUES (336, 17, '2023-05-16', 'Rio de Janeiro', 'Brazil', 'Delivered', 553.12);
INSERT INTO orders VALUES (337, 42, '2024-11-04', 'Chicago', 'USA', 'Delivered', 126.88);
INSERT INTO orders VALUES (338, 1, '2023-08-29', 'Paris', 'France', 'Delivered', 254.08);
INSERT INTO orders VALUES (339, 44, '2023-10-20', 'Los Angeles', 'USA', 'Delivered', 128.76);
INSERT INTO orders VALUES (340, 20, '2023-03-28', 'Austin', 'USA', 'Delivered', 162.79);
INSERT INTO orders VALUES (341, 51, '2024-12-12', 'Los Angeles', 'USA', 'Delivered', 55.52);
INSERT INTO orders VALUES (342, 31, '2023-03-02', 'Osaka', 'Japan', 'Delivered', 127.04);
INSERT INTO orders VALUES (343, 7, '2024-07-09', 'Montreal', 'Canada', 'Delivered', 62.19);
INSERT INTO orders VALUES (344, 36, '2024-01-10', 'Bangalore', 'India', 'Delivered', 192.96);
INSERT INTO orders VALUES (345, 6, '2024-11-29', 'Lyon', 'France', 'Returned', 103.03);
INSERT INTO orders VALUES (346, 18, '2024-03-08', 'Austin', 'USA', 'Delivered', 192.7);
INSERT INTO orders VALUES (347, 20, '2024-06-27', 'Austin', 'USA', 'Delivered', 203.64);
INSERT INTO orders VALUES (348, 48, '2024-07-28', 'Bangalore', 'India', 'Cancelled', 23.38);
INSERT INTO orders VALUES (349, 23, '2024-10-12', 'Bangalore', 'India', 'Delivered', 127.04);
INSERT INTO orders VALUES (350, 2, '2023-08-26', 'Chicago', 'USA', 'Delivered', 138.93);
INSERT INTO orders VALUES (351, 47, '2024-09-30', 'Manchester', 'United Kingdom', 'Delivered', 103.95);
INSERT INTO orders VALUES (352, 1, '2024-08-20', 'Paris', 'France', 'Delivered', 61.26);
INSERT INTO orders VALUES (353, 28, '2024-06-24', 'Singapore', 'Singapore', 'Delivered', 253.76);
INSERT INTO orders VALUES (354, 6, '2023-03-05', 'Lyon', 'France', 'Delivered', 86.47);
INSERT INTO orders VALUES (355, 57, '2023-05-19', 'Seattle', 'USA', 'Delivered', 122.1);
INSERT INTO orders VALUES (356, 50, '2023-11-18', 'Melbourne', 'Australia', 'Delivered', 672.54);
INSERT INTO orders VALUES (357, 1, '2024-01-14', 'Paris', 'France', 'Delivered', 55.52);
INSERT INTO orders VALUES (358, 10, '2023-09-04', 'Mumbai', 'India', 'Returned', 224.1);
INSERT INTO orders VALUES (359, 26, '2024-05-17', 'Munich', 'Germany', 'Delivered', 172.94);
INSERT INTO orders VALUES (360, 40, '2024-08-17', 'Barcelona', 'Spain', 'Delivered', 200.01);
INSERT INTO orders VALUES (361, 33, '2023-07-25', 'Rome', 'Italy', 'Delivered', 165.84);
INSERT INTO orders VALUES (362, 23, '2024-08-29', 'Bangalore', 'India', 'Delivered', 81.75);
INSERT INTO orders VALUES (363, 11, '2023-07-27', 'Los Angeles', 'USA', 'Delivered', 327.16);
INSERT INTO orders VALUES (364, 25, '2024-07-28', 'Sydney', 'Australia', 'Delivered', 335.5);
INSERT INTO orders VALUES (365, 51, '2023-07-23', 'Los Angeles', 'USA', 'Delivered', 106.49);
INSERT INTO orders VALUES (366, 9, '2024-10-08', 'Sydney', 'Australia', 'Delivered', 19.1);
INSERT INTO orders VALUES (367, 31, '2024-09-22', 'Osaka', 'Japan', 'Delivered', 330.32);
INSERT INTO orders VALUES (368, 60, '2023-10-25', 'Bangalore', 'India', 'Returned', 65.38);
INSERT INTO orders VALUES (369, 6, '2024-08-01', 'Lyon', 'France', 'Returned', 291.25);
INSERT INTO orders VALUES (370, 58, '2023-12-26', 'Mexico City', 'Mexico', 'Delivered', 49.65);
INSERT INTO orders VALUES (371, 51, '2024-11-13', 'Los Angeles', 'USA', 'Delivered', 42.66);
INSERT INTO orders VALUES (372, 26, '2024-02-10', 'Munich', 'Germany', 'Cancelled', 31.87);
INSERT INTO orders VALUES (373, 13, '2024-06-20', 'Los Angeles', 'USA', 'Delivered', 280.37);
INSERT INTO orders VALUES (374, 14, '2023-03-03', 'Seattle', 'USA', 'Delivered', 126.19);
INSERT INTO orders VALUES (375, 11, '2024-04-26', 'Los Angeles', 'USA', 'Delivered', 64.82);
INSERT INTO orders VALUES (376, 8, '2023-01-01', 'Lyon', 'France', 'Delivered', 301.44);
INSERT INTO orders VALUES (377, 53, '2024-05-30', 'Montreal', 'Canada', 'Delivered', 187.22);
INSERT INTO orders VALUES (378, 54, '2024-10-31', 'Mexico City', 'Mexico', 'Returned', 29.42);
INSERT INTO orders VALUES (379, 43, '2023-09-26', 'Tokyo', 'Japan', 'Delivered', 26.4);
INSERT INTO orders VALUES (380, 25, '2024-06-15', 'Sydney', 'Australia', 'Cancelled', 241.36);
INSERT INTO orders VALUES (381, 41, '2024-08-01', 'Madrid', 'Spain', 'Delivered', 286.79);
INSERT INTO orders VALUES (382, 38, '2023-07-27', 'Rio de Janeiro', 'Brazil', 'Delivered', 144.86);
INSERT INTO orders VALUES (383, 25, '2023-08-10', 'Sydney', 'Australia', 'Returned', 146.9);
INSERT INTO orders VALUES (384, 29, '2023-05-16', 'Sydney', 'Australia', 'Cancelled', 195.96);
INSERT INTO orders VALUES (385, 12, '2024-05-26', 'Paris', 'France', 'Delivered', 211.33);
INSERT INTO orders VALUES (386, 40, '2024-06-19', 'Barcelona', 'Spain', 'Delivered', 122.1);
INSERT INTO orders VALUES (387, 16, '2023-05-03', 'Sydney', 'Australia', 'Delivered', 151.83);
INSERT INTO orders VALUES (388, 50, '2024-01-04', 'Melbourne', 'Australia', 'Delivered', 49.55);
INSERT INTO orders VALUES (389, 12, '2023-05-16', 'Paris', 'France', 'Delivered', 43.77);
INSERT INTO orders VALUES (390, 7, '2024-10-17', 'Montreal', 'Canada', 'Delivered', 672.54);
INSERT INTO orders VALUES (391, 23, '2024-07-14', 'Bangalore', 'India', 'Delivered', 73.45);
INSERT INTO orders VALUES (392, 6, '2023-05-06', 'Lyon', 'France', 'Delivered', 415.59);
INSERT INTO orders VALUES (393, 43, '2024-09-24', 'Tokyo', 'Japan', 'Delivered', 29.42);
INSERT INTO orders VALUES (394, 41, '2023-09-11', 'Madrid', 'Spain', 'Delivered', 323.25);
INSERT INTO orders VALUES (395, 21, '2023-10-29', 'Chicago', 'USA', 'Returned', 138.53);
INSERT INTO orders VALUES (396, 6, '2023-12-02', 'Lyon', 'France', 'Delivered', 287.19);
INSERT INTO orders VALUES (397, 25, '2023-12-18', 'Sydney', 'Australia', 'Returned', 52.03);
INSERT INTO orders VALUES (398, 9, '2023-12-07', 'Sydney', 'Australia', 'Delivered', 31.87);
INSERT INTO orders VALUES (399, 5, '2023-08-15', 'Vancouver', 'Canada', 'Cancelled', 208.55);
INSERT INTO orders VALUES (400, 45, '2023-06-26', 'Manchester', 'United Kingdom', 'Delivered', 137.06);
INSERT INTO orders VALUES (401, 9, '2023-11-15', 'Sydney', 'Australia', 'Delivered', 68.32);
INSERT INTO orders VALUES (402, 52, '2024-09-10', 'Manchester', 'United Kingdom', 'Delivered', 309.64);
INSERT INTO orders VALUES (403, 60, '2024-06-04', 'Bangalore', 'India', 'Delivered', 416.02);
INSERT INTO orders VALUES (404, 40, '2024-04-19', 'Barcelona', 'Spain', 'Delivered', 183.42);
INSERT INTO orders VALUES (405, 58, '2024-05-12', 'Mexico City', 'Mexico', 'Cancelled', 89.98);
INSERT INTO orders VALUES (406, 53, '2023-08-27', 'Montreal', 'Canada', 'Delivered', 107.53);
INSERT INTO orders VALUES (407, 33, '2024-11-09', 'Rome', 'Italy', 'Delivered', 132.32);
INSERT INTO orders VALUES (408, 17, '2024-07-31', 'Rio de Janeiro', 'Brazil', 'Cancelled', 231.42);
INSERT INTO orders VALUES (409, 21, '2024-08-05', 'Chicago', 'USA', 'Delivered', 97.95);
INSERT INTO orders VALUES (410, 12, '2024-02-25', 'Paris', 'France', 'Delivered', 92.75);
INSERT INTO orders VALUES (411, 60, '2023-10-09', 'Bangalore', 'India', 'Delivered', 49.06);
INSERT INTO orders VALUES (412, 21, '2023-09-23', 'Chicago', 'USA', 'Delivered', 190.26);
INSERT INTO orders VALUES (413, 51, '2023-01-04', 'Los Angeles', 'USA', 'Delivered', 68.66);
INSERT INTO orders VALUES (414, 34, '2023-02-11', 'Singapore', 'Singapore', 'Delivered', 49.65);
INSERT INTO orders VALUES (415, 55, '2023-10-05', 'Toronto', 'Canada', 'Delivered', 25.32);
INSERT INTO orders VALUES (416, 29, '2023-12-23', 'Sydney', 'Australia', 'Cancelled', 67.02);
INSERT INTO orders VALUES (417, 45, '2023-03-23', 'Manchester', 'United Kingdom', 'Delivered', 24.61);
INSERT INTO orders VALUES (418, 35, '2024-05-09', 'Barcelona', 'Spain', 'Returned', 31.87);
INSERT INTO orders VALUES (419, 26, '2024-04-02', 'Munich', 'Germany', 'Returned', 205.0);
INSERT INTO orders VALUES (420, 24, '2023-01-13', 'Singapore', 'Singapore', 'Delivered', 65.38);
INSERT INTO orders VALUES (421, 24, '2024-11-08', 'Singapore', 'Singapore', 'Cancelled', 156.37);
INSERT INTO orders VALUES (422, 22, '2024-04-24', 'Melbourne', 'Australia', 'Delivered', 360.3);
INSERT INTO orders VALUES (423, 12, '2023-08-02', 'Paris', 'France', 'Cancelled', 200.01);
INSERT INTO orders VALUES (424, 4, '2023-03-31', 'Los Angeles', 'USA', 'Delivered', 126.88);
INSERT INTO orders VALUES (425, 34, '2024-12-06', 'Singapore', 'Singapore', 'Delivered', 262.63);
INSERT INTO orders VALUES (426, 56, '2023-07-20', 'Milan', 'Italy', 'Cancelled', 76.66);
INSERT INTO orders VALUES (427, 58, '2023-09-27', 'Mexico City', 'Mexico', 'Delivered', 417.1);
INSERT INTO orders VALUES (428, 1, '2023-11-12', 'Paris', 'France', 'Returned', 111.59);
INSERT INTO orders VALUES (429, 10, '2023-03-12', 'Mumbai', 'India', 'Delivered', 265.49);
INSERT INTO orders VALUES (430, 27, '2024-08-21', 'Sao Paulo', 'Brazil', 'Cancelled', 91.61);
INSERT INTO orders VALUES (431, 4, '2024-04-23', 'Los Angeles', 'USA', 'Delivered', 344.61);
INSERT INTO orders VALUES (432, 40, '2023-09-28', 'Barcelona', 'Spain', 'Returned', 29.42);
INSERT INTO orders VALUES (433, 2, '2023-05-11', 'Chicago', 'USA', 'Delivered', 211.33);
INSERT INTO orders VALUES (434, 37, '2024-05-23', 'Milan', 'Italy', 'Delivered', 106.49);
INSERT INTO orders VALUES (435, 7, '2023-11-10', 'Montreal', 'Canada', 'Cancelled', 32.41);
INSERT INTO orders VALUES (436, 35, '2024-05-06', 'Barcelona', 'Spain', 'Delivered', 127.04);
INSERT INTO orders VALUES (437, 38, '2024-07-18', 'Rio de Janeiro', 'Brazil', 'Delivered', 28.37);
INSERT INTO orders VALUES (438, 9, '2023-05-19', 'Sydney', 'Australia', 'Delivered', 146.9);
INSERT INTO orders VALUES (439, 40, '2024-03-13', 'Barcelona', 'Spain', 'Delivered', 633.8);
INSERT INTO orders VALUES (440, 60, '2024-08-19', 'Bangalore', 'India', 'Delivered', 143.31);
INSERT INTO orders VALUES (441, 29, '2023-12-03', 'Sydney', 'Australia', 'Delivered', 334.16);
INSERT INTO orders VALUES (442, 10, '2024-05-24', 'Mumbai', 'India', 'Returned', 52.03);
INSERT INTO orders VALUES (443, 18, '2023-05-05', 'Austin', 'USA', 'Delivered', 205.0);
INSERT INTO orders VALUES (444, 17, '2023-08-27', 'Rio de Janeiro', 'Brazil', 'Delivered', 97.15);
INSERT INTO orders VALUES (445, 42, '2023-12-04', 'Chicago', 'USA', 'Cancelled', 82.98);
INSERT INTO orders VALUES (446, 39, '2024-09-13', 'Tokyo', 'Japan', 'Returned', 28.37);
INSERT INTO orders VALUES (447, 29, '2024-01-01', 'Sydney', 'Australia', 'Cancelled', 28.94);
INSERT INTO orders VALUES (448, 34, '2023-03-09', 'Singapore', 'Singapore', 'Returned', 131.22);
INSERT INTO orders VALUES (449, 16, '2024-06-13', 'Sydney', 'Australia', 'Delivered', 18.16);
INSERT INTO orders VALUES (450, 1, '2024-09-23', 'Paris', 'France', 'Delivered', 97.15);
INSERT INTO orders VALUES (451, 35, '2023-10-23', 'Barcelona', 'Spain', 'Delivered', 43.77);
INSERT INTO orders VALUES (452, 12, '2024-01-05', 'Paris', 'France', 'Delivered', 86.2);
INSERT INTO orders VALUES (453, 4, '2023-10-10', 'Los Angeles', 'USA', 'Delivered', 422.66);
INSERT INTO orders VALUES (454, 40, '2023-09-02', 'Barcelona', 'Spain', 'Cancelled', 124.38);
INSERT INTO orders VALUES (455, 13, '2024-08-29', 'Los Angeles', 'USA', 'Delivered', 195.57);
INSERT INTO orders VALUES (456, 34, '2024-09-14', 'Singapore', 'Singapore', 'Cancelled', 26.63);
INSERT INTO orders VALUES (457, 33, '2024-01-02', 'Rome', 'Italy', 'Returned', 53.26);
INSERT INTO orders VALUES (458, 27, '2023-09-12', 'Sao Paulo', 'Brazil', 'Cancelled', 214.86);
INSERT INTO orders VALUES (459, 33, '2023-01-19', 'Rome', 'Italy', 'Delivered', 284.51);
INSERT INTO orders VALUES (460, 20, '2024-06-10', 'Austin', 'USA', 'Returned', 97.15);
INSERT INTO orders VALUES (461, 57, '2024-12-20', 'Seattle', 'USA', 'Returned', 52.03);
INSERT INTO orders VALUES (462, 31, '2024-11-19', 'Osaka', 'Japan', 'Returned', 93.66);
INSERT INTO orders VALUES (463, 1, '2023-08-04', 'Paris', 'France', 'Delivered', 31.87);
INSERT INTO orders VALUES (464, 28, '2023-12-03', 'Singapore', 'Singapore', 'Returned', 19.1);
INSERT INTO orders VALUES (465, 30, '2024-05-10', 'Barcelona', 'Spain', 'Delivered', 200.01);
INSERT INTO orders VALUES (466, 42, '2023-12-23', 'Chicago', 'USA', 'Delivered', 297.03);
INSERT INTO orders VALUES (467, 7, '2023-12-03', 'Montreal', 'Canada', 'Delivered', 82.17);
INSERT INTO orders VALUES (468, 42, '2023-02-20', 'Chicago', 'USA', 'Delivered', 26.4);
INSERT INTO orders VALUES (469, 22, '2024-04-01', 'Melbourne', 'Australia', 'Returned', 78.66);
INSERT INTO orders VALUES (470, 17, '2023-07-01', 'Rio de Janeiro', 'Brazil', 'Returned', 97.15);
INSERT INTO orders VALUES (471, 18, '2024-01-12', 'Austin', 'USA', 'Returned', 55.52);
INSERT INTO orders VALUES (472, 44, '2023-11-18', 'Los Angeles', 'USA', 'Delivered', 101.09);
INSERT INTO orders VALUES (473, 59, '2023-09-12', 'Tokyo', 'Japan', 'Cancelled', 92.93);
INSERT INTO orders VALUES (474, 42, '2023-12-16', 'Chicago', 'USA', 'Delivered', 100.23);
INSERT INTO orders VALUES (475, 57, '2023-08-30', 'Seattle', 'USA', 'Cancelled', 211.33);
INSERT INTO orders VALUES (476, 11, '2023-08-14', 'Los Angeles', 'USA', 'Delivered', 160.6);
INSERT INTO orders VALUES (477, 48, '2023-05-31', 'Bangalore', 'India', 'Delivered', 262.21);
INSERT INTO orders VALUES (478, 21, '2024-08-09', 'Chicago', 'USA', 'Delivered', 112.14);
INSERT INTO orders VALUES (479, 22, '2024-10-10', 'Melbourne', 'Australia', 'Cancelled', 92.89);
INSERT INTO orders VALUES (480, 25, '2023-05-20', 'Sydney', 'Australia', 'Returned', 51.42);
INSERT INTO orders VALUES (481, 43, '2024-11-23', 'Tokyo', 'Japan', 'Cancelled', 124.96);
INSERT INTO orders VALUES (482, 31, '2023-02-20', 'Osaka', 'Japan', 'Cancelled', 227.49);
INSERT INTO orders VALUES (483, 55, '2023-06-10', 'Toronto', 'Canada', 'Delivered', 280.98);
INSERT INTO orders VALUES (484, 15, '2024-04-10', 'Seattle', 'USA', 'Cancelled', 181.9);
INSERT INTO orders VALUES (485, 14, '2023-07-15', 'Seattle', 'USA', 'Delivered', 21.33);
INSERT INTO orders VALUES (486, 38, '2023-02-28', 'Rio de Janeiro', 'Brazil', 'Delivered', 86.47);
INSERT INTO orders VALUES (487, 59, '2023-12-28', 'Tokyo', 'Japan', 'Delivered', 82.92);
INSERT INTO orders VALUES (488, 3, '2023-10-30', 'Austin', 'USA', 'Delivered', 189.98);
INSERT INTO orders VALUES (489, 40, '2024-04-03', 'Barcelona', 'Spain', 'Delivered', 32.41);
INSERT INTO orders VALUES (490, 10, '2024-08-12', 'Mumbai', 'India', 'Returned', 117.82);
INSERT INTO orders VALUES (491, 2, '2024-10-01', 'Chicago', 'USA', 'Delivered', 688.7);
INSERT INTO orders VALUES (492, 42, '2023-06-11', 'Chicago', 'USA', 'Returned', 58.84);
INSERT INTO orders VALUES (493, 45, '2024-08-02', 'Manchester', 'United Kingdom', 'Delivered', 429.44);
INSERT INTO orders VALUES (494, 5, '2023-08-07', 'Vancouver', 'Canada', 'Cancelled', 277.4);
INSERT INTO orders VALUES (495, 13, '2023-01-25', 'Los Angeles', 'USA', 'Cancelled', 18.16);
INSERT INTO orders VALUES (496, 43, '2023-12-03', 'Tokyo', 'Japan', 'Delivered', 23.38);
INSERT INTO orders VALUES (497, 56, '2024-06-22', 'Milan', 'Italy', 'Returned', 65.38);
INSERT INTO orders VALUES (498, 7, '2024-08-30', 'Montreal', 'Canada', 'Delivered', 103.95);
INSERT INTO orders VALUES (499, 14, '2024-02-15', 'Seattle', 'USA', 'Delivered', 120.13);
INSERT INTO orders VALUES (500, 59, '2024-11-29', 'Tokyo', 'Japan', 'Returned', 100.23);
INSERT INTO orders VALUES (501, 53, '2023-02-18', 'Montreal', 'Canada', 'Returned', 117.97);
INSERT INTO orders VALUES (502, 31, '2023-01-02', 'Osaka', 'Japan', 'Delivered', 336.27);
INSERT INTO orders VALUES (503, 7, '2024-03-07', 'Montreal', 'Canada', 'Returned', 103.95);
INSERT INTO orders VALUES (504, 19, '2024-06-12', 'Mumbai', 'India', 'Delivered', 271.97);
INSERT INTO orders VALUES (505, 17, '2023-10-06', 'Rio de Janeiro', 'Brazil', 'Delivered', 64.82);
INSERT INTO orders VALUES (506, 17, '2024-02-13', 'Rio de Janeiro', 'Brazil', 'Delivered', 157.54);
INSERT INTO orders VALUES (507, 49, '2024-03-18', 'Madrid', 'Spain', 'Delivered', 19.1);
INSERT INTO orders VALUES (508, 21, '2023-06-07', 'Chicago', 'USA', 'Cancelled', 138.53);
INSERT INTO orders VALUES (509, 31, '2024-12-16', 'Osaka', 'Japan', 'Delivered', 21.33);
INSERT INTO orders VALUES (510, 48, '2023-11-24', 'Bangalore', 'India', 'Delivered', 52.03);
INSERT INTO orders VALUES (511, 27, '2023-04-24', 'Sao Paulo', 'Brazil', 'Delivered', 72.43);
INSERT INTO orders VALUES (512, 34, '2024-03-27', 'Singapore', 'Singapore', 'Delivered', 157.37);
INSERT INTO orders VALUES (513, 46, '2023-06-10', 'Bangalore', 'India', 'Delivered', 360.26);
INSERT INTO orders VALUES (514, 14, '2024-06-04', 'Seattle', 'USA', 'Returned', 152.2);
INSERT INTO orders VALUES (515, 6, '2024-04-24', 'Lyon', 'France', 'Cancelled', 126.88);
INSERT INTO orders VALUES (516, 19, '2024-05-25', 'Mumbai', 'India', 'Delivered', 72.43);
INSERT INTO orders VALUES (517, 1, '2024-06-19', 'Paris', 'France', 'Cancelled', 136.85);
INSERT INTO orders VALUES (518, 49, '2023-01-15', 'Madrid', 'Spain', 'Delivered', 211.33);
INSERT INTO orders VALUES (519, 23, '2023-04-03', 'Bangalore', 'India', 'Delivered', 163.58);
INSERT INTO orders VALUES (520, 32, '2024-09-03', 'Melbourne', 'Australia', 'Returned', 52.03);
INSERT INTO orders VALUES (521, 53, '2023-09-14', 'Montreal', 'Canada', 'Delivered', 131.22);
INSERT INTO orders VALUES (522, 38, '2023-05-06', 'Rio de Janeiro', 'Brazil', 'Delivered', 188.08);
INSERT INTO orders VALUES (523, 17, '2024-08-05', 'Rio de Janeiro', 'Brazil', 'Cancelled', 111.42);
INSERT INTO orders VALUES (524, 53, '2023-06-29', 'Montreal', 'Canada', 'Delivered', 32.32);
INSERT INTO orders VALUES (525, 15, '2024-04-09', 'Seattle', 'USA', 'Delivered', 43.1);
INSERT INTO orders VALUES (526, 8, '2024-02-26', 'Lyon', 'France', 'Returned', 42.26);
INSERT INTO orders VALUES (527, 6, '2023-10-01', 'Lyon', 'France', 'Delivered', 52.03);
INSERT INTO orders VALUES (528, 45, '2023-07-01', 'Manchester', 'United Kingdom', 'Cancelled', 215.61);
INSERT INTO orders VALUES (529, 41, '2023-10-26', 'Madrid', 'Spain', 'Delivered', 32.41);
INSERT INTO orders VALUES (530, 7, '2023-11-27', 'Montreal', 'Canada', 'Delivered', 76.4);
INSERT INTO orders VALUES (531, 57, '2023-11-18', 'Seattle', 'USA', 'Returned', 296.27);
INSERT INTO orders VALUES (532, 42, '2023-02-08', 'Chicago', 'USA', 'Delivered', 73.45);
INSERT INTO orders VALUES (533, 14, '2024-11-07', 'Seattle', 'USA', 'Delivered', 97.04);
INSERT INTO orders VALUES (534, 58, '2024-04-28', 'Mexico City', 'Mexico', 'Cancelled', 138.53);
INSERT INTO orders VALUES (535, 11, '2023-02-18', 'Los Angeles', 'USA', 'Delivered', 73.03);
INSERT INTO orders VALUES (536, 15, '2024-01-11', 'Seattle', 'USA', 'Delivered', 429.93);
INSERT INTO orders VALUES (537, 39, '2024-08-23', 'Tokyo', 'Japan', 'Returned', 225.14);
INSERT INTO orders VALUES (538, 3, '2023-07-31', 'Austin', 'USA', 'Delivered', 168.69);
INSERT INTO orders VALUES (539, 34, '2024-12-28', 'Singapore', 'Singapore', 'Delivered', 124.42);
INSERT INTO orders VALUES (540, 29, '2023-05-24', 'Sydney', 'Australia', 'Returned', 55.52);
INSERT INTO orders VALUES (541, 48, '2023-02-19', 'Bangalore', 'India', 'Delivered', 43.1);
INSERT INTO orders VALUES (542, 30, '2024-09-04', 'Barcelona', 'Spain', 'Delivered', 16.16);
INSERT INTO orders VALUES (543, 50, '2024-04-03', 'Melbourne', 'Australia', 'Delivered', 110.54);
INSERT INTO orders VALUES (544, 9, '2023-12-16', 'Sydney', 'Australia', 'Delivered', 122.1);
INSERT INTO orders VALUES (545, 42, '2023-02-07', 'Chicago', 'USA', 'Returned', 92.89);
INSERT INTO orders VALUES (546, 33, '2023-10-24', 'Rome', 'Italy', 'Delivered', 71.82);
INSERT INTO orders VALUES (547, 20, '2023-02-11', 'Austin', 'USA', 'Returned', 126.88);
INSERT INTO orders VALUES (548, 54, '2024-07-25', 'Mexico City', 'Mexico', 'Cancelled', 82.92);
INSERT INTO orders VALUES (549, 47, '2023-07-24', 'Manchester', 'United Kingdom', 'Delivered', 92.89);
INSERT INTO orders VALUES (550, 47, '2023-06-25', 'Manchester', 'United Kingdom', 'Delivered', 213.32);
INSERT INTO orders VALUES (551, 23, '2024-08-24', 'Bangalore', 'India', 'Delivered', 92.89);
INSERT INTO orders VALUES (552, 21, '2023-11-10', 'Chicago', 'USA', 'Delivered', 49.22);
INSERT INTO orders VALUES (553, 47, '2023-09-16', 'Manchester', 'United Kingdom', 'Delivered', 43.1);
INSERT INTO orders VALUES (554, 43, '2023-02-20', 'Tokyo', 'Japan', 'Delivered', 68.53);
INSERT INTO orders VALUES (555, 25, '2023-07-18', 'Sydney', 'Australia', 'Delivered', 82.92);
INSERT INTO orders VALUES (556, 51, '2024-11-14', 'Los Angeles', 'USA', 'Delivered', 417.1);
INSERT INTO orders VALUES (557, 20, '2024-06-29', 'Austin', 'USA', 'Delivered', 143.64);
INSERT INTO orders VALUES (558, 13, '2023-03-17', 'Los Angeles', 'USA', 'Delivered', 301.08);
INSERT INTO orders VALUES (559, 18, '2023-05-21', 'Austin', 'USA', 'Delivered', 23.38);
INSERT INTO orders VALUES (560, 25, '2023-01-24', 'Sydney', 'Australia', 'Delivered', 284.52);
INSERT INTO orders VALUES (561, 55, '2024-02-01', 'Toronto', 'Canada', 'Delivered', 16.16);
INSERT INTO orders VALUES (562, 15, '2023-01-10', 'Seattle', 'USA', 'Cancelled', 117.97);
INSERT INTO orders VALUES (563, 30, '2023-08-27', 'Barcelona', 'Spain', 'Delivered', 132.14);
INSERT INTO orders VALUES (564, 39, '2024-09-06', 'Tokyo', 'Japan', 'Returned', 655.12);
INSERT INTO orders VALUES (565, 16, '2024-06-19', 'Sydney', 'Australia', 'Delivered', 16.16);
INSERT INTO orders VALUES (566, 37, '2024-11-19', 'Milan', 'Italy', 'Cancelled', 226.64);
INSERT INTO orders VALUES (567, 27, '2024-05-24', 'Sao Paulo', 'Brazil', 'Delivered', 124.38);
INSERT INTO orders VALUES (568, 47, '2024-02-18', 'Manchester', 'United Kingdom', 'Returned', 23.38);
INSERT INTO orders VALUES (569, 57, '2024-04-20', 'Seattle', 'USA', 'Returned', 32.32);
INSERT INTO orders VALUES (570, 38, '2023-02-01', 'Rio de Janeiro', 'Brazil', 'Delivered', 49.06);
INSERT INTO orders VALUES (571, 12, '2023-12-30', 'Paris', 'France', 'Returned', 26.4);
INSERT INTO orders VALUES (572, 30, '2024-12-10', 'Barcelona', 'Spain', 'Delivered', 119.38);
INSERT INTO orders VALUES (573, 41, '2023-01-07', 'Madrid', 'Spain', 'Returned', 163.58);
INSERT INTO orders VALUES (574, 58, '2024-09-01', 'Mexico City', 'Mexico', 'Delivered', 92.89);
INSERT INTO orders VALUES (575, 51, '2023-09-17', 'Los Angeles', 'USA', 'Delivered', 60.39);
INSERT INTO orders VALUES (576, 46, '2023-08-12', 'Bangalore', 'India', 'Returned', 43.1);
INSERT INTO orders VALUES (577, 17, '2023-02-08', 'Rio de Janeiro', 'Brazil', 'Delivered', 247.06);
INSERT INTO orders VALUES (578, 2, '2024-10-22', 'Chicago', 'USA', 'Cancelled', 31.87);
INSERT INTO orders VALUES (579, 27, '2023-08-16', 'Sao Paulo', 'Brazil', 'Cancelled', 140.19);
INSERT INTO orders VALUES (580, 56, '2023-09-13', 'Milan', 'Italy', 'Delivered', 36.32);
INSERT INTO orders VALUES (581, 42, '2023-02-03', 'Chicago', 'USA', 'Delivered', 507.18);
INSERT INTO orders VALUES (582, 25, '2023-03-25', 'Sydney', 'Australia', 'Delivered', 375.68);
INSERT INTO orders VALUES (583, 17, '2024-09-12', 'Rio de Janeiro', 'Brazil', 'Cancelled', 103.95);
INSERT INTO orders VALUES (584, 11, '2024-01-16', 'Los Angeles', 'USA', 'Returned', 52.03);
INSERT INTO orders VALUES (585, 13, '2023-04-09', 'Los Angeles', 'USA', 'Cancelled', 64.82);
INSERT INTO orders VALUES (586, 7, '2024-07-22', 'Montreal', 'Canada', 'Cancelled', 122.1);
INSERT INTO orders VALUES (587, 35, '2023-06-03', 'Barcelona', 'Spain', 'Delivered', 185.35);
INSERT INTO orders VALUES (588, 33, '2024-08-30', 'Rome', 'Italy', 'Delivered', 99.3);
INSERT INTO orders VALUES (589, 51, '2024-06-11', 'Los Angeles', 'USA', 'Delivered', 138.42);
INSERT INTO orders VALUES (590, 27, '2023-09-18', 'Sao Paulo', 'Brazil', 'Returned', 226.05);
INSERT INTO orders VALUES (591, 44, '2024-07-23', 'Los Angeles', 'USA', 'Delivered', 43.77);
INSERT INTO orders VALUES (592, 33, '2024-04-12', 'Rome', 'Italy', 'Delivered', 229.88);
INSERT INTO orders VALUES (593, 23, '2023-10-24', 'Bangalore', 'India', 'Returned', 218.19);
INSERT INTO orders VALUES (594, 25, '2024-12-24', 'Sydney', 'Australia', 'Delivered', 194.3);
INSERT INTO orders VALUES (595, 1, '2023-02-13', 'Paris', 'France', 'Delivered', 273.18);
INSERT INTO orders VALUES (596, 27, '2023-11-13', 'Sao Paulo', 'Brazil', 'Returned', 32.32);
INSERT INTO orders VALUES (597, 44, '2024-08-27', 'Los Angeles', 'USA', 'Delivered', 380.14);
INSERT INTO orders VALUES (598, 15, '2024-05-21', 'Seattle', 'USA', 'Delivered', 200.01);
INSERT INTO orders VALUES (599, 26, '2024-08-17', 'Munich', 'Germany', 'Cancelled', 82.17);
INSERT INTO orders VALUES (600, 52, '2023-09-01', 'Manchester', 'United Kingdom', 'Delivered', 122.1);

INSERT INTO order_item VALUES (1, 1, 22, 99.77, 1);
INSERT INTO order_item VALUES (2, 1, 6, 100.23, 1);
INSERT INTO order_item VALUES (3, 2, 26, 43.77, 1);
INSERT INTO order_item VALUES (4, 3, 48, 200.01, 1);
INSERT INTO order_item VALUES (5, 4, 11, 43.1, 2);
INSERT INTO order_item VALUES (6, 5, 2, 117.82, 1);
INSERT INTO order_item VALUES (7, 6, 58, 18.16, 1);
INSERT INTO order_item VALUES (8, 6, 30, 122.1, 1);
INSERT INTO order_item VALUES (9, 7, 10, 82.92, 1);
INSERT INTO order_item VALUES (10, 8, 31, 124.96, 2);
INSERT INTO order_item VALUES (11, 8, 43, 62.19, 1);
INSERT INTO order_item VALUES (12, 9, 10, 82.92, 1);
INSERT INTO order_item VALUES (13, 10, 9, 336.27, 1);
INSERT INTO order_item VALUES (14, 10, 2, 117.82, 1);
INSERT INTO order_item VALUES (15, 11, 42, 26.63, 1);
INSERT INTO order_item VALUES (16, 12, 48, 200.01, 1);
INSERT INTO order_item VALUES (17, 12, 60, 14.47, 1);
INSERT INTO order_item VALUES (18, 13, 56, 25.32, 1);
INSERT INTO order_item VALUES (19, 14, 2, 117.82, 1);
INSERT INTO order_item VALUES (20, 15, 19, 68.32, 1);
INSERT INTO order_item VALUES (21, 16, 49, 130.5, 2);
INSERT INTO order_item VALUES (22, 17, 17, 24.61, 1);
INSERT INTO order_item VALUES (23, 17, 35, 93.66, 1);
INSERT INTO order_item VALUES (24, 17, 27, 127.04, 2);
INSERT INTO order_item VALUES (25, 18, 4, 97.15, 1);
INSERT INTO order_item VALUES (26, 18, 59, 19.1, 1);
INSERT INTO order_item VALUES (27, 19, 58, 18.16, 2);
INSERT INTO order_item VALUES (28, 20, 38, 28.37, 1);
INSERT INTO order_item VALUES (29, 21, 27, 127.04, 1);
INSERT INTO order_item VALUES (30, 21, 53, 126.88, 2);
INSERT INTO order_item VALUES (31, 21, 59, 19.1, 1);
INSERT INTO order_item VALUES (32, 22, 9, 336.27, 1);
INSERT INTO order_item VALUES (33, 22, 35, 93.66, 2);
INSERT INTO order_item VALUES (34, 23, 33, 138.53, 1);
INSERT INTO order_item VALUES (35, 24, 50, 42.26, 1);
INSERT INTO order_item VALUES (36, 25, 1, 211.33, 1);
INSERT INTO order_item VALUES (37, 25, 50, 42.26, 1);
INSERT INTO order_item VALUES (38, 26, 12, 107.43, 1);
INSERT INTO order_item VALUES (39, 27, 40, 21.33, 2);
INSERT INTO order_item VALUES (40, 28, 36, 55.52, 1);
INSERT INTO order_item VALUES (41, 29, 44, 49.06, 1);
INSERT INTO order_item VALUES (42, 30, 36, 55.52, 1);
INSERT INTO order_item VALUES (43, 31, 57, 23.38, 1);
INSERT INTO order_item VALUES (44, 31, 36, 55.52, 2);
INSERT INTO order_item VALUES (45, 32, 13, 68.53, 2);
INSERT INTO order_item VALUES (46, 32, 18, 71.82, 1);
INSERT INTO order_item VALUES (47, 33, 33, 138.53, 1);
INSERT INTO order_item VALUES (48, 34, 2, 117.82, 1);
INSERT INTO order_item VALUES (49, 35, 29, 195.96, 1);
INSERT INTO order_item VALUES (50, 36, 33, 138.53, 1);
INSERT INTO order_item VALUES (51, 37, 13, 68.53, 1);
INSERT INTO order_item VALUES (52, 37, 45, 16.16, 1);
INSERT INTO order_item VALUES (53, 38, 33, 138.53, 1);
INSERT INTO order_item VALUES (54, 38, 35, 93.66, 2);
INSERT INTO order_item VALUES (55, 38, 52, 205.0, 1);
INSERT INTO order_item VALUES (56, 39, 16, 92.89, 1);
INSERT INTO order_item VALUES (57, 40, 57, 23.38, 2);
INSERT INTO order_item VALUES (58, 41, 60, 14.47, 1);
INSERT INTO order_item VALUES (59, 41, 36, 55.52, 1);
INSERT INTO order_item VALUES (60, 42, 54, 49.55, 1);
INSERT INTO order_item VALUES (61, 43, 27, 127.04, 1);
INSERT INTO order_item VALUES (62, 43, 8, 26.4, 2);
INSERT INTO order_item VALUES (63, 44, 21, 70.16, 1);
INSERT INTO order_item VALUES (64, 44, 5, 284.51, 1);
INSERT INTO order_item VALUES (65, 45, 28, 72.43, 1);
INSERT INTO order_item VALUES (66, 46, 43, 62.19, 1);
INSERT INTO order_item VALUES (67, 46, 20, 106.49, 1);
INSERT INTO order_item VALUES (68, 47, 58, 18.16, 2);
INSERT INTO order_item VALUES (69, 47, 50, 42.26, 2);
INSERT INTO order_item VALUES (70, 48, 42, 26.63, 1);
INSERT INTO order_item VALUES (71, 49, 10, 82.92, 1);
INSERT INTO order_item VALUES (72, 49, 17, 24.61, 1);
INSERT INTO order_item VALUES (73, 50, 30, 122.1, 1);
INSERT INTO order_item VALUES (74, 50, 15, 82.17, 1);
INSERT INTO order_item VALUES (75, 51, 26, 43.77, 1);
INSERT INTO order_item VALUES (76, 52, 11, 43.1, 1);
INSERT INTO order_item VALUES (77, 53, 11, 43.1, 1);
INSERT INTO order_item VALUES (78, 54, 33, 138.53, 2);
INSERT INTO order_item VALUES (79, 54, 26, 43.77, 1);
INSERT INTO order_item VALUES (80, 55, 13, 68.53, 1);
INSERT INTO order_item VALUES (81, 56, 6, 100.23, 1);
INSERT INTO order_item VALUES (82, 57, 2, 117.82, 1);
INSERT INTO order_item VALUES (83, 58, 30, 122.1, 1);
INSERT INTO order_item VALUES (84, 59, 2, 117.82, 1);
INSERT INTO order_item VALUES (85, 59, 25, 65.38, 1);
INSERT INTO order_item VALUES (86, 60, 40, 21.33, 1);
INSERT INTO order_item VALUES (87, 61, 5, 284.51, 1);
INSERT INTO order_item VALUES (88, 62, 57, 23.38, 1);
INSERT INTO order_item VALUES (89, 62, 7, 163.58, 1);
INSERT INTO order_item VALUES (90, 63, 18, 71.82, 1);
INSERT INTO order_item VALUES (91, 63, 3, 29.42, 1);
INSERT INTO order_item VALUES (92, 64, 18, 71.82, 1);
INSERT INTO order_item VALUES (93, 65, 53, 126.88, 1);
INSERT INTO order_item VALUES (94, 65, 28, 72.43, 1);
INSERT INTO order_item VALUES (95, 66, 53, 126.88, 1);
INSERT INTO order_item VALUES (96, 67, 10, 82.92, 1);
INSERT INTO order_item VALUES (97, 68, 37, 86.47, 1);
INSERT INTO order_item VALUES (98, 69, 21, 70.16, 1);
INSERT INTO order_item VALUES (99, 70, 4, 97.15, 1);
INSERT INTO order_item VALUES (100, 70, 52, 205.0, 1);
INSERT INTO order_item VALUES (101, 71, 28, 72.43, 2);
INSERT INTO order_item VALUES (102, 71, 58, 18.16, 1);
INSERT INTO order_item VALUES (103, 71, 5, 284.51, 1);
INSERT INTO order_item VALUES (104, 72, 41, 49.65, 1);
INSERT INTO order_item VALUES (105, 72, 6, 100.23, 1);
INSERT INTO order_item VALUES (106, 73, 6, 100.23, 1);
INSERT INTO order_item VALUES (107, 73, 39, 68.01, 1);
INSERT INTO order_item VALUES (108, 74, 5, 284.51, 1);
INSERT INTO order_item VALUES (109, 75, 30, 122.1, 1);
INSERT INTO order_item VALUES (110, 76, 36, 55.52, 1);
INSERT INTO order_item VALUES (111, 77, 40, 21.33, 2);
INSERT INTO order_item VALUES (112, 77, 9, 336.27, 1);
INSERT INTO order_item VALUES (113, 78, 46, 60.39, 1);
INSERT INTO order_item VALUES (114, 79, 11, 43.1, 1);
INSERT INTO order_item VALUES (115, 80, 12, 107.43, 2);
INSERT INTO order_item VALUES (116, 80, 13, 68.53, 1);
INSERT INTO order_item VALUES (117, 81, 41, 49.65, 1);
INSERT INTO order_item VALUES (118, 81, 20, 106.49, 1);
INSERT INTO order_item VALUES (119, 81, 34, 38.65, 1);
INSERT INTO order_item VALUES (120, 82, 19, 68.32, 1);
INSERT INTO order_item VALUES (121, 83, 44, 49.06, 1);
INSERT INTO order_item VALUES (122, 83, 12, 107.43, 1);
INSERT INTO order_item VALUES (123, 83, 18, 71.82, 1);
INSERT INTO order_item VALUES (124, 84, 17, 24.61, 1);
INSERT INTO order_item VALUES (125, 85, 2, 117.82, 1);
INSERT INTO order_item VALUES (126, 86, 36, 55.52, 1);
INSERT INTO order_item VALUES (127, 87, 31, 124.96, 2);
INSERT INTO order_item VALUES (128, 87, 16, 92.89, 1);
INSERT INTO order_item VALUES (129, 88, 7, 163.58, 1);
INSERT INTO order_item VALUES (130, 89, 28, 72.43, 1);
INSERT INTO order_item VALUES (131, 90, 35, 93.66, 1);
INSERT INTO order_item VALUES (132, 91, 33, 138.53, 1);
INSERT INTO order_item VALUES (133, 92, 14, 103.95, 1);
INSERT INTO order_item VALUES (134, 92, 15, 82.17, 1);
INSERT INTO order_item VALUES (135, 93, 54, 49.55, 1);
INSERT INTO order_item VALUES (136, 94, 47, 208.55, 1);
INSERT INTO order_item VALUES (137, 95, 26, 43.77, 1);
INSERT INTO order_item VALUES (138, 95, 23, 32.41, 1);
INSERT INTO order_item VALUES (139, 96, 1, 211.33, 2);
INSERT INTO order_item VALUES (140, 97, 48, 200.01, 2);
INSERT INTO order_item VALUES (141, 98, 28, 72.43, 1);
INSERT INTO order_item VALUES (142, 99, 6, 100.23, 1);
INSERT INTO order_item VALUES (143, 99, 43, 62.19, 1);
INSERT INTO order_item VALUES (144, 99, 54, 49.55, 1);
INSERT INTO order_item VALUES (145, 100, 43, 62.19, 1);
INSERT INTO order_item VALUES (146, 101, 16, 92.89, 1);
INSERT INTO order_item VALUES (147, 101, 45, 16.16, 2);
INSERT INTO order_item VALUES (148, 102, 30, 122.1, 1);
INSERT INTO order_item VALUES (149, 102, 12, 107.43, 2);
INSERT INTO order_item VALUES (150, 103, 29, 195.96, 1);
INSERT INTO order_item VALUES (151, 103, 1, 211.33, 1);
INSERT INTO order_item VALUES (152, 104, 22, 99.77, 1);
INSERT INTO order_item VALUES (153, 104, 36, 55.52, 2);
INSERT INTO order_item VALUES (154, 105, 3, 29.42, 2);
INSERT INTO order_item VALUES (155, 106, 14, 103.95, 1);
INSERT INTO order_item VALUES (156, 107, 1, 211.33, 1);
INSERT INTO order_item VALUES (157, 107, 22, 99.77, 2);
INSERT INTO order_item VALUES (158, 107, 25, 65.38, 1);
INSERT INTO order_item VALUES (159, 108, 18, 71.82, 1);
INSERT INTO order_item VALUES (160, 108, 33, 138.53, 1);
INSERT INTO order_item VALUES (161, 109, 16, 92.89, 1);
INSERT INTO order_item VALUES (162, 110, 6, 100.23, 2);
INSERT INTO order_item VALUES (163, 110, 17, 24.61, 1);
INSERT INTO order_item VALUES (164, 111, 10, 82.92, 1);
INSERT INTO order_item VALUES (165, 112, 3, 29.42, 1);
INSERT INTO order_item VALUES (166, 112, 26, 43.77, 1);
INSERT INTO order_item VALUES (167, 113, 20, 106.49, 1);
INSERT INTO order_item VALUES (168, 113, 41, 49.65, 1);
INSERT INTO order_item VALUES (169, 113, 15, 82.17, 1);
INSERT INTO order_item VALUES (170, 114, 34, 38.65, 1);
INSERT INTO order_item VALUES (171, 115, 43, 62.19, 1);
INSERT INTO order_item VALUES (172, 116, 51, 52.03, 1);
INSERT INTO order_item VALUES (173, 116, 57, 23.38, 1);
INSERT INTO order_item VALUES (174, 116, 39, 68.01, 1);
INSERT INTO order_item VALUES (175, 117, 47, 208.55, 1);
INSERT INTO order_item VALUES (176, 118, 19, 68.32, 1);
INSERT INTO order_item VALUES (177, 119, 42, 26.63, 1);
INSERT INTO order_item VALUES (178, 120, 53, 126.88, 1);
INSERT INTO order_item VALUES (179, 120, 54, 49.55, 1);
INSERT INTO order_item VALUES (180, 121, 41, 49.65, 1);
INSERT INTO order_item VALUES (181, 122, 45, 16.16, 1);
INSERT INTO order_item VALUES (182, 122, 52, 205.0, 1);
INSERT INTO order_item VALUES (183, 123, 59, 19.1, 1);
INSERT INTO order_item VALUES (184, 124, 37, 86.47, 1);
INSERT INTO order_item VALUES (185, 124, 54, 49.55, 1);
INSERT INTO order_item VALUES (186, 125, 53, 126.88, 1);
INSERT INTO order_item VALUES (187, 126, 52, 205.0, 1);
INSERT INTO order_item VALUES (188, 126, 58, 18.16, 2);
INSERT INTO order_item VALUES (189, 127, 45, 16.16, 1);
INSERT INTO order_item VALUES (190, 128, 6, 100.23, 1);
INSERT INTO order_item VALUES (191, 129, 9, 336.27, 1);
INSERT INTO order_item VALUES (192, 130, 7, 163.58, 1);
INSERT INTO order_item VALUES (193, 130, 25, 65.38, 1);
INSERT INTO order_item VALUES (194, 131, 36, 55.52, 1);
INSERT INTO order_item VALUES (195, 132, 2, 117.82, 1);
INSERT INTO order_item VALUES (196, 133, 44, 49.06, 1);
INSERT INTO order_item VALUES (197, 134, 17, 24.61, 1);
INSERT INTO order_item VALUES (198, 135, 52, 205.0, 1);
INSERT INTO order_item VALUES (199, 135, 5, 284.51, 1);
INSERT INTO order_item VALUES (200, 136, 58, 18.16, 1);
INSERT INTO order_item VALUES (201, 136, 35, 93.66, 1);
INSERT INTO order_item VALUES (202, 137, 34, 38.65, 1);
INSERT INTO order_item VALUES (203, 137, 5, 284.51, 1);
INSERT INTO order_item VALUES (204, 138, 31, 124.96, 1);
INSERT INTO order_item VALUES (205, 139, 55, 31.87, 1);
INSERT INTO order_item VALUES (206, 139, 17, 24.61, 1);
INSERT INTO order_item VALUES (207, 140, 49, 130.5, 1);
INSERT INTO order_item VALUES (208, 141, 48, 200.01, 1);
INSERT INTO order_item VALUES (209, 142, 32, 131.22, 1);
INSERT INTO order_item VALUES (210, 142, 55, 31.87, 1);
INSERT INTO order_item VALUES (211, 143, 31, 124.96, 1);
INSERT INTO order_item VALUES (212, 143, 59, 19.1, 1);
INSERT INTO order_item VALUES (213, 144, 50, 42.26, 1);
INSERT INTO order_item VALUES (214, 144, 3, 29.42, 1);
INSERT INTO order_item VALUES (215, 145, 42, 26.63, 1);
INSERT INTO order_item VALUES (216, 145, 13, 68.53, 1);
INSERT INTO order_item VALUES (217, 146, 10, 82.92, 1);
INSERT INTO order_item VALUES (218, 147, 42, 26.63, 1);
INSERT INTO order_item VALUES (219, 147, 48, 200.01, 1);
INSERT INTO order_item VALUES (220, 147, 45, 16.16, 1);
INSERT INTO order_item VALUES (221, 148, 37, 86.47, 1);
INSERT INTO order_item VALUES (222, 149, 31, 124.96, 1);
INSERT INTO order_item VALUES (223, 149, 4, 97.15, 1);
INSERT INTO order_item VALUES (224, 150, 44, 49.06, 1);
INSERT INTO order_item VALUES (225, 151, 14, 103.95, 1);
INSERT INTO order_item VALUES (226, 151, 44, 49.06, 1);
INSERT INTO order_item VALUES (227, 151, 32, 131.22, 1);
INSERT INTO order_item VALUES (228, 152, 34, 38.65, 1);
INSERT INTO order_item VALUES (229, 152, 19, 68.32, 1);
INSERT INTO order_item VALUES (230, 153, 30, 122.1, 1);
INSERT INTO order_item VALUES (231, 154, 58, 18.16, 1);
INSERT INTO order_item VALUES (232, 155, 20, 106.49, 1);
INSERT INTO order_item VALUES (233, 156, 2, 117.82, 2);
INSERT INTO order_item VALUES (234, 157, 5, 284.51, 1);
INSERT INTO order_item VALUES (235, 158, 29, 195.96, 1);
INSERT INTO order_item VALUES (236, 159, 14, 103.95, 1);
INSERT INTO order_item VALUES (237, 160, 5, 284.51, 1);
INSERT INTO order_item VALUES (238, 160, 38, 28.37, 1);
INSERT INTO order_item VALUES (239, 161, 48, 200.01, 2);
INSERT INTO order_item VALUES (240, 162, 24, 73.45, 2);
INSERT INTO order_item VALUES (241, 163, 53, 126.88, 1);
INSERT INTO order_item VALUES (242, 163, 41, 49.65, 1);
INSERT INTO order_item VALUES (243, 164, 57, 23.38, 1);
INSERT INTO order_item VALUES (244, 164, 8, 26.4, 1);
INSERT INTO order_item VALUES (245, 165, 15, 82.17, 1);
INSERT INTO order_item VALUES (246, 165, 32, 131.22, 1);
INSERT INTO order_item VALUES (247, 166, 26, 43.77, 2);
INSERT INTO order_item VALUES (248, 167, 1, 211.33, 1);
INSERT INTO order_item VALUES (249, 167, 32, 131.22, 1);
INSERT INTO order_item VALUES (250, 167, 44, 49.06, 1);
INSERT INTO order_item VALUES (251, 168, 20, 106.49, 2);
INSERT INTO order_item VALUES (252, 169, 27, 127.04, 1);
INSERT INTO order_item VALUES (253, 170, 21, 70.16, 1);
INSERT INTO order_item VALUES (254, 171, 1, 211.33, 2);
INSERT INTO order_item VALUES (255, 172, 54, 49.55, 1);
INSERT INTO order_item VALUES (256, 172, 26, 43.77, 1);
INSERT INTO order_item VALUES (257, 173, 46, 60.39, 1);
INSERT INTO order_item VALUES (258, 174, 19, 68.32, 2);
INSERT INTO order_item VALUES (259, 175, 5, 284.51, 1);
INSERT INTO order_item VALUES (260, 175, 26, 43.77, 2);
INSERT INTO order_item VALUES (261, 176, 5, 284.51, 1);
INSERT INTO order_item VALUES (262, 177, 49, 130.5, 1);
INSERT INTO order_item VALUES (263, 178, 18, 71.82, 1);
INSERT INTO order_item VALUES (264, 178, 7, 163.58, 1);
INSERT INTO order_item VALUES (265, 179, 19, 68.32, 1);
INSERT INTO order_item VALUES (266, 179, 41, 49.65, 1);
INSERT INTO order_item VALUES (267, 179, 60, 14.47, 1);
INSERT INTO order_item VALUES (268, 180, 18, 71.82, 1);
INSERT INTO order_item VALUES (269, 180, 28, 72.43, 1);
INSERT INTO order_item VALUES (270, 181, 13, 68.53, 2);
INSERT INTO order_item VALUES (271, 182, 51, 52.03, 1);
INSERT INTO order_item VALUES (272, 183, 52, 205.0, 1);
INSERT INTO order_item VALUES (273, 183, 49, 130.5, 1);
INSERT INTO order_item VALUES (274, 184, 59, 19.1, 2);
INSERT INTO order_item VALUES (275, 185, 36, 55.52, 1);
INSERT INTO order_item VALUES (276, 185, 14, 103.95, 1);
INSERT INTO order_item VALUES (277, 186, 4, 97.15, 1);
INSERT INTO order_item VALUES (278, 187, 27, 127.04, 1);
INSERT INTO order_item VALUES (279, 188, 49, 130.5, 1);
INSERT INTO order_item VALUES (280, 188, 9, 336.27, 1);
INSERT INTO order_item VALUES (281, 188, 42, 26.63, 1);
INSERT INTO order_item VALUES (282, 189, 32, 131.22, 2);
INSERT INTO order_item VALUES (283, 190, 9, 336.27, 1);
INSERT INTO order_item VALUES (284, 191, 27, 127.04, 1);
INSERT INTO order_item VALUES (285, 192, 20, 106.49, 1);
INSERT INTO order_item VALUES (286, 193, 48, 200.01, 1);
INSERT INTO order_item VALUES (287, 194, 26, 43.77, 2);
INSERT INTO order_item VALUES (288, 194, 42, 26.63, 1);
INSERT INTO order_item VALUES (289, 195, 31, 124.96, 1);
INSERT INTO order_item VALUES (290, 196, 26, 43.77, 2);
INSERT INTO order_item VALUES (291, 197, 42, 26.63, 1);
INSERT INTO order_item VALUES (292, 197, 11, 43.1, 1);
INSERT INTO order_item VALUES (293, 198, 33, 138.53, 2);
INSERT INTO order_item VALUES (294, 198, 58, 18.16, 1);
INSERT INTO order_item VALUES (295, 199, 36, 55.52, 1);
INSERT INTO order_item VALUES (296, 200, 59, 19.1, 1);
INSERT INTO order_item VALUES (297, 201, 28, 72.43, 1);
INSERT INTO order_item VALUES (298, 202, 13, 68.53, 1);
INSERT INTO order_item VALUES (299, 202, 16, 92.89, 1);
INSERT INTO order_item VALUES (300, 202, 6, 100.23, 1);
INSERT INTO order_item VALUES (301, 203, 36, 55.52, 1);
INSERT INTO order_item VALUES (302, 204, 16, 92.89, 1);
INSERT INTO order_item VALUES (303, 204, 24, 73.45, 1);
INSERT INTO order_item VALUES (304, 204, 17, 24.61, 1);
INSERT INTO order_item VALUES (305, 205, 13, 68.53, 1);
INSERT INTO order_item VALUES (306, 205, 57, 23.38, 2);
INSERT INTO order_item VALUES (307, 206, 56, 25.32, 1);
INSERT INTO order_item VALUES (308, 207, 27, 127.04, 1);
INSERT INTO order_item VALUES (309, 208, 14, 103.95, 2);
INSERT INTO order_item VALUES (310, 208, 25, 65.38, 1);
INSERT INTO order_item VALUES (311, 209, 49, 130.5, 1);
INSERT INTO order_item VALUES (312, 209, 4, 97.15, 1);
INSERT INTO order_item VALUES (313, 210, 37, 86.47, 1);
INSERT INTO order_item VALUES (314, 211, 44, 49.06, 1);
INSERT INTO order_item VALUES (315, 212, 41, 49.65, 2);
INSERT INTO order_item VALUES (316, 212, 51, 52.03, 1);
INSERT INTO order_item VALUES (317, 213, 6, 100.23, 2);
INSERT INTO order_item VALUES (318, 214, 25, 65.38, 1);
INSERT INTO order_item VALUES (319, 214, 26, 43.77, 1);
INSERT INTO order_item VALUES (320, 214, 42, 26.63, 1);
INSERT INTO order_item VALUES (321, 215, 20, 106.49, 1);
INSERT INTO order_item VALUES (322, 215, 55, 31.87, 1);
INSERT INTO order_item VALUES (323, 215, 53, 126.88, 1);
INSERT INTO order_item VALUES (324, 216, 9, 336.27, 1);
INSERT INTO order_item VALUES (325, 217, 46, 60.39, 1);
INSERT INTO order_item VALUES (326, 218, 38, 28.37, 1);
INSERT INTO order_item VALUES (327, 218, 32, 131.22, 1);
INSERT INTO order_item VALUES (328, 218, 1, 211.33, 2);
INSERT INTO order_item VALUES (329, 219, 60, 14.47, 1);
INSERT INTO order_item VALUES (330, 219, 60, 14.47, 2);
INSERT INTO order_item VALUES (331, 220, 55, 31.87, 1);
INSERT INTO order_item VALUES (332, 221, 16, 92.89, 1);
INSERT INTO order_item VALUES (333, 222, 15, 82.17, 1);
INSERT INTO order_item VALUES (334, 223, 34, 38.65, 1);
INSERT INTO order_item VALUES (335, 224, 53, 126.88, 1);
INSERT INTO order_item VALUES (336, 225, 42, 26.63, 1);
INSERT INTO order_item VALUES (337, 226, 6, 100.23, 1);
INSERT INTO order_item VALUES (338, 227, 1, 211.33, 1);
INSERT INTO order_item VALUES (339, 228, 15, 82.17, 2);
INSERT INTO order_item VALUES (340, 229, 42, 26.63, 1);
INSERT INTO order_item VALUES (341, 230, 9, 336.27, 1);
INSERT INTO order_item VALUES (342, 231, 34, 38.65, 2);
INSERT INTO order_item VALUES (343, 231, 41, 49.65, 1);
INSERT INTO order_item VALUES (344, 232, 49, 130.5, 1);
INSERT INTO order_item VALUES (345, 232, 8, 26.4, 1);
INSERT INTO order_item VALUES (346, 233, 20, 106.49, 1);
INSERT INTO order_item VALUES (347, 233, 34, 38.65, 2);
INSERT INTO order_item VALUES (348, 234, 25, 65.38, 1);
INSERT INTO order_item VALUES (349, 235, 51, 52.03, 1);
INSERT INTO order_item VALUES (350, 235, 39, 68.01, 2);
INSERT INTO order_item VALUES (351, 235, 1, 211.33, 1);
INSERT INTO order_item VALUES (352, 236, 20, 106.49, 1);
INSERT INTO order_item VALUES (353, 237, 21, 70.16, 1);
INSERT INTO order_item VALUES (354, 238, 31, 124.96, 2);
INSERT INTO order_item VALUES (355, 238, 34, 38.65, 1);
INSERT INTO order_item VALUES (356, 239, 16, 92.89, 1);
INSERT INTO order_item VALUES (357, 240, 46, 60.39, 2);
INSERT INTO order_item VALUES (358, 240, 42, 26.63, 1);
INSERT INTO order_item VALUES (359, 241, 2, 117.82, 2);
INSERT INTO order_item VALUES (360, 241, 13, 68.53, 1);
INSERT INTO order_item VALUES (361, 241, 32, 131.22, 2);
INSERT INTO order_item VALUES (362, 242, 42, 26.63, 1);
INSERT INTO order_item VALUES (363, 243, 17, 24.61, 1);
INSERT INTO order_item VALUES (364, 244, 28, 72.43, 1);
INSERT INTO order_item VALUES (365, 245, 15, 82.17, 1);
INSERT INTO order_item VALUES (366, 246, 45, 16.16, 1);
INSERT INTO order_item VALUES (367, 247, 27, 127.04, 1);
INSERT INTO order_item VALUES (368, 248, 26, 43.77, 1);
INSERT INTO order_item VALUES (369, 249, 52, 205.0, 1);
INSERT INTO order_item VALUES (370, 250, 55, 31.87, 1);
INSERT INTO order_item VALUES (371, 250, 33, 138.53, 1);
INSERT INTO order_item VALUES (372, 251, 32, 131.22, 1);
INSERT INTO order_item VALUES (373, 251, 13, 68.53, 1);
INSERT INTO order_item VALUES (374, 252, 15, 82.17, 1);
INSERT INTO order_item VALUES (375, 253, 17, 24.61, 1);
INSERT INTO order_item VALUES (376, 254, 7, 163.58, 1);
INSERT INTO order_item VALUES (377, 254, 40, 21.33, 1);
INSERT INTO order_item VALUES (378, 255, 12, 107.43, 2);
INSERT INTO order_item VALUES (379, 256, 32, 131.22, 1);
INSERT INTO order_item VALUES (380, 257, 4, 97.15, 1);
INSERT INTO order_item VALUES (381, 257, 39, 68.01, 1);
INSERT INTO order_item VALUES (382, 257, 10, 82.92, 2);
INSERT INTO order_item VALUES (383, 258, 4, 97.15, 1);
INSERT INTO order_item VALUES (384, 258, 14, 103.95, 1);
INSERT INTO order_item VALUES (385, 258, 2, 117.82, 1);
INSERT INTO order_item VALUES (386, 259, 27, 127.04, 1);
INSERT INTO order_item VALUES (387, 260, 4, 97.15, 1);
INSERT INTO order_item VALUES (388, 261, 29, 195.96, 1);
INSERT INTO order_item VALUES (389, 262, 57, 23.38, 1);
INSERT INTO order_item VALUES (390, 263, 8, 26.4, 1);
INSERT INTO order_item VALUES (391, 263, 6, 100.23, 1);
INSERT INTO order_item VALUES (392, 263, 60, 14.47, 1);
INSERT INTO order_item VALUES (393, 264, 13, 68.53, 1);
INSERT INTO order_item VALUES (394, 265, 60, 14.47, 1);
INSERT INTO order_item VALUES (395, 265, 34, 38.65, 1);
INSERT INTO order_item VALUES (396, 266, 3, 29.42, 1);
INSERT INTO order_item VALUES (397, 267, 47, 208.55, 1);
INSERT INTO order_item VALUES (398, 268, 22, 99.77, 1);
INSERT INTO order_item VALUES (399, 268, 29, 195.96, 1);
INSERT INTO order_item VALUES (400, 269, 1, 211.33, 1);
INSERT INTO order_item VALUES (401, 270, 6, 100.23, 1);
INSERT INTO order_item VALUES (402, 271, 57, 23.38, 1);
INSERT INTO order_item VALUES (403, 272, 49, 130.5, 1);
INSERT INTO order_item VALUES (404, 273, 23, 32.41, 2);
INSERT INTO order_item VALUES (405, 273, 50, 42.26, 1);
INSERT INTO order_item VALUES (406, 273, 53, 126.88, 1);
INSERT INTO order_item VALUES (407, 274, 6, 100.23, 2);
INSERT INTO order_item VALUES (408, 275, 31, 124.96, 1);
INSERT INTO order_item VALUES (409, 276, 35, 93.66, 1);
INSERT INTO order_item VALUES (410, 276, 59, 19.1, 1);
INSERT INTO order_item VALUES (411, 277, 21, 70.16, 2);
INSERT INTO order_item VALUES (412, 278, 58, 18.16, 1);
INSERT INTO order_item VALUES (413, 278, 31, 124.96, 2);
INSERT INTO order_item VALUES (414, 278, 2, 117.82, 1);
INSERT INTO order_item VALUES (415, 279, 16, 92.89, 1);
INSERT INTO order_item VALUES (416, 280, 50, 42.26, 1);
INSERT INTO order_item VALUES (417, 281, 25, 65.38, 2);
INSERT INTO order_item VALUES (418, 282, 5, 284.51, 1);
INSERT INTO order_item VALUES (419, 282, 52, 205.0, 1);
INSERT INTO order_item VALUES (420, 283, 17, 24.61, 1);
INSERT INTO order_item VALUES (421, 284, 5, 284.51, 2);
INSERT INTO order_item VALUES (422, 285, 22, 99.77, 1);
INSERT INTO order_item VALUES (423, 286, 22, 99.77, 1);
INSERT INTO order_item VALUES (424, 287, 17, 24.61, 1);
INSERT INTO order_item VALUES (425, 287, 48, 200.01, 1);
INSERT INTO order_item VALUES (426, 287, 46, 60.39, 1);
INSERT INTO order_item VALUES (427, 288, 60, 14.47, 1);
INSERT INTO order_item VALUES (428, 288, 18, 71.82, 1);
INSERT INTO order_item VALUES (429, 289, 47, 208.55, 2);
INSERT INTO order_item VALUES (430, 290, 59, 19.1, 1);
INSERT INTO order_item VALUES (431, 291, 5, 284.51, 2);
INSERT INTO order_item VALUES (432, 292, 7, 163.58, 1);
INSERT INTO order_item VALUES (433, 293, 30, 122.1, 1);
INSERT INTO order_item VALUES (434, 293, 50, 42.26, 1);
INSERT INTO order_item VALUES (435, 294, 59, 19.1, 1);
INSERT INTO order_item VALUES (436, 295, 9, 336.27, 1);
INSERT INTO order_item VALUES (437, 296, 12, 107.43, 1);
INSERT INTO order_item VALUES (438, 296, 1, 211.33, 2);
INSERT INTO order_item VALUES (439, 297, 20, 106.49, 1);
INSERT INTO order_item VALUES (440, 298, 50, 42.26, 1);
INSERT INTO order_item VALUES (441, 298, 10, 82.92, 2);
INSERT INTO order_item VALUES (442, 299, 21, 70.16, 1);
INSERT INTO order_item VALUES (443, 299, 56, 25.32, 1);
INSERT INTO order_item VALUES (444, 300, 24, 73.45, 1);
INSERT INTO order_item VALUES (445, 300, 51, 52.03, 2);
INSERT INTO order_item VALUES (446, 300, 51, 52.03, 1);
INSERT INTO order_item VALUES (447, 301, 33, 138.53, 1);
INSERT INTO order_item VALUES (448, 302, 49, 130.5, 1);
INSERT INTO order_item VALUES (449, 303, 27, 127.04, 2);
INSERT INTO order_item VALUES (450, 303, 5, 284.51, 2);
INSERT INTO order_item VALUES (451, 304, 31, 124.96, 2);
INSERT INTO order_item VALUES (452, 304, 36, 55.52, 1);
INSERT INTO order_item VALUES (453, 305, 11, 43.1, 2);
INSERT INTO order_item VALUES (454, 306, 5, 284.51, 1);
INSERT INTO order_item VALUES (455, 306, 17, 24.61, 1);
INSERT INTO order_item VALUES (456, 307, 14, 103.95, 1);
INSERT INTO order_item VALUES (457, 308, 32, 131.22, 1);
INSERT INTO order_item VALUES (458, 309, 12, 107.43, 1);
INSERT INTO order_item VALUES (459, 309, 15, 82.17, 1);
INSERT INTO order_item VALUES (460, 309, 9, 336.27, 1);
INSERT INTO order_item VALUES (461, 310, 40, 21.33, 1);
INSERT INTO order_item VALUES (462, 311, 16, 92.89, 1);
INSERT INTO order_item VALUES (463, 312, 55, 31.87, 1);
INSERT INTO order_item VALUES (464, 313, 49, 130.5, 1);
INSERT INTO order_item VALUES (465, 314, 19, 68.32, 1);
INSERT INTO order_item VALUES (466, 314, 18, 71.82, 1);
INSERT INTO order_item VALUES (467, 314, 37, 86.47, 1);
INSERT INTO order_item VALUES (468, 315, 17, 24.61, 1);
INSERT INTO order_item VALUES (469, 316, 13, 68.53, 1);
INSERT INTO order_item VALUES (470, 316, 29, 195.96, 1);
INSERT INTO order_item VALUES (471, 317, 16, 92.89, 1);
INSERT INTO order_item VALUES (472, 317, 16, 92.89, 1);
INSERT INTO order_item VALUES (473, 317, 10, 82.92, 2);
INSERT INTO order_item VALUES (474, 318, 13, 68.53, 1);
INSERT INTO order_item VALUES (475, 319, 26, 43.77, 1);
INSERT INTO order_item VALUES (476, 320, 33, 138.53, 1);
INSERT INTO order_item VALUES (477, 321, 42, 26.63, 2);
INSERT INTO order_item VALUES (478, 321, 52, 205.0, 1);
INSERT INTO order_item VALUES (479, 322, 30, 122.1, 1);
INSERT INTO order_item VALUES (480, 323, 1, 211.33, 2);
INSERT INTO order_item VALUES (481, 324, 54, 49.55, 1);
INSERT INTO order_item VALUES (482, 325, 3, 29.42, 1);
INSERT INTO order_item VALUES (483, 326, 15, 82.17, 1);
INSERT INTO order_item VALUES (484, 326, 8, 26.4, 2);
INSERT INTO order_item VALUES (485, 327, 39, 68.01, 1);
INSERT INTO order_item VALUES (486, 328, 13, 68.53, 1);
INSERT INTO order_item VALUES (487, 328, 60, 14.47, 1);
INSERT INTO order_item VALUES (488, 329, 33, 138.53, 2);
INSERT INTO order_item VALUES (489, 330, 29, 195.96, 1);
INSERT INTO order_item VALUES (490, 331, 50, 42.26, 1);
INSERT INTO order_item VALUES (491, 331, 50, 42.26, 1);
INSERT INTO order_item VALUES (492, 331, 43, 62.19, 1);
INSERT INTO order_item VALUES (493, 332, 41, 49.65, 2);
INSERT INTO order_item VALUES (494, 332, 39, 68.01, 1);
INSERT INTO order_item VALUES (495, 332, 46, 60.39, 2);
INSERT INTO order_item VALUES (496, 333, 14, 103.95, 1);
INSERT INTO order_item VALUES (497, 334, 22, 99.77, 1);
INSERT INTO order_item VALUES (498, 335, 14, 103.95, 1);
INSERT INTO order_item VALUES (499, 336, 39, 68.01, 2);
INSERT INTO order_item VALUES (500, 336, 47, 208.55, 2);
INSERT INTO order_item VALUES (501, 337, 53, 126.88, 1);
INSERT INTO order_item VALUES (502, 338, 27, 127.04, 2);
INSERT INTO order_item VALUES (503, 339, 12, 107.43, 1);
INSERT INTO order_item VALUES (504, 339, 40, 21.33, 1);
INSERT INTO order_item VALUES (505, 340, 14, 103.95, 1);
INSERT INTO order_item VALUES (506, 340, 3, 29.42, 2);
INSERT INTO order_item VALUES (507, 341, 36, 55.52, 1);
INSERT INTO order_item VALUES (508, 342, 27, 127.04, 1);
INSERT INTO order_item VALUES (509, 343, 43, 62.19, 1);
INSERT INTO order_item VALUES (510, 344, 41, 49.65, 2);
INSERT INTO order_item VALUES (511, 344, 35, 93.66, 1);
INSERT INTO order_item VALUES (512, 345, 11, 43.1, 1);
INSERT INTO order_item VALUES (513, 345, 26, 43.77, 1);
INSERT INTO order_item VALUES (514, 345, 45, 16.16, 1);
INSERT INTO order_item VALUES (515, 346, 19, 68.32, 1);
INSERT INTO order_item VALUES (516, 346, 43, 62.19, 2);
INSERT INTO order_item VALUES (517, 347, 4, 97.15, 1);
INSERT INTO order_item VALUES (518, 347, 20, 106.49, 1);
INSERT INTO order_item VALUES (519, 348, 57, 23.38, 1);
INSERT INTO order_item VALUES (520, 349, 27, 127.04, 1);
INSERT INTO order_item VALUES (521, 350, 42, 26.63, 1);
INSERT INTO order_item VALUES (522, 350, 13, 68.53, 1);
INSERT INTO order_item VALUES (523, 350, 26, 43.77, 1);
INSERT INTO order_item VALUES (524, 351, 14, 103.95, 1);
INSERT INTO order_item VALUES (525, 352, 58, 18.16, 1);
INSERT INTO order_item VALUES (526, 352, 11, 43.1, 1);
INSERT INTO order_item VALUES (527, 353, 53, 126.88, 2);
INSERT INTO order_item VALUES (528, 354, 37, 86.47, 1);
INSERT INTO order_item VALUES (529, 355, 30, 122.1, 1);
INSERT INTO order_item VALUES (530, 356, 9, 336.27, 2);
INSERT INTO order_item VALUES (531, 357, 36, 55.52, 1);
INSERT INTO order_item VALUES (532, 358, 52, 205.0, 1);
INSERT INTO order_item VALUES (533, 358, 59, 19.1, 1);
INSERT INTO order_item VALUES (534, 359, 37, 86.47, 2);
INSERT INTO order_item VALUES (535, 360, 48, 200.01, 1);
INSERT INTO order_item VALUES (536, 361, 10, 82.92, 2);
INSERT INTO order_item VALUES (537, 362, 11, 43.1, 1);
INSERT INTO order_item VALUES (538, 362, 34, 38.65, 1);
INSERT INTO order_item VALUES (539, 363, 7, 163.58, 2);
INSERT INTO order_item VALUES (540, 364, 49, 130.5, 1);
INSERT INTO order_item VALUES (541, 364, 52, 205.0, 1);
INSERT INTO order_item VALUES (542, 365, 20, 106.49, 1);
INSERT INTO order_item VALUES (543, 366, 59, 19.1, 1);
INSERT INTO order_item VALUES (544, 367, 4, 97.15, 2);
INSERT INTO order_item VALUES (545, 367, 39, 68.01, 2);
INSERT INTO order_item VALUES (546, 368, 25, 65.38, 1);
INSERT INTO order_item VALUES (547, 369, 40, 21.33, 1);
INSERT INTO order_item VALUES (548, 369, 45, 16.16, 1);
INSERT INTO order_item VALUES (549, 369, 53, 126.88, 2);
INSERT INTO order_item VALUES (550, 370, 41, 49.65, 1);
INSERT INTO order_item VALUES (551, 371, 40, 21.33, 2);
INSERT INTO order_item VALUES (552, 372, 55, 31.87, 1);
INSERT INTO order_item VALUES (553, 373, 12, 107.43, 1);
INSERT INTO order_item VALUES (554, 373, 37, 86.47, 2);
INSERT INTO order_item VALUES (555, 374, 26, 43.77, 2);
INSERT INTO order_item VALUES (556, 374, 34, 38.65, 1);
INSERT INTO order_item VALUES (557, 375, 23, 32.41, 2);
INSERT INTO order_item VALUES (558, 376, 16, 92.89, 1);
INSERT INTO order_item VALUES (559, 376, 47, 208.55, 1);
INSERT INTO order_item VALUES (560, 377, 3, 29.42, 1);
INSERT INTO order_item VALUES (561, 377, 57, 23.38, 2);
INSERT INTO order_item VALUES (562, 377, 36, 55.52, 2);
INSERT INTO order_item VALUES (563, 378, 3, 29.42, 1);
INSERT INTO order_item VALUES (564, 379, 8, 26.4, 1);
INSERT INTO order_item VALUES (565, 380, 30, 122.1, 1);
INSERT INTO order_item VALUES (566, 380, 36, 55.52, 1);
INSERT INTO order_item VALUES (567, 380, 55, 31.87, 2);
INSERT INTO order_item VALUES (568, 381, 42, 26.63, 2);
INSERT INTO order_item VALUES (569, 381, 27, 127.04, 1);
INSERT INTO order_item VALUES (570, 381, 20, 106.49, 1);
INSERT INTO order_item VALUES (571, 382, 28, 72.43, 2);
INSERT INTO order_item VALUES (572, 383, 24, 73.45, 2);
INSERT INTO order_item VALUES (573, 384, 29, 195.96, 1);
INSERT INTO order_item VALUES (574, 385, 1, 211.33, 1);
INSERT INTO order_item VALUES (575, 386, 30, 122.1, 1);
INSERT INTO order_item VALUES (576, 387, 49, 130.5, 1);
INSERT INTO order_item VALUES (577, 387, 40, 21.33, 1);
INSERT INTO order_item VALUES (578, 388, 54, 49.55, 1);
INSERT INTO order_item VALUES (579, 389, 26, 43.77, 1);
INSERT INTO order_item VALUES (580, 390, 9, 336.27, 2);
INSERT INTO order_item VALUES (581, 391, 24, 73.45, 1);
INSERT INTO order_item VALUES (582, 392, 33, 138.53, 2);
INSERT INTO order_item VALUES (583, 392, 33, 138.53, 1);
INSERT INTO order_item VALUES (584, 393, 3, 29.42, 1);
INSERT INTO order_item VALUES (585, 394, 6, 100.23, 1);
INSERT INTO order_item VALUES (586, 394, 60, 14.47, 1);
INSERT INTO order_item VALUES (587, 394, 47, 208.55, 1);
INSERT INTO order_item VALUES (588, 395, 33, 138.53, 1);
INSERT INTO order_item VALUES (589, 396, 49, 130.5, 1);
INSERT INTO order_item VALUES (590, 396, 33, 138.53, 1);
INSERT INTO order_item VALUES (591, 396, 58, 18.16, 1);
INSERT INTO order_item VALUES (592, 397, 51, 52.03, 1);
INSERT INTO order_item VALUES (593, 398, 55, 31.87, 1);
INSERT INTO order_item VALUES (594, 399, 47, 208.55, 1);
INSERT INTO order_item VALUES (595, 400, 13, 68.53, 2);
INSERT INTO order_item VALUES (596, 401, 19, 68.32, 1);
INSERT INTO order_item VALUES (597, 402, 44, 49.06, 1);
INSERT INTO order_item VALUES (598, 402, 51, 52.03, 1);
INSERT INTO order_item VALUES (599, 402, 47, 208.55, 1);
INSERT INTO order_item VALUES (600, 403, 5, 284.51, 1);
INSERT INTO order_item VALUES (601, 403, 54, 49.55, 2);
INSERT INTO order_item VALUES (602, 403, 23, 32.41, 1);
INSERT INTO order_item VALUES (603, 404, 11, 43.1, 1);
INSERT INTO order_item VALUES (604, 404, 21, 70.16, 2);
INSERT INTO order_item VALUES (605, 405, 18, 71.82, 1);
INSERT INTO order_item VALUES (606, 405, 58, 18.16, 1);
INSERT INTO order_item VALUES (607, 406, 10, 82.92, 1);
INSERT INTO order_item VALUES (608, 406, 17, 24.61, 1);
INSERT INTO order_item VALUES (609, 407, 14, 103.95, 1);
INSERT INTO order_item VALUES (610, 407, 38, 28.37, 1);
INSERT INTO order_item VALUES (611, 408, 33, 138.53, 1);
INSERT INTO order_item VALUES (612, 408, 16, 92.89, 1);
INSERT INTO order_item VALUES (613, 409, 3, 29.42, 1);
INSERT INTO order_item VALUES (614, 409, 13, 68.53, 1);
INSERT INTO order_item VALUES (615, 410, 11, 43.1, 1);
INSERT INTO order_item VALUES (616, 410, 41, 49.65, 1);
INSERT INTO order_item VALUES (617, 411, 44, 49.06, 1);
INSERT INTO order_item VALUES (618, 412, 11, 43.1, 2);
INSERT INTO order_item VALUES (619, 412, 51, 52.03, 2);
INSERT INTO order_item VALUES (620, 413, 8, 26.4, 1);
INSERT INTO order_item VALUES (621, 413, 50, 42.26, 1);
INSERT INTO order_item VALUES (622, 414, 41, 49.65, 1);
INSERT INTO order_item VALUES (623, 415, 56, 25.32, 1);
INSERT INTO order_item VALUES (624, 416, 34, 38.65, 1);
INSERT INTO order_item VALUES (625, 416, 38, 28.37, 1);
INSERT INTO order_item VALUES (626, 417, 17, 24.61, 1);
INSERT INTO order_item VALUES (627, 418, 55, 31.87, 1);
INSERT INTO order_item VALUES (628, 419, 52, 205.0, 1);
INSERT INTO order_item VALUES (629, 420, 25, 65.38, 1);
INSERT INTO order_item VALUES (630, 421, 10, 82.92, 1);
INSERT INTO order_item VALUES (631, 421, 24, 73.45, 1);
INSERT INTO order_item VALUES (632, 422, 29, 195.96, 1);
INSERT INTO order_item VALUES (633, 422, 15, 82.17, 2);
INSERT INTO order_item VALUES (634, 423, 48, 200.01, 1);
INSERT INTO order_item VALUES (635, 424, 53, 126.88, 1);
INSERT INTO order_item VALUES (636, 425, 20, 106.49, 2);
INSERT INTO order_item VALUES (637, 425, 41, 49.65, 1);
INSERT INTO order_item VALUES (638, 426, 60, 14.47, 1);
INSERT INTO order_item VALUES (639, 426, 43, 62.19, 1);
INSERT INTO order_item VALUES (640, 427, 47, 208.55, 2);
INSERT INTO order_item VALUES (641, 428, 3, 29.42, 1);
INSERT INTO order_item VALUES (642, 428, 15, 82.17, 1);
INSERT INTO order_item VALUES (643, 429, 40, 21.33, 1);
INSERT INTO order_item VALUES (644, 429, 41, 49.65, 2);
INSERT INTO order_item VALUES (645, 429, 28, 72.43, 2);
INSERT INTO order_item VALUES (646, 430, 24, 73.45, 1);
INSERT INTO order_item VALUES (647, 430, 58, 18.16, 1);
INSERT INTO order_item VALUES (648, 431, 32, 131.22, 2);
INSERT INTO order_item VALUES (649, 431, 15, 82.17, 1);
INSERT INTO order_item VALUES (650, 432, 3, 29.42, 1);
INSERT INTO order_item VALUES (651, 433, 1, 211.33, 1);
INSERT INTO order_item VALUES (652, 434, 20, 106.49, 1);
INSERT INTO order_item VALUES (653, 435, 23, 32.41, 1);
INSERT INTO order_item VALUES (654, 436, 27, 127.04, 1);
INSERT INTO order_item VALUES (655, 437, 38, 28.37, 1);
INSERT INTO order_item VALUES (656, 438, 24, 73.45, 2);
INSERT INTO order_item VALUES (657, 439, 11, 43.1, 2);
INSERT INTO order_item VALUES (658, 439, 9, 336.27, 1);
INSERT INTO order_item VALUES (659, 439, 1, 211.33, 1);
INSERT INTO order_item VALUES (660, 440, 46, 60.39, 1);
INSERT INTO order_item VALUES (661, 440, 10, 82.92, 1);
INSERT INTO order_item VALUES (662, 441, 5, 284.51, 1);
INSERT INTO order_item VALUES (663, 441, 41, 49.65, 1);
INSERT INTO order_item VALUES (664, 442, 51, 52.03, 1);
INSERT INTO order_item VALUES (665, 443, 52, 205.0, 1);
INSERT INTO order_item VALUES (666, 444, 4, 97.15, 1);
INSERT INTO order_item VALUES (667, 445, 58, 18.16, 1);
INSERT INTO order_item VALUES (668, 445, 23, 32.41, 2);
INSERT INTO order_item VALUES (669, 446, 38, 28.37, 1);
INSERT INTO order_item VALUES (670, 447, 60, 14.47, 2);
INSERT INTO order_item VALUES (671, 448, 32, 131.22, 1);
INSERT INTO order_item VALUES (672, 449, 58, 18.16, 1);
INSERT INTO order_item VALUES (673, 450, 4, 97.15, 1);
INSERT INTO order_item VALUES (674, 451, 26, 43.77, 1);
INSERT INTO order_item VALUES (675, 452, 11, 43.1, 2);
INSERT INTO order_item VALUES (676, 453, 1, 211.33, 2);
INSERT INTO order_item VALUES (677, 454, 43, 62.19, 2);
INSERT INTO order_item VALUES (678, 455, 27, 127.04, 1);
INSERT INTO order_item VALUES (679, 455, 13, 68.53, 1);
INSERT INTO order_item VALUES (680, 456, 42, 26.63, 1);
INSERT INTO order_item VALUES (681, 457, 42, 26.63, 2);
INSERT INTO order_item VALUES (682, 458, 12, 107.43, 2);
INSERT INTO order_item VALUES (683, 459, 5, 284.51, 1);
INSERT INTO order_item VALUES (684, 460, 4, 97.15, 1);
INSERT INTO order_item VALUES (685, 461, 51, 52.03, 1);
INSERT INTO order_item VALUES (686, 462, 35, 93.66, 1);
INSERT INTO order_item VALUES (687, 463, 55, 31.87, 1);
INSERT INTO order_item VALUES (688, 464, 59, 19.1, 1);
INSERT INTO order_item VALUES (689, 465, 48, 200.01, 1);
INSERT INTO order_item VALUES (690, 466, 12, 107.43, 2);
INSERT INTO order_item VALUES (691, 466, 15, 82.17, 1);
INSERT INTO order_item VALUES (692, 467, 15, 82.17, 1);
INSERT INTO order_item VALUES (693, 468, 8, 26.4, 1);
INSERT INTO order_item VALUES (694, 469, 60, 14.47, 1);
INSERT INTO order_item VALUES (695, 469, 45, 16.16, 2);
INSERT INTO order_item VALUES (696, 469, 55, 31.87, 1);
INSERT INTO order_item VALUES (697, 470, 4, 97.15, 1);
INSERT INTO order_item VALUES (698, 471, 36, 55.52, 1);
INSERT INTO order_item VALUES (699, 472, 44, 49.06, 1);
INSERT INTO order_item VALUES (700, 472, 51, 52.03, 1);
INSERT INTO order_item VALUES (701, 473, 17, 24.61, 1);
INSERT INTO order_item VALUES (702, 473, 19, 68.32, 1);
INSERT INTO order_item VALUES (703, 474, 6, 100.23, 1);
INSERT INTO order_item VALUES (704, 475, 1, 211.33, 1);
INSERT INTO order_item VALUES (705, 476, 58, 18.16, 1);
INSERT INTO order_item VALUES (706, 476, 16, 92.89, 1);
INSERT INTO order_item VALUES (707, 476, 54, 49.55, 1);
INSERT INTO order_item VALUES (708, 477, 11, 43.1, 1);
INSERT INTO order_item VALUES (709, 477, 48, 200.01, 1);
INSERT INTO order_item VALUES (710, 477, 59, 19.1, 1);
INSERT INTO order_item VALUES (711, 478, 57, 23.38, 2);
INSERT INTO order_item VALUES (712, 478, 25, 65.38, 1);
INSERT INTO order_item VALUES (713, 479, 16, 92.89, 1);
INSERT INTO order_item VALUES (714, 480, 59, 19.1, 1);
INSERT INTO order_item VALUES (715, 480, 45, 16.16, 2);
INSERT INTO order_item VALUES (716, 481, 31, 124.96, 1);
INSERT INTO order_item VALUES (717, 482, 45, 16.16, 1);
INSERT INTO order_item VALUES (718, 482, 1, 211.33, 1);
INSERT INTO order_item VALUES (719, 483, 28, 72.43, 1);
INSERT INTO order_item VALUES (720, 483, 47, 208.55, 1);
INSERT INTO order_item VALUES (721, 484, 57, 23.38, 1);
INSERT INTO order_item VALUES (722, 484, 20, 106.49, 1);
INSERT INTO order_item VALUES (723, 484, 51, 52.03, 1);
INSERT INTO order_item VALUES (724, 485, 40, 21.33, 1);
INSERT INTO order_item VALUES (725, 486, 37, 86.47, 1);
INSERT INTO order_item VALUES (726, 487, 10, 82.92, 1);
INSERT INTO order_item VALUES (727, 488, 8, 26.4, 1);
INSERT INTO order_item VALUES (728, 488, 7, 163.58, 1);
INSERT INTO order_item VALUES (729, 489, 23, 32.41, 1);
INSERT INTO order_item VALUES (730, 490, 2, 117.82, 1);
INSERT INTO order_item VALUES (731, 491, 9, 336.27, 2);
INSERT INTO order_item VALUES (732, 491, 45, 16.16, 1);
INSERT INTO order_item VALUES (733, 492, 3, 29.42, 2);
INSERT INTO order_item VALUES (734, 493, 48, 200.01, 2);
INSERT INTO order_item VALUES (735, 493, 3, 29.42, 1);
INSERT INTO order_item VALUES (736, 494, 49, 130.5, 1);
INSERT INTO order_item VALUES (737, 494, 24, 73.45, 2);
INSERT INTO order_item VALUES (738, 495, 58, 18.16, 1);
INSERT INTO order_item VALUES (739, 496, 57, 23.38, 1);
INSERT INTO order_item VALUES (740, 497, 25, 65.38, 1);
INSERT INTO order_item VALUES (741, 498, 14, 103.95, 1);
INSERT INTO order_item VALUES (742, 499, 3, 29.42, 2);
INSERT INTO order_item VALUES (743, 499, 3, 29.42, 1);
INSERT INTO order_item VALUES (744, 499, 55, 31.87, 1);
INSERT INTO order_item VALUES (745, 500, 6, 100.23, 1);
INSERT INTO order_item VALUES (746, 501, 41, 49.65, 1);
INSERT INTO order_item VALUES (747, 501, 19, 68.32, 1);
INSERT INTO order_item VALUES (748, 502, 9, 336.27, 1);
INSERT INTO order_item VALUES (749, 503, 14, 103.95, 1);
INSERT INTO order_item VALUES (750, 504, 22, 99.77, 2);
INSERT INTO order_item VALUES (751, 504, 28, 72.43, 1);
INSERT INTO order_item VALUES (752, 505, 23, 32.41, 2);
INSERT INTO order_item VALUES (753, 506, 4, 97.15, 1);
INSERT INTO order_item VALUES (754, 506, 46, 60.39, 1);
INSERT INTO order_item VALUES (755, 507, 59, 19.1, 1);
INSERT INTO order_item VALUES (756, 508, 33, 138.53, 1);
INSERT INTO order_item VALUES (757, 509, 40, 21.33, 1);
INSERT INTO order_item VALUES (758, 510, 51, 52.03, 1);
INSERT INTO order_item VALUES (759, 511, 28, 72.43, 1);
INSERT INTO order_item VALUES (760, 512, 23, 32.41, 1);
INSERT INTO order_item VALUES (761, 512, 31, 124.96, 1);
INSERT INTO order_item VALUES (762, 513, 35, 93.66, 2);
INSERT INTO order_item VALUES (763, 513, 37, 86.47, 2);
INSERT INTO order_item VALUES (764, 514, 56, 25.32, 1);
INSERT INTO order_item VALUES (765, 514, 53, 126.88, 1);
INSERT INTO order_item VALUES (766, 515, 53, 126.88, 1);
INSERT INTO order_item VALUES (767, 516, 28, 72.43, 1);
INSERT INTO order_item VALUES (768, 517, 13, 68.53, 1);
INSERT INTO order_item VALUES (769, 517, 19, 68.32, 1);
INSERT INTO order_item VALUES (770, 518, 1, 211.33, 1);
INSERT INTO order_item VALUES (771, 519, 7, 163.58, 1);
INSERT INTO order_item VALUES (772, 520, 51, 52.03, 1);
INSERT INTO order_item VALUES (773, 521, 32, 131.22, 1);
INSERT INTO order_item VALUES (774, 522, 54, 49.55, 1);
INSERT INTO order_item VALUES (775, 522, 33, 138.53, 1);
INSERT INTO order_item VALUES (776, 523, 11, 43.1, 1);
INSERT INTO order_item VALUES (777, 523, 19, 68.32, 1);
INSERT INTO order_item VALUES (778, 524, 45, 16.16, 2);
INSERT INTO order_item VALUES (779, 525, 11, 43.1, 1);
INSERT INTO order_item VALUES (780, 526, 50, 42.26, 1);
INSERT INTO order_item VALUES (781, 527, 51, 52.03, 1);
INSERT INTO order_item VALUES (782, 528, 51, 52.03, 1);
INSERT INTO order_item VALUES (783, 528, 7, 163.58, 1);
INSERT INTO order_item VALUES (784, 529, 23, 32.41, 1);
INSERT INTO order_item VALUES (785, 530, 60, 14.47, 1);
INSERT INTO order_item VALUES (786, 530, 26, 43.77, 1);
INSERT INTO order_item VALUES (787, 530, 58, 18.16, 1);
INSERT INTO order_item VALUES (788, 531, 6, 100.23, 2);
INSERT INTO order_item VALUES (789, 531, 28, 72.43, 1);
INSERT INTO order_item VALUES (790, 531, 57, 23.38, 1);
INSERT INTO order_item VALUES (791, 532, 24, 73.45, 1);
INSERT INTO order_item VALUES (792, 533, 17, 24.61, 1);
INSERT INTO order_item VALUES (793, 533, 28, 72.43, 1);
INSERT INTO order_item VALUES (794, 534, 33, 138.53, 1);
INSERT INTO order_item VALUES (795, 535, 57, 23.38, 1);
INSERT INTO order_item VALUES (796, 535, 41, 49.65, 1);
INSERT INTO order_item VALUES (797, 536, 9, 336.27, 1);
INSERT INTO order_item VALUES (798, 536, 35, 93.66, 1);
INSERT INTO order_item VALUES (799, 537, 49, 130.5, 1);
INSERT INTO order_item VALUES (800, 537, 39, 68.01, 1);
INSERT INTO order_item VALUES (801, 537, 42, 26.63, 1);
INSERT INTO order_item VALUES (802, 538, 38, 28.37, 1);
INSERT INTO order_item VALUES (803, 538, 21, 70.16, 2);
INSERT INTO order_item VALUES (804, 539, 56, 25.32, 1);
INSERT INTO order_item VALUES (805, 539, 54, 49.55, 2);
INSERT INTO order_item VALUES (806, 540, 36, 55.52, 1);
INSERT INTO order_item VALUES (807, 541, 11, 43.1, 1);
INSERT INTO order_item VALUES (808, 542, 45, 16.16, 1);
INSERT INTO order_item VALUES (809, 543, 38, 28.37, 1);
INSERT INTO order_item VALUES (810, 543, 15, 82.17, 1);
INSERT INTO order_item VALUES (811, 544, 30, 122.1, 1);
INSERT INTO order_item VALUES (812, 545, 16, 92.89, 1);
INSERT INTO order_item VALUES (813, 546, 18, 71.82, 1);
INSERT INTO order_item VALUES (814, 547, 53, 126.88, 1);
INSERT INTO order_item VALUES (815, 548, 10, 82.92, 1);
INSERT INTO order_item VALUES (816, 549, 16, 92.89, 1);
INSERT INTO order_item VALUES (817, 550, 39, 68.01, 2);
INSERT INTO order_item VALUES (818, 550, 34, 38.65, 2);
INSERT INTO order_item VALUES (819, 551, 16, 92.89, 1);
INSERT INTO order_item VALUES (820, 552, 17, 24.61, 2);
INSERT INTO order_item VALUES (821, 553, 11, 43.1, 1);
INSERT INTO order_item VALUES (822, 554, 13, 68.53, 1);
INSERT INTO order_item VALUES (823, 555, 10, 82.92, 1);
INSERT INTO order_item VALUES (824, 556, 47, 208.55, 2);
INSERT INTO order_item VALUES (825, 557, 18, 71.82, 2);
INSERT INTO order_item VALUES (826, 558, 41, 49.65, 2);
INSERT INTO order_item VALUES (827, 558, 59, 19.1, 2);
INSERT INTO order_item VALUES (828, 558, 7, 163.58, 1);
INSERT INTO order_item VALUES (829, 559, 57, 23.38, 1);
INSERT INTO order_item VALUES (830, 560, 3, 29.42, 1);
INSERT INTO order_item VALUES (831, 560, 1, 211.33, 1);
INSERT INTO order_item VALUES (832, 560, 26, 43.77, 1);
INSERT INTO order_item VALUES (833, 561, 45, 16.16, 1);
INSERT INTO order_item VALUES (834, 562, 41, 49.65, 1);
INSERT INTO order_item VALUES (835, 562, 19, 68.32, 1);
INSERT INTO order_item VALUES (836, 563, 10, 82.92, 1);
INSERT INTO order_item VALUES (837, 563, 17, 24.61, 2);
INSERT INTO order_item VALUES (838, 564, 26, 43.77, 1);
INSERT INTO order_item VALUES (839, 564, 1, 211.33, 1);
INSERT INTO order_item VALUES (840, 564, 48, 200.01, 2);
INSERT INTO order_item VALUES (841, 565, 45, 16.16, 1);
INSERT INTO order_item VALUES (842, 566, 48, 200.01, 1);
INSERT INTO order_item VALUES (843, 566, 42, 26.63, 1);
INSERT INTO order_item VALUES (844, 567, 43, 62.19, 2);
INSERT INTO order_item VALUES (845, 568, 57, 23.38, 1);
INSERT INTO order_item VALUES (846, 569, 45, 16.16, 2);
INSERT INTO order_item VALUES (847, 570, 44, 49.06, 1);
INSERT INTO order_item VALUES (848, 571, 8, 26.4, 1);
INSERT INTO order_item VALUES (849, 572, 21, 70.16, 1);
INSERT INTO order_item VALUES (850, 572, 17, 24.61, 2);
INSERT INTO order_item VALUES (851, 573, 7, 163.58, 1);
INSERT INTO order_item VALUES (852, 574, 16, 92.89, 1);
INSERT INTO order_item VALUES (853, 575, 46, 60.39, 1);
INSERT INTO order_item VALUES (854, 576, 11, 43.1, 1);
INSERT INTO order_item VALUES (855, 577, 31, 124.96, 1);
INSERT INTO order_item VALUES (856, 577, 30, 122.1, 1);
INSERT INTO order_item VALUES (857, 578, 55, 31.87, 1);
INSERT INTO order_item VALUES (858, 579, 44, 49.06, 1);
INSERT INTO order_item VALUES (859, 579, 43, 62.19, 1);
INSERT INTO order_item VALUES (860, 579, 60, 14.47, 2);
INSERT INTO order_item VALUES (861, 580, 58, 18.16, 2);
INSERT INTO order_item VALUES (862, 581, 50, 42.26, 2);
INSERT INTO order_item VALUES (863, 581, 1, 211.33, 2);
INSERT INTO order_item VALUES (864, 582, 59, 19.1, 1);
INSERT INTO order_item VALUES (865, 582, 7, 163.58, 2);
INSERT INTO order_item VALUES (866, 582, 3, 29.42, 1);
INSERT INTO order_item VALUES (867, 583, 14, 103.95, 1);
INSERT INTO order_item VALUES (868, 584, 51, 52.03, 1);
INSERT INTO order_item VALUES (869, 585, 23, 32.41, 2);
INSERT INTO order_item VALUES (870, 586, 30, 122.1, 1);
INSERT INTO order_item VALUES (871, 587, 46, 60.39, 1);
INSERT INTO order_item VALUES (872, 587, 31, 124.96, 1);
INSERT INTO order_item VALUES (873, 588, 41, 49.65, 2);
INSERT INTO order_item VALUES (874, 589, 34, 38.65, 1);
INSERT INTO order_item VALUES (875, 589, 22, 99.77, 1);
INSERT INTO order_item VALUES (876, 590, 30, 122.1, 1);
INSERT INTO order_item VALUES (877, 590, 14, 103.95, 1);
INSERT INTO order_item VALUES (878, 591, 26, 43.77, 1);
INSERT INTO order_item VALUES (879, 592, 47, 208.55, 1);
INSERT INTO order_item VALUES (880, 592, 40, 21.33, 1);
INSERT INTO order_item VALUES (881, 593, 4, 97.15, 1);
INSERT INTO order_item VALUES (882, 593, 17, 24.61, 2);
INSERT INTO order_item VALUES (883, 593, 18, 71.82, 1);
INSERT INTO order_item VALUES (884, 594, 4, 97.15, 2);
INSERT INTO order_item VALUES (885, 595, 27, 127.04, 2);
INSERT INTO order_item VALUES (886, 595, 59, 19.1, 1);
INSERT INTO order_item VALUES (887, 596, 45, 16.16, 2);
INSERT INTO order_item VALUES (888, 597, 38, 28.37, 1);
INSERT INTO order_item VALUES (889, 597, 17, 24.61, 1);
INSERT INTO order_item VALUES (890, 597, 7, 163.58, 2);
INSERT INTO order_item VALUES (891, 598, 48, 200.01, 1);
INSERT INTO order_item VALUES (892, 599, 15, 82.17, 1);
INSERT INTO order_item VALUES (893, 600, 30, 122.1, 1);

select * from customer;
select * from orders;
select * from order_item;
select * from product;


use ecommerce;

select billing_country, count(order_id) as total_orders
from orders
group by billing_country
order by total_orders desc
limit 5;


select order_id, customer_id, total
from orders
order by total desc
limit 3;



select c.city, sum(o.total) as total_spent
from orders o
join customer c
on o.customer_id = c.customer_id
group by c.city
order by total_spent desc
limit 5;


select c.customer_id, c.first_name, c.last_name, sum(o.total) as total_spent
from customer c
join orders o
on c.customer_id = o.customer_id
group by c.customer_id, c.first_name, c.last_name
order by total_spent desc
limit 1;


select distinct c.email, c.first_name, c.last_name
from customer c
join orders o
on c.customer_id = o.customer_id
join order_item oi
on o.order_id = oi.order_id
join product p
on p.product_id = oi.product_id
where p.category = 'Electronics'
order by c.email asc;

SELECT category, COUNT(*) AS product_count
FROM product
GROUP BY category
ORDER BY product_count DESC;

SELECT status, COUNT(order_id) AS total_orders, SUM(total) AS total_revenue, AVG(total) AS average_order_value
FROM orders
GROUP BY status;

SELECT city, country, COUNT(customer_id) AS customer_count
FROM customer
GROUP BY city, country
HAVING COUNT(customer_id) > 3;

SELECT o.order_id, c.first_name, c.last_name, o.order_date, o.status, o.total
FROM orders o
INNER JOIN customer c ON o.customer_id = c.customer_id;

SELECT oi.order_item_id, oi.order_id, p.product_name, p.category, oi.unit_price, oi.quantity, (oi.unit_price * oi.quantity) AS item_total
FROM order_item oi
JOIN product p ON oi.product_id = p.product_id;

SELECT c.customer_id,  c.first_name, c.last_name, c.email
FROM customer c
LEFT JOIN orders o ON c.customer_id = o.customer_id
WHERE o.order_id IS NULL;



select p.product_name, p.category, sum(oi.quantity) as total_units_sold
from product p
join order_item oi
on p.product_id = oi.product_id
group by p.product_id, p.product_name, p.category
order by total_units_sold desc
limit 10;


select product_name, unit_price
from product
where unit_price > (select avg(unit_price) from product)
order by unit_price desc;


select c.first_name, c.last_name, p.category,
       sum(oi.unit_price * oi.quantity) as category_spent,
       sum(sum(oi.unit_price * oi.quantity)) over (
           partition by c.customer_id
           order by p.category
       ) as running_total_per_customer
from customer c
join orders o on o.customer_id = c.customer_id
join order_item oi on oi.order_id = o.order_id
join product p on p.product_id = oi.product_id
group by c.customer_id, c.first_name, c.last_name, p.category
order by c.customer_id, p.category;


with cte as (
    select o.billing_country, p.category,
           sum(oi.unit_price * oi.quantity) as category_revenue,
           dense_rank() over (
               partition by o.billing_country
               order by sum(oi.unit_price * oi.quantity) desc
           ) as category_rank
    from orders o
    join order_item oi on oi.order_id = o.order_id
    join product p on p.product_id = oi.product_id
    group by o.billing_country, p.category
)
select billing_country, category, category_revenue
from cte
where category_rank = 1
order by category_revenue desc;

# Determine the customer who has spent the most in each country.
# Return the country, the top customer(s), and how much they spent.
# Where the top amount is shared by more than one customer, return all of them.

with cte as (
    select c.customer_id, c.first_name, c.last_name, c.country,
           sum(o.total) as total_spent,
           dense_rank() over (
               partition by c.country
               order by sum(o.total) desc
           ) as spend_rank
    from customer c
    join orders o on o.customer_id = c.customer_id
    group by c.customer_id, c.first_name, c.last_name, c.country
)
select country, first_name, last_name, total_spent
from cte
where spend_rank = 1
order by total_spent desc;


CREATE VIEW v_delivered_orders AS
SELECT o.order_id, CONCAT(c.first_name, ' ', c.last_name) AS customer_name, o.order_date, o.total
FROM orders o
JOIN customer c ON o.customer_id = c.customer_id
WHERE o.status = 'Delivered';
