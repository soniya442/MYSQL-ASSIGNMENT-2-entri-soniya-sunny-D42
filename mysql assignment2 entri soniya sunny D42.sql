create database sales_1;

use sales_1;

CREATE TABLE orders (
    order_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,  -- Primary key and NOT NULL
    customer_name VARCHAR(100) NOT NULL,               -- NOT NULL
    product_category VARCHAR(50) NOT NULL,             -- NOT NULL
    ordered_item VARCHAR(100) NOT NULL,                -- NOT NULL
    contact_number VARCHAR(15) NOT NULL                -- NOT NULL
);

ALTER TABLE orders
ADD order_quantity INT NOT NULL;

ALTER TABLE orders
RENAME TO sales_orders;

INSERT INTO sales_orders (customer_name, product_category, ordered_item, contact_number, order_quantity)
VALUES
('John Doe', 'Electronics', 'Smartphone', '555-1234', 1),
('Jane Smith', 'Clothing', 'Jacket', '555-5678', 2),
('Bob Johnson', 'Home Appliances', 'Microwave', '555-9012', 1),
('Alice Brown', 'Electronics', 'Laptop', '555-3456', 1),
('Chris Evans', 'Furniture', 'Dining Table', '555-7890', 1),
('David Green', 'Clothing', 'Shoes', '555-2345', 3),
('Sophia Lee', 'Electronics', 'Smartwatch', '555-6789', 1),
('Emma Wilson', 'Beauty', 'Skincare Set', '555-1122', 2),
('Daniel Harris', 'Sports', 'Tennis Racket', '555-3344', 1),
('Lily Adams', 'Books', 'Novel', '555-5566', 4);

SELECT customer_name, ordered_item
FROM sales_orders;



set sql_safe_updates=0;
UPDATE sales_orders
SET ordered_item = 'Tablet'
WHERE customer_name = 'John Doe';

DROP TABLE sales_orders;

select * from sales_orders;

