DROP FUNCTION IF EXISTS DIVIDE;

DELIMITER //

CREATE FUNCTION DIVIDE(dividend FLOAT, divisor FLOAT) RETURNS FLOAT DETERMINISTIC NO SQL
BEGIN   
    IF divisor = 0 THEN
		RETURN NULL;
    ELSE
		RETURN dividend / divisor;
    END IF;
END //

DELIMITER ;

SELECT order_id, DIVIDE(quantity, 2) result FROM order_details;