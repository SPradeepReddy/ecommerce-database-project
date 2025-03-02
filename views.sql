CREATE VIEW OrderSummary AS
SELECT O.order_id, U.name AS customer, O.order_date, O.status, P.amount, P.payment_method
FROM Orders O
JOIN Users U ON O.user_id = U.user_id
JOIN Payments P ON O.order_id = P.order_id;
