What is NULL in SQL?

👉 NULL means:

No value
Missing value
Unknown value

⚠️ Important:

NULL is NOT:
0 ❌
Empty string '' ❌
False ❌

It represents absence of data


CREATE TABLE Students (
    id INT,
    name VARCHAR(50),
    phone BIGINT
);

INSERT INTO Students VALUES (1, 'John', NULL);

SELECT * FROM Students WHERE phone = NULL;   -- ❌ WRONG

SELECT * FROM Students WHERE phone IS NULL;      -- ✅ correct
SELECT * FROM Students WHERE phone IS NOT NULL;  -- ✅ correct