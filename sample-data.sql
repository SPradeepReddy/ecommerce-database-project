-- Insert Users
INSERT INTO Users (name, email, address) VALUES
('Alice Johnson', 'alice@example.com', '123 Main St, NY'),
('Bob Smith', 'bob@example.com', '456 Elm St, CA');

-- Insert Products
INSERT INTO Products (name, category, price, stock_quantity) VALUES
('Laptop', 'Electronics', 999.99, 10),
('Headphones', 'Electronics', 199.99, 50),
('Desk Chair', 'Furniture', 149.99, 20);

-- Insert Orders
INSERT INTO Orders (user_id, order_date, status) VALUES
(1, '2025-03-01', 'Pending'),
(2, '2025-03-02', 'Shipped');

-- Insert Payments
INSERT INTO Payments (order_id, amount, payment_date, payment_method) VALUES
(1, 999.99, '2025-03-01', 'Credit Card'),
(2, 199.99, '2025-03-02', 'PayPal');

-- Insert Reviews
INSERT INTO Reviews (user_id, product_id, rating, comment) VALUES
(1, 1, 5, 'Great laptop, very fast!'),
(2, 2, 4, 'Good quality headphones.');
