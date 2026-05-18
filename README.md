# HR Reporting & Relational Database System 🏢

A relational database project built with **PostgreSQL** & **pgAdmin** as part of my SQL learning journey — Milestone 2.

---

## 📌 Project Overview

This project simulates a real-world **HR Management System** for a company with multiple departments and employees. It demonstrates relational database design, multi-table querying, and business reporting using SQL.

---

## 🗄️ Database Structure

### `departments` table
Stores company department information.

| Column | Type | Description |
|--------|------|-------------|
| department_id | INT | Primary Key |
| department_name | VARCHAR(100) | Name of the department |

### `employees` table
Stores employee records linked to departments.

| Column | Type | Description |
|--------|------|-------------|
| employee_id | INT | Primary Key |
| first_name | VARCHAR(50) | Employee first name |
| last_name | VARCHAR(50) | Employee last name |
| email | VARCHAR(100) | Employee email address |
| phone_number | VARCHAR(20) | Employee phone number |
| department_id | INT | Foreign Key → departments |
| job_title | VARCHAR(100) | Employee role/position |
| salary | DECIMAL(10,2) | Employee salary |
| hire_date | DATE | Date employee was hired |

### Relationship
```
employees.department_id → departments.department_id
```
Each employee belongs to one department. This Foreign Key relationship ensures data integrity across both tables.

---

## 📊 Reports Built

### Report 1 — Full Employee & Department View
Lists all employees alongside their department information using a LEFT JOIN.

### Report 2 — Employee Count per Department
Shows how many employees belong to each department using COUNT() and GROUP BY.

### Report 3 — Total Salary per Department
Shows the total salary spend per department using SUM() and GROUP BY.

### Report 4 — Highest Paid Employee
Returns the top-earning employee in the company using ORDER BY DESC and LIMIT.

---

## 🧠 Concepts Covered

- Relational database design (Primary Keys & Foreign Keys)
- INNER JOIN and LEFT JOIN
- Aggregate functions — COUNT(), SUM(), AVG()
- GROUP BY and HAVING
- ORDER BY and LIMIT
- NULL handling in relational queries

---

## 🛠️ Tools Used

- **PostgreSQL** — Database engine
- **pgAdmin** — Query execution and database management

---

## 📁 File Structure

```
HR_Reporting_and_relational_database/
├── create_tables.sql       # Table creation (departments + employees)
├── insert_data.sql         # Sample HR data
├── report_queries.sql      # All 4 business reports
└── README.md
```

---

*Milestone 2 of my SQL Learning Journey — Relational Databases & Query Mastery ✅*
