-- List all available products
SELECT * FROM Products WHERE stock_quantity > 0;

-- Get order details for a specific user
SELECT O.order_id, U.name, O.order_date, O.status
FROM Orders O
JOIN Users U ON O.user_id = U.user_id
WHERE U.name = 'Alice Johnson';

-- Get total revenue from all orders
SELECT SUM(amount) AS total_revenue FROM Payments;

-- Get average product rating
SELECT product_id, AVG(rating) AS avg_rating FROM Reviews GROUP BY product_id;
