-- Customers
INSERT INTO customers (name, email, signup_date) VALUES
('Alice', 'alice@example.com', '2023-01-10'),
('Bob', 'bob@example.com', '2023-02-15'),
('Charlie', 'charlie@example.com', '2023-03-20'),
('David', 'david@example.com', '2023-04-05'),
('Eva', 'eva@example.com', '2023-05-12');

-- Products
INSERT INTO products (product_name, category, price) VALUES
('Laptop', 'Electronics', 800),
('Phone', 'Electronics', 500),
('Shoes', 'Fashion', 80),
('Watch', 'Accessories', 150),
('Backpack', 'Fashion', 60);

-- Orders
INSERT INTO orders (customer_id, order_date, total_amount) VALUES
(1, '2023-06-01', 800),
(2, '2023-06-10', 580),
(1, '2023-07-05', 150),
(3, '2023-07-15', 500),
(4, '2023-08-01', 80),
(5, '2023-08-10', 60);

-- Order Items
INSERT INTO order_items (order_id, product_id, quantity, price) VALUES
(1, 1, 1, 800),
(2, 2, 1, 500),
(2, 3, 1, 80),
(3, 4, 1, 150),
(4, 2, 1, 500),
(5, 3, 1, 80),
(6, 5, 1, 60);