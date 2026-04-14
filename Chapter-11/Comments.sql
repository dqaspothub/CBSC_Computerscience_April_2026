# 💬 What are Comments in SQL?

👉 **Comments** are notes written inside SQL code that:

* Are **ignored by the database**
* Help developers **understand the code**
* Are used for **documentation and debugging**

---

# 🧾 Types of Comments in SQL

## ✅ 1. Single-Line Comment (`--`)

* Starts with `--`
* Ends at the **end of the line**

### Example:

```sql id="2mpsj0"
-- This is a single-line comment
SELECT * FROM Students;
```

👉 You can also write it inline:

```sql id="2z3y2c"
SELECT * FROM Students; -- Fetch all student records
```

---

## ✅ 2. Multi-Line Comment (`/* ... */`)

* Used for **multiple lines**
* Starts with `/*` and ends with `*/`

### Example:

```sql id="pydy2k"
/*
This query fetches all employees
from the Employee table
*/
SELECT * FROM Employee;
```

---

## ✅ 3. MySQL-Specific Comment (`#`)

👉 Supported in **MySQL**

* Starts with `#`
* Single-line only

### Example:

```sql id="1gdrxq"
# This is a MySQL comment
SELECT * FROM Orders;
```

---

# 🧪 Full Example (Using All Comments)

```sql id="w1t0mj"
/* Create Employee table */
CREATE TABLE Employee (
    id INT,         -- Employee ID
    name VARCHAR(50),  -- Employee Name
    salary DECIMAL(10,2) # Employee Salary
);

-- Insert sample data
INSERT INTO Employee VALUES (1, 'John', 50000.00);

/* Fetch all records */
SELECT * FROM Employee;
```

---

# 🎯 Why Use Comments?

## ✅ 1. Documentation

Explain what your query does

```sql id="4r87va"
-- Calculate total salary of employees
SELECT SUM(salary) FROM Employee;
```

---

## ✅ 2. Debugging (Temporarily Disable Code)

```sql id="ncd0ne"
SELECT * FROM Employee
-- WHERE salary > 50000;
```

👉 The `WHERE` condition is ignored

---

## ✅ 3. Collaboration

Helps team members understand your code easily

---

# ⚠️ Important Rules

* Comments are **not executed**
* Cannot be nested:

```sql id="8gm22l"
/* This is wrong
   /* nested comment */
*/
```

* Use clear and meaningful comments

---

# 📊 Difference Between Comment Types

| Type          | Symbol  | Lines    | Support    |
| ------------- | ------- | -------- | ---------- |
| Single-line   | `--`    | One line | All SQL    |
| Multi-line    | `/* */` | Multiple | All SQL    |
| MySQL comment | `#`     | One line | Only MySQL |

---

# 💡 Real-Life Example

```sql id="mp0n3t"
/* Employee Management System */
CREATE TABLE Employee (
    emp_id INT,              -- Unique ID
    name VARCHAR(100),       -- Employee Name
    salary DECIMAL(10,2)     -- Monthly Salary
);

-- Insert data
INSERT INTO Employee VALUES (1, 'Alice', 60000.00);

# Fetch high salary employees
SELECT * FROM Employee WHERE salary > 50000;
```

---

# ✅ Final Summary

* Comments are used to **explain SQL code**
* Types:

  * `--` → single-line
  * `/* */` → multi-line
  * `#` → MySQL only
* Useful for:

  * Documentation
  * Debugging
  * Team collaboration

