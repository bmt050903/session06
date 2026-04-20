CREATE TABLE Course (
    id SERIAL PRIMARY KEY,
    title VARCHAR(100),
    instructor VARCHAR(50),
    price NUMERIC(10,2),
    duration INT
);

--1.Thêm ít nhất 6 khóa học vào bảng
INSERT INTO Course (title, instructor, price, duration)
VALUES
('Java Core', 'Nam', 1200000, 40),
('Spring Boot API', 'Huy', 1800000, 45),
('SQL Cơ Bản', 'Lan', 800000, 25),
('PostgreSQL Demo', 'Minh', 600000, 20),
('ReactJS', 'An', 1500000, 35),
('SQL Nâng Cao', 'Bảo', 2000000, 50);

SELECT * FROM Course

--2.Cập nhật giá tăng 15% cho các khóa học có thời lượng trên 30 giờ
UPDATE Course
SET price = price * 1.5
WHERE duration > 30;

--3.Xóa khóa học có tên chứa từ khóa “Demo”
DELETE FROM Course
WHERE title LIKE '%Demo%';

--4.Hiển thị khóa học có tên chứa SQL (không phân biệt hoa thường)
SELECT *
FROM Course
WHERE title ILIKE '%SQL%';

--5.Lấy 3 khóa học giá từ 500,000 đến 2,000,000 sắp xếp giá giảm dần
SELECT *
FROM Course
WHERE price BETWEEN 500000 AND 2000000
ORDER BY price DESC 
LIMIT 3;



