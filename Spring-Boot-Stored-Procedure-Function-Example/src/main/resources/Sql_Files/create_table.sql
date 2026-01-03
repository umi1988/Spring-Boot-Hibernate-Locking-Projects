
CREATE DATABASE IF NOT EXISTS test_schema CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- Optional: Create a common application user with access to all three schemas
-- (Replace 'appuser' and 'apppass' with your values)
CREATE USER IF NOT EXISTS 'test_schema'@'%' IDENTIFIED BY 'tiger';
GRANT ALL PRIVILEGES ON test_schema.* TO 'test_schema'@'%';

-- Apply changes
FLUSH PRIVILEGES;


-- create table ddl. Mysql expect stockQuantity as stock_quantity
CREATE TABLE test_schema.product (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255),
    price DOUBLE,
    stock_quantity INT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--Mysql expect stockQuantity as stock_quantity
INSERT INTO test_schema.product (name, price, stock_quantity) VALUES
('Laptop', 25000.0, 10),
('SmartPhone', 5000.0, 12),
('Wireless Mouse', 29.99, 200),
('Mechanical Keyboard', 89.99, 150),
('USB-C Hub', 49.99, 300),
('External SSD 1TB', 119.99, 80),
('Monitor 27-inch', 299.99, 40),
('Webcam HD', 79.99, 120),
('Bluetooth Speaker', 59.99, 180);