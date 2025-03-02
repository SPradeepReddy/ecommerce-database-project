DELIMITER //
CREATE TRIGGER ReduceStockAfterOrder
AFTER INSERT ON Orders
FOR EACH ROW
BEGIN
    UPDATE Products
    SET stock_quantity = stock_quantity - 1
    WHERE product_id = (SELECT product_id FROM Orders WHERE order_id = NEW.order_id);
END;
//
DELIMITER ;
