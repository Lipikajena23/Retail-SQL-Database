SQL Customer Orders Management Project

Overview

This project showcases a relational database schema for managing customer orders, products, and payments using SQL. It includes schema definitions, sample data, analytical queries, and stored procedures to demonstrate SQL skills.

Features

Schema Definition: Tables for Customers, Products, Orders, Order Items, and Payments.

Sample Data: Pre-inserted records for realistic transaction simulation.

Analytical Queries: Insights into customer spending, product sales, and revenue trends.

Triggers & Procedures: Automatic stock updates and discount application.

Files Included

schema.sql – Contains the database schema with table definitions.

data.sql – Includes sample records for Customers, Products, Orders, Order Items, and Payments.

queries.sql – A set of analytical queries to extract insights.

procedures_triggers.sql – Implements triggers for automatic discount application and stock updates.

Setup Instructions

Ensure you have PostgreSQL installed.

Create a new database:

CREATE DATABASE customer_orders;

Connect to the database:

\\c customer_orders;

Run the schema file to create tables:

\i schema.sql

Insert sample data:

\i data.sql

Run queries and procedures:

\i queries.sql
\i procedures_triggers.sql

Example Queries

Find the top 5 customers by total spending:

SELECT c.name, SUM(o.total_amount) AS total_spent
FROM Customers c
JOIN Orders o ON c.customer_id = o.customer_id
GROUP BY c.name
ORDER BY total_spent DESC
LIMIT 5;

Get the best-selling product:

SELECT p.name, SUM(oi.quantity) AS total_sold
FROM Products p
JOIN Order_Items oi ON p.product_id = oi.product_id
GROUP BY p.name
ORDER BY total_sold DESC
LIMIT 1;

Enhancements

Implement stored procedures for reporting.

Add more complex queries for customer segmentation.

Extend the database to handle refunds and returns.
