# 📘 SQL Practice Queries — CASE Statements & Conditional Logic

## 📌 Summary of the Case Study
This case study demonstrates how SQL **CASE statements** can be used to classify and label data based on conditions. The project focused on categorizing numeric ranges, labeling records based on thresholds, and combining multiple conditions to generate meaningful classifications. The goal was to show how conditional logic in SQL can transform raw data into **insights for decision-making** across domains such as retail, HR, education, logistics, and finance.

---

## 🔍 How the Case Study Was Done
1. **Dataset Exploration**
   - Example tables used:
     - `products (product_id, product_name, price)`
     - `orders (customer_name, amount)`
     - `employees (emp_name, department, salary)`
     - `students (student_name, score)`
     - `deliveries (delivery_id, delivery_time_minutes)`
     - `tickets (issue_type, priority)`
     - `attendance (student_id, days_present, total_days)`
     - `product_inventory (product_id, stock_qty)`
     - `classes (subject, enrolled_students)`
     - `payments (payment_id, payment_method, amount)`

2. **SQL Query Development**
   - **Price Categories** → Classified products as Expensive, Mid-range, or Budget.  
   - **Order Value Categories** → Labeled orders as High, Medium, or Low value.  
   - **Employee Position Levels** → Combined department and salary conditions to label employees.  
   - **Student Grades** → Converted numeric scores into letter grades (A–F).  
   - **Delivery Performance** → Categorized deliveries as Fast, On Time, or Late.  
   - **Ticket Priority Labels** → Assigned labels (High, Medium, Low) based on priority values.  
   - **Attendance Status** → Classified students as Excellent, Good, or Needs Improvement.  
   - **Stock Status** → Labeled inventory levels as Out of Stock, Low Stock, In Stock, or Sufficient Stock.  
   - **Class Size Categories** → Categorized classes as Large, Medium, or Small.  
   - **Discount Eligibility** → Determined if payments qualified for discounts based on method and amount.  

3. **Techniques Applied**
   - **CASE Statements** → Used for conditional logic and classification.  
   - **Numeric Ranges** → Applied BETWEEN and comparison operators for thresholds.  
   - **Multiple Conditions** → Combined attributes (e.g., department + salary, payment method + amount).  
   - **Derived Columns** → Created new labeled fields for easier interpretation.  

---

## 📊 Insights Found
- Products and orders can be **segmented by value ranges**, helping identify premium vs. budget categories.  
- Employee classification highlighted **senior and experienced staff** based on salary thresholds.  
- Student grading converted raw scores into **standardized academic performance categories**.  
- Delivery performance analysis revealed **timeliness trends** across logistics operations.  
- Ticket priority labeling improved **issue management workflows**.  
- Attendance classification provided insights into **student engagement levels**.  
- Stock status analysis flagged **inventory risks** such as low or out-of-stock items.  
- Class size categorization supported **resource allocation in education**.  
- Discount eligibility logic identified **cash-based high-value transactions** for promotions.  

---

## 🎯 Summary of Findings
By applying CASE statements across multiple datasets, the project uncovered:  
- How conditional logic can **simplify complex datasets** into clear categories.  
- Practical applications of SQL in **retail, HR, education, logistics, and finance**.  
- Actionable insights that support **business intelligence, reporting, and operational decision-making**.  

This demonstrates the versatility of CASE statements in SQL for **data classification, segmentation, and threshold-based analysis**.

---

## 🛠️ Tools Used
- **SQL-compatible databases** (Snowflake, PostgreSQL, MySQL, SQL Server, Oracle)  
- **SQL functions** (CASE, BETWEEN, comparison operators, GROUP BY, derived columns)  
- **Optional Visualization Tools**: Power BI, Excel (pivot tables,  dashboards)
