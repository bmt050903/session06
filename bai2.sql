CREATE TABLE Emloyee (
	id SERIAL PRIMARY KEY,
	full_name VARCHAR(100),
	department VARCHAR(50),
	salary NUMERIC(10,2),
	hire_date DATE
);

--1.Thêm 6 nhân viên mới
INSERT INTO Emloyee(full_name,department,salary,hire_date) VALUES
('Nguyễn Văn An', 'IT', 12000000, '2023-02-10'),
('Trần Thị Bình', 'HR', 7000000, '2022-05-15'),
('Lê Quốc Anh', 'IT', 15000000, '2023-07-20'),
('Phạm Minh An', 'Marketing', 5500000, '2023-11-05'),
('Hoàng Gia Bảo', 'Sales', 5000000, '2024-01-12'),
('Đặng Thanh An', 'IT', 9000000, '2023-09-18');

--2.Cập nhật mức lương tăng 10% cho nhân viên thuộc phòng IT
UPDATE Emloyee
SET salary = salary * 1.1
WHERE department = 'IT';

--3.Xóa nhân viên có mức lương dưới 6,000,000
DELETE FROM Emloyee
WHERE salary < 6000000;

--4.Liệt kê các nhân viên có tên chứa chữ “An” (không phân biệt hoa thường)
SELECT *
FROM Emloyee
WHERE full_name ILIKE '%An%';

--5.Hiển thị các nhân viên có ngày vào làm việc trong khoảng từ '2023-01-01' đến '2023-12-31'
SELECT *
FROM Emloyee
WHERE hire_date BETWEEN '2023-01-01' AND '2023-12-31';




















