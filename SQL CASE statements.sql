---'Expensive' if price > 1000
---'Mid-range' if price between 100 and 1000
---'Budget' if price < 100
 
SELECT
  product_id,
  product_name
  price,
CASE 
    WHEN price > 1000 THEN 'expensive'
    WHEN price BETWEEN 100 AND 1000 THEN 'Mid-range'
    WHEN price < 100 THEN 'budget'
END AS price_category
FROM products;

---'High Value' for orders ≥ 1000
---'Medium Value' for 500–999.99
---'Low Value' for orders < 500

SELECT
customer_name,
amount,
CASE 
   WHEN orders >= 1000 THEN 'High Value'
   WHEN orders BETWEEN 500 AND 999.99 THEN 'Medium Value'
   WHEN orders < 500 THEN 'Low Value'
   END AS order_value _category
FROM orders;

---If in 'IT' and salary > 80000 → 'Senior IT'
---If in 'HR' and salary > 55000 → 'Experienced HR'
---Otherwise → 'Staff'

SELECT 
emp_name,
department,
salary,
CASE
   WHEN department = 'IT'salary > 8000 THEN 'Senior IT'
   WHEN department = 'HR'salary > 55000 THEN 'Experinced HR'
   ELSE 'staff'
   END AS position_level
FROM employees;

---≥ 90: 'A'
---80–89: 'B'
---70–79: 'C'
---60–69: 'D'
---< 60: 'F'

SELECT
     student_name
     score,
CASE
     WHEN score >= 90 THEN 'A'
     WHEN score BETWEEN 80 AND 89 THEN 'B'
     WHEN score BETWEEN 70-79 THEN 'C'
     WHEN score BETWEEN 60-69 'D'
     ELSE 'F'
  END AS grade
FROM students;

---≤ 30 mins: 'Fast'
---31–60 mins: 'On Time'
---60 mins: 'Late'

SELECT
    delivery_ID,
    delivery_time_minutes,
    CASE
       WHEN delivery_time_minutes <= 30 THEN 'Fast'
       WHEN delivery_time_minutes BETWEEN 31 AND 60 'On Time'
       WHEN delivery_time_minutes > 60 THEN 'Late'
    END AS performance
FROM deliveries;

---3 → 'High'
---2 → 'Medium'
---1 → 'Low'
SELECT 
    issue_type,
    priority,
    CASE
       WHEN priority = 3 THEN 'High'
       WHEN priority = 2 THEN 'Medium'
       WHEN priority = 1 THEN 'Low'
    END AS priority_label
FROM tickets;

---≥ 90% → 'Excellent'
---75–89% → 'Good'
---< 75% → 'Needs Improvement'
SELECT 
     student_id,
     (days_present *100.0/total_days) AS attendance_percentage,
     CASE
         WHEN (days_present * 100.0/total_days) >= 90 THEN 'Excellent'
         WHEN (days_present * 100.0/total_days) BETWEEN 75 AND 89 THEN 'Good'
         ELSE 'Needs Improvement'
     END AS attandance_status
FROM attandance;

---0 → 'Out of Stock'
---1–5 → 'Low Stock'
---5 → 'In Stock'  
SELECT
   product_id,
   stock_qty,
   CASE
    WHEN stock_qty = 0 THEN 'Out of stock'
    WHEN stock_qty BETWEEN 1 AND 5 THEN 'Low stock'
    WHEN stock_qty = 5 THEN 'In stock'
    ELSE 'sufficient stock'
   END AS stock_status
FROM product_inventory;

---≥ 25 → 'Large'
---10–24 → 'Medium'
---< 10 → 'Small'
SELECT 
    subject,
    enrolled_student,
 CASE 
    WHEN enrolled_students >= 25 THEN 'Large'
    WHEN enrolled_students BETWEEN 10 AND 24 THEN 'Medium'
    WHEN enrolled_students < 10 THEN 'small'
  END AS class_size_category;
FROM classes;
    
---If payment_method = 'Cash' and amount ≥ 200 → 'Eligible for Discount'
---Otherwise → 'Not Eligible'
SELECT
  payment_id,
  payment_method,
  amount,
    CASE 
       WHEN payment_method = 'cash' amount >= 200 THEN 'Eligible for Discount'
       ELSE 'Not Eligible'
     END AS discount_eligibility
FROM payments;

