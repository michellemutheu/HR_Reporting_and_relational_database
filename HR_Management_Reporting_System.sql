CREATE TABLE departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(100)
);

CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
    phone_number VARCHAR(20),
    department_id INT,
    job_title VARCHAR(100),
    salary DECIMAL(10,2),
    hire_date DATE,
    FOREIGN KEY (department_id)
        REFERENCES departments(department_id)
);

INSERT INTO departments  (department_id, department_name)
VALUES
(1, 'IT'),
(2, 'HR'),
(3, 'FINANCE'),
(4, 'MARKETING'),
(5, 'SALES');

INSERT INTO employees (employee_id, first_name, last_name, email, phone_number, department_id, job_title, salary, hire_date)
VALUES
(1, 'Michelle', 'Mutheu', 'michelle@company.com', '0712345678', 1, 'SOFTWARE ENGINEER', 350000, '2024-01-15'),
(2, 'Faith', 'Koki', 'faith@company.com', '0723456789', 1, 'BACKEND DEVELOPER', 300000, '2023-06-10'),
(3, 'David', 'Maluki', 'david@company.com', '0734567890', 2, 'HR MANAGER', 90000, '2022-03-20'),
(4, 'Joseph', 'Mutuku', 'joseph@company.com', '0745678901', 3, 'ACCOUNTANT', 150000, '2021-09-01'),
(5, 'Sarah', 'Wanjiku', 'sarah@company.com', '0756789012', 4, 'MARKETING LEAD', 200000, '2023-11-05'),
(6, 'Brian', 'Otieno', 'brian@company.com', '0767890123', NULL, 'INTERN', 50000, '2025-01-10')

SELECT *
FROM employees
LEFT JOIN departments
ON employees.department_id = departments.department_id

SELECT departments.department_name,
COUNT(employees.employee_id) AS total_employees
FROM employees
INNER JOIN departments
ON employees.department_id = departments.department_id
GROUP BY departments.department_name;

SELECT employees.first_name, 
employees.last_name,
employees.salary,
departments.department_name
FROM employees
INNER JOIN departments
ON employees.department_id = departments.department_id
ORDER BY employees.salary DESC
LIMIT 1;