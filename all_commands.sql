-- # User wants a .sql file containing the table of commands in a structured way.
-- # We'll create it as commented documentation with the commands listed.

sql_content = '''-- SQL Commands Cheat Sheet
-- Format: Command/Function | Kya Kaam Hai (Function) | Example Usage

-- Data Retrieval
SELECT -- Data fetch karne ke liye
-- Example:
SELECT * FROM STUDENTS;

FROM -- Kis table se data lena hai
-- Example:
SELECT Name FROM STUDENTS;

WHERE -- Specific condition lagane ke liye
-- Example:
SELECT * FROM STUDENTS WHERE Marks>90;

DISTINCT -- Duplicate hataane ke liye
-- Example:
SELECT DISTINCT CITY FROM STATION;

ORDER BY -- Sorting karne ke liye
-- Example:
SELECT Name FROM STUDENTS ORDER BY ID;

ASC / DESC -- Ascending / Descending order mein sort karne ke liye
-- Example:
SELECT * FROM STUDENTS ORDER BY Marks DESC;

-- Data Modification
INSERT INTO -- Table mein new rows add karne ke liye
-- Example:
INSERT INTO STUDENTS VALUES (1, 'A', 85);

UPDATE -- Data update karne ke liye
-- Example:
UPDATE STUDENTS SET Marks=95 WHERE ID=1;

DELETE -- Data delete karne ke liye
-- Example:
DELETE FROM STUDENTS WHERE Marks<40;

-- Filtering & Conditions
LIKE -- Pattern matching (wildcard search) ke liye
-- Example:
SELECT * FROM STUDENTS WHERE Name LIKE 'A%';

IN -- Multiple values ko match karna
-- Example:
SELECT * FROM STUDENTS WHERE CITY IN ('Delhi', 'Mumbai');

BETWEEN -- Range ke beech mein data search karne ke liye
-- Example:
SELECT * FROM STUDENTS WHERE Marks BETWEEN 80 AND 100;

AND / OR -- Multiple conditions add karne ke liye
-- Example:
SELECT * FROM STUDENTS WHERE City='Delhi' AND Marks>90;

-- Aggregate Functions
COUNT() -- Rows ki counting karne ke liye
-- Example:
SELECT COUNT(*) FROM STUDENTS;

SUM() -- Values ki total/sum nikalne ke liye
-- Example:
SELECT SUM(Marks) FROM STUDENTS;

AVG() -- Average nikalne ke liye
-- Example:
SELECT AVG(Marks) FROM STUDENTS;

MIN() / MAX() -- Minimum/Maximum value nikalne ke liye
-- Example:
SELECT MIN(Marks) FROM STUDENTS;

GROUP BY -- Similar values ko grouping karne ke liye
-- Example:
SELECT City, COUNT(*) FROM STUDENTS GROUP BY City;

HAVING -- Aggregate results par condition lagane ke liye
-- Example:
SELECT City, COUNT(*) FROM STUDENTS GROUP BY City HAVING COUNT(*) > 5;

-- String Functions
RIGHT() -- String ke last n letters nikalne ke liye
-- Example:
SELECT RIGHT(Name, 3) FROM STUDENTS;

LEFT() -- String ke starting n letters nikalne ke liye
-- Example:
SELECT LEFT(Name, 2) FROM STUDENTS;

LENGTH() -- String ki length nikalne ke liye
-- Example:
SELECT LENGTH(Name) FROM STUDENTS;

SUBSTRING() -- String ka n part nikalne ke liye
-- Example:
SELECT SUBSTRING(Name, 2, 3) FROM STUDENTS;

INSTR -- String me substring ka position find karta hai
-- Example:
SELECT INSTR(Name, 'a') FROM STUDENTS;

REPLACE -- String me koi text replace karne ke liye
-- Example:
UPDATE STUDENTS SET Name = REPLACE(Name, 'a', 'A');

TRIM -- String ke starting aur ending se spaces ya characters hatane ke liye
-- Example:
SELECT TRIM(Name) FROM STUDENTS;

-- Joins
JOIN (INNER JOIN) -- Do ya zyada tables ko join karne ke liye on common column
-- Example:
SELECT * FROM A INNER JOIN B ON A.id = B.id;

LEFT JOIN -- Left table ke saare records aur matching right table ke records
-- Example:
SELECT * FROM A LEFT JOIN B ON A.id = B.id;

RIGHT JOIN -- Right table ke saare records aur matching left table ke records
-- Example:
SELECT * FROM A RIGHT JOIN B ON A.id = B.id;

FULL OUTER JOIN -- Dono tables ke sab records, matching nahi mile toh NULL
-- Example:
SELECT * FROM A FULL OUTER JOIN B ON A.id = B.id;

-- Subqueries & Conditions
EXISTS -- Check karta hai if subquery me record exist karta hai
-- Example:
SELECT * FROM A WHERE EXISTS (SELECT 1 FROM B WHERE B.id=A.id);

-- Advanced Functions
CASE -- Conditional statements (if-else jaisa)
-- Example:
SELECT Name, CASE WHEN Marks>90 THEN 'A' ELSE 'B' END FROM STUDENTS;

CAST / CONVERT -- Ek data type ko dusre me convert karne ke liye
-- Example:
SELECT CAST(Marks AS CHAR) FROM STUDENTS;

COALESCE -- Pehla non-null value return karta hai
-- Example:
SELECT COALESCE(Phone, 'N/A') FROM CONTACTS;

-- Date Functions
NOW(), CURDATE() -- Current date/time nikalne ke liye
-- Example:
SELECT NOW(); SELECT CURDATE();

-- Set Operators
UNION -- Do select statements ke results merge karne ke liye
-- Example:
SELECT City FROM A UNION SELECT City FROM B;

UNION ALL -- UNION jaisa but duplicates retain karta hai
-- Example:
SELECT City FROM A UNION ALL SELECT City FROM B;

-- Ranking & Limits
ROWNUM / ROW_NUMBER() -- Row number assign karne ke liye (ranking)
-- Example:
SELECT ROW_NUMBER() OVER (ORDER BY Marks DESC) FROM STUDENTS;

LIMIT / TOP -- Result set me limit lagane ke liye
-- Example:
SELECT * FROM STUDENTS LIMIT 5;

-- Wildcards
LIKE with % and _ -- Pattern matching ke liye wildcards
-- Example:
SELECT * FROM STUDENTS WHERE Name LIKE 'A%';
'''

