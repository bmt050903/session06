CREATE TABLE Customer (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100),
    phone VARCHAR(20),
    points INT
);

--1.Thêm 7 khách hàng (trong đó có 1 người không có email)
INSERT INTO Customer (name, email, phone, points)
VALUES
('An', 'an@gmail.com', '0901111111', 120),
('Bình', 'binh@gmail.com', '0902222222', 300),
('Cường', NULL, '0903333333', 150),
('Dũng', 'dung@gmail.com', '0904444444', 500),
('An', 'an2@gmail.com', '0905555555', 250),
('Hà', 'ha@gmail.com', '0906666666', 450),
('Lan', 'lan@gmail.com', '0907777777', 350);

--2.Truy vấn danh sách tên khách hàng duy nhất (DISTINCT)
SELECT DISTINCT name
FROM Customer;

--3.Tìm các khách hàng chưa có email (IS NULL)
SELECT *
FROM Customer
WHERE email IS NULL;

--4.Hiển thị 3 khách hàng có điểm thưởng cao nhất, bỏ qua khách hàng cao điểm nhất (gợi ý: dùng OFFSET)
SELECT *
FROM Customer
ORDER BY points DESC
LIMIT 3 OFFSET 1;

--5.Sắp xếp danh sách khách hàng theo tên giảm dần
SELECT *
FROM Customer
ORDER BY name DESC



