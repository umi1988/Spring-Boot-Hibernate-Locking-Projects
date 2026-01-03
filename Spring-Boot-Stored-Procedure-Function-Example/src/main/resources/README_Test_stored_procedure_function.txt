steps:-
First create the procedure and function in mysql
Second Start the Application
Third Open swagger and test these below use cases.

tested stored procedure update_stock

mysql> select * from product;
+----+---------------------+--------+----------------+
| id | name                | price  | stock_quantity |
+----+---------------------+--------+----------------+
|  1 | Laptop              |  25000 |             10 |
|  2 | SmartPhone          |   5000 |             12 |
|  3 | Wireless Mouse      |  29.99 |            200 |
|  4 | Mechanical Keyboard |  89.99 |            150 |
|  5 | USB-C Hub           |  49.99 |            300 |
|  6 | External SSD 1TB    | 119.99 |             80 |
|  7 | Monitor 27-inch     | 299.99 |             40 |
|  8 | Webcam HD           |  79.99 |            120 |
|  9 | Bluetooth Speaker   |  59.99 |            180 |
+----+---------------------+--------+----------------+
9 rows in set (0.001 sec)


giving input in the swagger api page as id as 1 and quantity as 1


mysql> select * from product;
+----+---------------------+--------+----------------+
| id | name                | price  | stock_quantity |
+----+---------------------+--------+----------------+
|  1 | Laptop              |  25000 |              9 |
|  2 | SmartPhone          |   5000 |             12 |
|  3 | Wireless Mouse      |  29.99 |            200 |
|  4 | Mechanical Keyboard |  89.99 |            150 |
|  5 | USB-C Hub           |  49.99 |            300 |
|  6 | External SSD 1TB    | 119.99 |             80 |
|  7 | Monitor 27-inch     | 299.99 |             40 |
|  8 | Webcam HD           |  79.99 |            120 |
|  9 | Bluetooth Speaker   |  59.99 |            180 |
+----+---------------------+--------+----------------+
9 rows in set (0.001 sec)

mysql> 


tested function get_total_price:-

givine input as id as 1 meaning we will get_total_price i.e. 225000 


mysql> select * from product;
+----+---------------------+--------+----------------+
| id | name                | price  | stock_quantity |
+----+---------------------+--------+----------------+
|  1 | Laptop              |  25000 |              9 |
|  2 | SmartPhone          |   5000 |             12 |
|  3 | Wireless Mouse      |  29.99 |            200 |
|  4 | Mechanical Keyboard |  89.99 |            150 |
|  5 | USB-C Hub           |  49.99 |            300 |
|  6 | External SSD 1TB    | 119.99 |             80 |
|  7 | Monitor 27-inch     | 299.99 |             40 |
|  8 | Webcam HD           |  79.99 |            120 |
|  9 | Bluetooth Speaker   |  59.99 |            180 |
+----+---------------------+--------+----------------+
9 rows in set (0.001 sec)




