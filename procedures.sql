DELIMITER //
CREATE PROCEDURE GetUserOrders(IN user_email VARCHAR(255))
BEGIN
    SELECT O.order_id, O.order_date, O.status
    FROM Orders O
    JOIN Users U ON O.user_id = U.user_id
    WHERE U.email = user_email;
END //
DELIMITER ;
