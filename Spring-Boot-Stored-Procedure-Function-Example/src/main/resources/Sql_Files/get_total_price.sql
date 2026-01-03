CREATE FUNCTION test_schema.get_total_price(productId INT)
RETURNS DECIMAL(10,2)
DETERMINISTIC
READS SQL DATA
BEGIN
    DECLARE total DECIMAL(10,2);
    SELECT SUM(price * stock_quantity) INTO total
    FROM product
    WHERE id = productId;

    RETURN total;
END$$



---way to execute in mysql via cmd:
mysql> DELIMITER $$
mysql>
mysql>
mysql>
mysql> CREATE FUNCTION test_schema.get_total_price(productId INT)
    -> RETURNS DECIMAL(10,2)
    -> DETERMINISTIC
    -> READS SQL DATA
    -> BEGIN
    ->     DECLARE total DECIMAL(10,2);
    ->     SELECT SUM(price * stock_quantity) INTO total
    ->     FROM product
    ->     WHERE id = productId;
    ->
    ->     RETURN total;
    -> END$$
Query OK, 0 rows affected (0.008 sec)

mysql> DELIMITER ;

