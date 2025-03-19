CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    amount DECIMAL(10, 2),
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id)
);

INSERT INTO orders (order_id, customer_id, order_date, amount) VALUES
(1, 1, '2023-01-01', 100.00),
(2, 2, '2023-01-02', 150.00),
(3, 1, '2023-01-03', 200.00);