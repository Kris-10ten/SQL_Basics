-- Create a table called orders that records: order_id, person_id, product_name, product_price, quantity.

CREATE TABLE orders(
    order_id SERIAL PRIMARY KEY,
    person_id INTEGER NOT NULL,
    product_name TEXT,
    product_price FLOAT,
    quantity INTEGER
);

-- Add 5 orders to the orders table.
-- Make orders for at least two different people.
-- person_id should be different for different people.

INSERT INTO orders (person_id, product_name, product_price, quantity)
VALUES (3213, 'shoes', 57.99, 2),
(3213, 'dress', 35.99, 3),
(4128, 'basketball', 10.99, 1),
(2189, 'bouncy house', 108.49, 1),
(4293, 'light bulb', 6.09, 10);       

-- Select all the records from the orders table.

SELECT * FROM orders 

-- Calculate the total number of products ordered.

SELECT SUM(quantity) FROM orders

-- Calculate the total order price.

SELECT ROUND(SUM(product_price*quantity),2) AS total_order_price FROM orders

-- Calculate the total order price by a single person_id.

SELECT ROUND(SUM(product_price*quantity),2) AS total_order_price FROM orders WHERE person_id = 4293