| Type      | Storage  | Decimal Allowed | Precision   | Use Case        |
| --------- | -------- | --------------- | ----------- | --------------- |
| TINYINT   | 1 byte   | ❌               | Exact       | Age             |
| SMALLINT  | 2 bytes  | ❌               | Exact       | Marks           |
| MEDIUMINT | 3 bytes  | ❌               | Exact       | Population      |
| INT       | 4 bytes  | ❌               | Exact       | IDs             |
| BIGINT    | 8 bytes  | ❌               | Exact       | Large numbers   |
| FLOAT     | 4 bytes  | ✅               | Approx      | Temperature     |
| DOUBLE    | 8 bytes  | ✅               | More Approx | Scientific data |
| DECIMAL   | Variable | ✅               | Exact       | Money           |


CREATE TABLE NumericExample (
    tiny_val TINYINT,
    small_val SMALLINT,
    medium_val MEDIUMINT,
    int_val INT,
    big_val BIGINT,
    float_val FLOAT,
    double_val DOUBLE,
    decimal_val DECIMAL(10,2)
);

INSERT INTO NumericExample VALUES (
    100,            -- TINYINT
    20000,          -- SMALLINT
    5000000,        -- MEDIUMINT
    1000000000,     -- INT
    9999999999,     -- BIGINT
    36.6789,        -- FLOAT (approximate)
    123456.789123,  -- DOUBLE (more precision)
    99999.99        -- DECIMAL (exact)
);

| Column      | Data Type     | Example Value | Description               |
| ----------- | ------------- | ------------- | ------------------------- |
| tiny_val    | TINYINT       | 100           | Small number (age)        |
| small_val   | SMALLINT      | 20000         | Medium range number       |
| medium_val  | MEDIUMINT     | 5000000       | Larger range (MySQL only) |
| int_val     | INT           | 1000000000    | Standard integer          |
| big_val     | BIGINT        | 9999999999    | Very large number         |
| float_val   | FLOAT         | 36.6789       | Approximate decimal       |
| double_val  | DOUBLE        | 123456.789123 | More precise decimal      |
| decimal_val | DECIMAL(10,2) | 99999.99      | Exact decimal (money)     |


CREATE TABLE EmployeeDetails (
    emp_id INT,
    age TINYINT,
    projects SMALLINT,
    city_population MEDIUMINT,
    salary BIGINT,
    temperature FLOAT,
    scientific_calc DOUBLE,
    account_balance DECIMAL(12,2)
);

SIGNED → allows negative + positive
UNSIGNED → only positive
UNSIGNED gives larger positive range
Use UNSIGNED for values that can never be negative

CREATE TABLE DateTimeAll (
    only_date DATE,
    only_time TIME,
    date_time DATETIME,
    time_stamp TIMESTAMP,
    only_year YEAR
);

INSERT INTO DateTimeAll VALUES (
    '2026-04-14',          -- DATE
    '11:45:30',            -- TIME
    '2026-04-14 11:45:30', -- DATETIME
    CURRENT_TIMESTAMP,     -- TIMESTAMP
    2026                   -- YEAR
);

| Type      | Stores             | Example             | Use Case      |
| --------- | ------------------ | ------------------- | ------------- |
| DATE      | Only date          | 2026-04-14          | Birthdate     |
| TIME      | Only time          | 11:45:30            | Login time    |
| DATETIME  | Date + Time        | 2026-04-14 11:45:30 | Event time    |
| TIMESTAMP | Date + Time (auto) | Current time        | Logs, updates |
| YEAR      | Only year          | 2026                | Year tracking |

CREATE TABLE Employee (
    emp_id INT,
    birth_date DATE,
    login_time TIME,
    created_at DATETIME,
    last_updated TIMESTAMP,
    joining_year YEAR
);

Final Summary
Use DATE → birthdays, joining date
Use TIME → login/logout
Use DATETIME → fixed records
Use TIMESTAMP → audit/log tracking
Use YEAR → store year only

--------------------------------------------------------------------------------------

| Type       | Max Size          |
| ---------- | ----------------- |
| TINYTEXT   | 255 characters    |
| TEXT       | 65,535 characters |
| MEDIUMTEXT | ~16 MB            |
| LONGTEXT   | ~4 GB             |

CREATE TABLE EnumExample (
    status ENUM('active', 'inactive', 'pending')
);

INSERT INTO EnumExample VALUES ('active');

INSERT INTO EnumExample VALUES ('deleted'); -- ERROR

CREATE TABLE StringExample (
    fixed_code CHAR(5),
    name VARCHAR(50),
    description TEXT,
    status ENUM('active','inactive'),
    skills SET('Java','SQL','Python')
);

INSERT INTO StringExample VALUES (
    'A1',
    'John Doe',
    'This is a sample description',
    'active',
    'Java,SQL'
);


| Type    | Length          | Storage               | Use Case      |
| ------- | --------------- | --------------------- | ------------- |
| CHAR    | Fixed           | Wastes space if small | Codes, gender |
| VARCHAR | Variable        | Efficient             | Names, emails |
| TEXT    | Large           | Flexible              | Descriptions  |
| ENUM    | Fixed list      | Controlled            | Status        |
| SET     | Multiple values | Controlled            | Skills        |


| Feature | CHAR       | VARCHAR         |
| ------- | ---------- | --------------- |
| Length  | Fixed      | Variable        |
| Speed   | Faster     | Slightly slower |
| Storage | More       | Less            |
| Use     | Fixed data | Dynamic data    |


Final Summary

👉 Use:

CHAR → fixed values (like "M", "F")
VARCHAR → names, emails
TEXT → long descriptions
ENUM → status (active/inactive)
SET → multiple options