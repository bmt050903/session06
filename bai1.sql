CREATE TABLE Product(
	id SERIAL PRIMARY KEY,
	name VARCHAR(100),
	category VARCHAR(50),
	price NUMERIC(10,2),
	stock INT
);

--1.Thêm 5 sản phẩm vào bảng bằng lệnh INSERT
INSERT INTO Product(name,category,price,stock) VALUES
('Laptop','Điện tử',1500000,8),
('IPhone', 'Điện tử', 22000000, 5),
('Tai nghe', 'Điện tử', 3500000, 20),
('Bàn', 'Nội thất', 2500000, 12),
('Ghế', 'Nội thất', 1800000, 15);

2.--Hiển thị danh sách toàn bộ sản phẩm
SELECT * 
FROM Product

--3.Hiển thị 3 sản phẩm có giá cao nhất
SELECT * 
FROM Product
ORDER BY price DESC
LIMIT 3

--4.Hiển thị các sản phẩm thuộc danh mục “Điện tử” có giá nhỏ hơn 10,000,000
SELECT * 
FROM Product
WHERE category = 'Điện tử'
AND price < 10000000

--5.Sắp xếp sản phẩm theo số lượng tồn kho tăng dần
SELECT * 
FROM Product
ORDER BY stock ASC














