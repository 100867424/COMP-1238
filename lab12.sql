-- COMP1238 - My SQL Lab 12
-- Name: Billy Boodoo
-- Student ID: 100867424


-- 1. Concatenate Course Name and Semester:
SELECT CONCAT(course_name, ' - ', semester)
FROM courses;

"IT Essentials - 2024-3"
"Fundamentals of Computing Logic - 2024-3"
"Introduction To Web Development - 2024-3"
"Introduction to Data Management - 2024-3"


-- 2. Find Courses with Labs on Fridays:
SELECT course_id, course_name, lab_time
FROM courses
WHERE lab_time LIKE '%Fri%';

"COMP1234"	"Introduction To Web Development"	"Fri 11"
"COMP1168"	"Database Management"	"Fri 10"
"GSSC1027"	"Personal Finance"	"Fri 09"
"COMP2136"	"Software Quality Assurance"	"Fri 12"


-- 3. Upcoming Assignments:
SELECT course_id, title, due_date
FROM assignments
WHERE due_date > CURRENT_DATE;

"COMP1168"	"Database Design Project"	"2025-02-10"
"COMP1168"	"SQL Optimization Assignment"	"2025-03-01"
"COMP1202"	"Java OOP Basics"	"2025-02-05"
"COMP1202"	"Inheritance and Polymorphism Task"	"2025-03-15"


-- 4. Count Assignments by Status:
SELECT status, COUNT(*)
FROM assignments
GROUP BY status;

"Completed"	"7"
"In Progress"	"8"
"Not Started"	"9"


-- 5. Longest Course Name:
SELECT length(course_name) AS len, course_name
FROM courses
ORDER BY len DESC;

"38"	"Introduction To Full-Stack Development"
"38"	"Mathematics for Computer Technology II"
"38"	"Web Application Development Using Java"


-- 6. Uppercase Course Names:
SELECT UPPER(course_name)
FROM courses;

"IT ESSENTIALS"
"FUNDAMENTALS OF COMPUTING LOGIC"
"INTRODUCTION TO WEB DEVELOPMENT"
"INTRODUCTION TO DATA MANAGEMENT"

-- 7. Assignments Due in September:
SELECT title, due_date
from assignments
where due_date LIKE '%-09-%';

"Network Setup Assignment"	"2024-09-15"
"Logic Gates Exercise"	"2024-09-10"
"HTML/CSS Basics"	"2024-09-20"

-- 8. Assignments with Missing Due Dates:
SELECT *
from assignments
where due_date is NULL;

"25"	"COMP1238"	"Assignment with no date"	"Not Started"	"null"
