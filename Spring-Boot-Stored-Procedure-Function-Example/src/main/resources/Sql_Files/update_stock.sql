CREATE PROCEDURE test_schema.update_stock(
	IN productId INT,
    IN quantity INT
    )
BEGIN
	UPDATE product
    SET stock_quantity = stock_quantity - quantity
    WHERE id = productId;
END$$


---way to execute in mysql via cmd:

mysql> USE test_schema;
Database changed

mysql> DELIMITER $$
mysql>
mysql>
mysql> CREATE PROCEDURE test_schema.update_stock(
    -> IN productId INT,
    ->     IN quantity INT
    ->     )
    -> BEGIN
    -> UPDATE product
    ->     SET stock_quantity = stock_quantity - quantity
    ->     WHERE id = productId;
    -> END$$
Query OK, 0 rows affected (0.024 sec)

mysql> DELIMITER ;
