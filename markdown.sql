Get the number of orders for each customer.
NOTE:
It is OK
if those without orders are not included in results.
How many customers do we have?
How many products do we carry?
What is the total available on-hand quantity of diet pepsi?

Write a comment
that specifies which question you are answering.
(SQL comments are two dashes, followed by text.)
Write the SQL query that answers the question, below that comment.
Once one person writes half of the queries, switch off.

--	1.	Get all customers and their addresses.
SELECT *
FROM "customers"
    JOIN "addresses" ON "customers".id = "addresses".customer_id;
--	2A.	Get all orders and their line items (orders, quantity and product)
SELECT *
FROM "orders"
    JOIN "line_items" on "orders".id = "line_items".order_id
    JOIN "products" on "line_items".product_id = "products".id;
-- 2B.
SELECT "line_items".quantity, "products".description
FROM "orders"
    JOIN "line_items" on "orders".id = "line_items".order_id
    JOIN "products" on "line_items".product_id = "products".id;
-- 3. Which warehouses have cheetos?
SELECT *
FROM "warehouse"
    JOIN "warehouse_product" on "warehouse".id = "warehouse_product".warehouse_id
    JOIN "products" ON "products".id = "warehouse_product".product_id
WHERE "warehouse_product".product_id = 5
--4. Which warehouses have diet pepsi
SELECT *
FROM "warehouse"
    JOIN "warehouse_product" on "warehouse".id = "warehouse_product".warehouse_id
    JOIN "products" ON "products".id = "warehouse_product".product_id
WHERE "warehouse_product".product_id = 6