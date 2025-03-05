SELECT c.name, SUM(o.total_amount) AS total_spent 
FROM Customers c
JOIN Orders o ON c.customer_id = o.customer_id
GROUP BY c.name
ORDER BY total_spent DESC
LIMIT 5;

SELECT p.name, SUM(oi.quantity) AS total_sold 
FROM Products p
JOIN Order_Items oi ON p.product_id = oi.product_id
GROUP BY p.name
ORDER BY total_sold DESC
LIMIT 1;

SELECT DATE_TRUNC('month', order_date) AS month, SUM(total_amount) AS revenue
FROM Orders
GROUP BY month
ORDER BY month;

SELECT * FROM Orders WHERE status = 'Pending';

SELECT name, stock FROM Products WHERE stock < 5;