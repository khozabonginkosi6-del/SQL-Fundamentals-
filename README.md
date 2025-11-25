📘 SQL Practice Queries — CASE Statements & Conditional Logic
📌 Overview
This project demonstrates how to use the CASE statement in SQL to classify and label data based on conditions. The examples cover:

Categorizing numeric ranges (price, salary, scores, etc.)

Labeling based on thresholds (attendance, stock levels, delivery times)

Combining multiple conditions (department + salary, payment method + amount)

🛠️ Requirements
SQL-compatible database (Snowflake, PostgreSQL, MySQL, SQL Server, Oracle, etc.)

Tables used in examples:

products (product_id, product_name, price)

orders (customer_name, amount)

employees (emp_name, department, salary)

students (student_name, score)

deliveries (delivery_id, delivery_time_minutes)

tickets (issue_type, priority)

attendance (student_id, days_present, total_days)

product_inventory (product_id, stock_qty)

classes (subject, enrolled_students)

payments (payment_id, payment_method, amount)

📂 Queries
1. 🛍️ Price Categories
sql
SELECT product_id, product_name, price,
       CASE 
         WHEN price > 1000 THEN 'Expensive'
         WHEN price BETWEEN 100 AND 1000 THEN 'Mid-range'
         WHEN price < 100 THEN 'Budget'
       END AS price_category
FROM products;
Labels products as Expensive, Mid-range, or Budget.

2. 💳 Order Value Categories
sql
SELECT customer_name, amount,
       CASE 
         WHEN amount >= 1000 THEN 'High Value'
         WHEN amount BETWEEN 500 AND 999.99 THEN 'Medium Value'
         WHEN amount < 500 THEN 'Low Value'
       END AS order_value_category
FROM orders;
Classifies orders by value.

3. 👔 Employee Position Levels
sql
SELECT emp_name, department, salary,
       CASE
         WHEN department = 'IT' AND salary > 80000 THEN 'Senior IT'
         WHEN department = 'HR' AND salary > 55000 THEN 'Experienced HR'
         ELSE 'Staff'
       END AS position_level
FROM employees;
Labels employees based on department and salary.

4. 🎓 Student Grades
sql
SELECT student_name, score,
       CASE
         WHEN score >= 90 THEN 'A'
         WHEN score BETWEEN 80 AND 89 THEN 'B'
         WHEN score BETWEEN 70 AND 79 THEN 'C'
         WHEN score BETWEEN 60 AND 69 THEN 'D'
         ELSE 'F'
       END AS grade
FROM students;
Converts numeric scores into letter grades.

5. 🚚 Delivery Performance
sql
SELECT delivery_id, delivery_time_minutes,
       CASE
         WHEN delivery_time_minutes <= 30 THEN 'Fast'
         WHEN delivery_time_minutes BETWEEN 31 AND 60 THEN 'On Time'
         WHEN delivery_time_minutes > 60 THEN 'Late'
       END AS performance
FROM deliveries;
Categorizes deliveries by timeliness.

6. 🎫 Ticket Priority Labels
sql
SELECT issue_type, priority,
       CASE
         WHEN priority = 3 THEN 'High'
         WHEN priority = 2 THEN 'Medium'
         WHEN priority = 1 THEN 'Low'
       END AS priority_label
FROM tickets;
Labels tickets by priority level.

7. 📅 Attendance Status
sql
SELECT student_id,
       (days_present * 100.0 / total_days) AS attendance_percentage,
       CASE
         WHEN (days_present * 100.0 / total_days) >= 90 THEN 'Excellent'
         WHEN (days_present * 100.0 / total_days) BETWEEN 75 AND 89 THEN 'Good'
         ELSE 'Needs Improvement'
       END AS attendance_status
FROM attendance;
Classifies students based on attendance percentage.

8. 📦 Stock Status
sql
SELECT product_id, stock_qty,
       CASE
         WHEN stock_qty = 0 THEN 'Out of Stock'
         WHEN stock_qty BETWEEN 1 AND 5 THEN 'Low Stock'
         WHEN stock_qty = 5 THEN 'In Stock'
         ELSE 'Sufficient Stock'
       END AS stock_status
FROM product_inventory;
Labels inventory levels.

9. 🏫 Class Size Categories
sql
SELECT subject, enrolled_students,
       CASE 
         WHEN enrolled_students >= 25 THEN 'Large'
         WHEN enrolled_students BETWEEN 10 AND 24 THEN 'Medium'
         WHEN enrolled_students < 10 THEN 'Small'
       END AS class_size_category
FROM classes;
Categorizes classes by size.

10. 💵 Discount Eligibility
sql
SELECT payment_id, payment_method, amount,
       CASE 
         WHEN payment_method = 'Cash' AND amount >= 200 THEN 'Eligible for Discount'
         ELSE 'Not Eligible'
       END AS discount_eligibility
FROM payments;
Determines if a payment qualifies for a discount.
