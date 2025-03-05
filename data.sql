INSERT INTO Customers (name, email, phone, city) VALUES
    ('Alice Johnson', 'alice@example.com', '1234567890', 'New York'),
    ('Bob Smith', 'bob@example.com', '2345678901', 'Los Angeles'),
    ('Charlie Brown', 'charlie@example.com', '3456789012', 'Chicago'),
    ('David Miller', 'david@example.com', '4567890123', 'Houston'),
    ('Emma Wilson', 'emma@example.com', '5678901234', 'San Francisco'),
    ('Frank Thomas', 'frank@example.com', '6789012345', 'Seattle'),
    ('Grace Hall', 'grace@example.com', '7890123456', 'Boston');

INSERT INTO Products (name, category, price, stock) VALUES
    ('Laptop', 'Electronics', 1200.00, 10),
    ('Headphones', 'Accessories', 150.00, 20),
    ('Smartphone', 'Electronics', 800.00, 15),
    ('Keyboard', 'Accessories', 100.00, 30),
    ('Mouse', 'Accessories', 50.00, 40),
    ('Monitor', 'Electronics', 300.00, 12),
    ('Tablet', 'Electronics', 600.00, 10);

INSERT INTO Orders (customer_id, total_amount, status) VALUES
    (1, 1350.00, 'Pending'),
    (2, 800.00, 'Shipped'),
    (3, 900.00, 'Delivered'),
    (4, 1250.00, 'Pending'),
    (5, 450.00, 'Cancelled'),
    (6, 1600.00, 'Shipped'),
    (7, 500.00, 'Delivered');

INSERT INTO Order_Items (order_id, product_id, quantity, subtotal) VALUES
    (1, 1, 1, 1200.00),
    (1, 2, 1, 150.00),
    (2, 3, 1, 800.00),
    (3, 4, 2, 200.00),
    (3, 5, 2, 100.00),
    (4, 1, 1, 1200.00),
    (4, 6, 1, 300.00),
    (5, 2, 3, 450.00),
    (6, 7, 2, 1200.00),
    (6, 3, 1, 800.00),
    (7, 5, 5, 250.00);

INSERT INTO Payments (order_id, amount, payment_method) VALUES
    (1, 1350.00, 'Credit Card'),
    (2, 800.00, 'PayPal'),
    (3, 900.00, 'Debit Card'),
    (4, 1250.00, 'Credit Card'),
    (6, 1600.00, 'Bank Transfer'),
    (7, 500.00, 'UPI');