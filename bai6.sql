CREATE TABLE Orders (
    id SERIAL PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    total_amount NUMERIC(10,2)
);

INSERT INTO Orders (customer_id, order_date, total_amount)
VALUES
(1, '2022-03-10', 12000000),
(2, '2022-08-15', 18000000),
(3, '2023-01-20', 25000000),
(1, '2023-07-12', 32000000),
(4, '2024-02-05', 15000000),
(2, '2024-06-18', 40000000),
(5, '2024-09-22', 28000000),
(3, '2025-01-10', 35000000);

--1.Hiển thị tổng doanh thu, số đơn hàng, giá trị trung bình mỗi đơn (dùng SUM, COUNT, AVG) - Đặt bí danh cột lần lượt 
--total_revenue, total_orders, average_order_value
SELECT
	SUM(total_amount ) AS total_revenue,
	COUNT(id) AS total_orders,
	AVG(total_amount) AS average_order_value
FROM Orders;

--2.Nhóm dữ liệu theo năm đặt hàng, hiển thị doanh thu từng năm (GROUP BY EXTRACT(YEAR FROM order_date))
SELECT
    EXTRACT(YEAR FROM order_date) AS year,
    SUM(total_amount) AS total_revenue
FROM Orders
GROUP BY EXTRACT(YEAR FROM order_date);

-- 3.Chỉ hiển thị năm có doanh thu > 50 triệu
SELECT
    EXTRACT(YEAR FROM order_date) AS year,
    SUM(total_amount) AS total_revenue
FROM Orders
GROUP BY EXTRACT(YEAR FROM order_date)
HAVING SUM(total_amount) > 50000000;

-- 4.Hiển thị 5 đơn hàng giá trị cao nhất
SELECT *
FROM Orders
ORDER BY total_amount DESC
LIMIT 5;




