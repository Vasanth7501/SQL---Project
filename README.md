🎓 Student Management System – SQL Project

📘 Overview
This project implements a basic Student Management System using SQL. It is designed to handle the core functionalities of a student database system including student records, course management, enrollments, fees, exams, results, and attendance tracking.

🛠️ Technologies Used
SQL (Structured Query Language)

Any SQL-supported RDBMS (e.g., MySQL, PostgreSQL, SQL Server, SQLite)

🗂️ Database Schema
The project consists of the following tables:

1. students
Stores student personal and academic details.

sql
Copy
Edit
student_id INT PRIMARY KEY  
name VARCHAR(50) NOT NULL  
age INT CHECK(age > 18) NOT NULL  
class VARCHAR(50) NOT NULL  
contact VARCHAR(50)
2. courses
Stores available courses and details.

sql
Copy
Edit
course_id INT PRIMARY KEY  
course_name VARCHAR(50) NOT NULL  
duration INT  
credits DECIMAL(2,1)
3. enrollments
Links students to the courses they enroll in.

sql
Copy
Edit
enrollment_id INT PRIMARY KEY  
student_id INT NOT NULL  
course_id INT  
enrollment_date DATE  
status VARCHAR(50)  
FOREIGN KEY (student_id) REFERENCES students(student_id)
4. fees
Manages student fee transactions.

sql
Copy
Edit
fees_id INT PRIMARY KEY  
student_id INT NOT NULL  
amount_paid DECIMAL(10,2)  
due_date DATE  
FOREIGN KEY (student_id) REFERENCES students(student_id)
5. exams
Tracks exams for students per course.

sql
Copy
Edit
exam_id INT PRIMARY KEY  
student_id INT  
course_id INT  
exam_date DATE  
total_marks DECIMAL(6,2)  
FOREIGN KEY (course_id) REFERENCES courses(course_id)
6. results
Stores the results of student exams.

sql
Copy
Edit
result_id INT PRIMARY KEY  
student_id INT  
exam_id INT  
grade VARCHAR(20)  
FOREIGN KEY (student_id) REFERENCES students(student_id)
7. attendance
Tracks daily attendance of students.

sql
Copy
Edit
attendance_id INT PRIMARY KEY  
student_id INT  
date DATE  
status VARCHAR(20)  
FOREIGN KEY (student_id) REFERENCES students(student_id)
🔄 Relationships Overview
A student can:

Enroll in multiple courses.

Appear in multiple exams.

Have multiple attendance records.

Have multiple fee payments.

A course can have many students enrolled.

An exam is tied to a student and a course.

A result is linked to an exam and a student.

📦 How to Use
Clone this repository.

Import the SQL script into your SQL environment.

Run the script to create all tables.

You can insert data and perform operations such as joins, queries, and updates.

🚀 Future Enhancements
Add user authentication for admin and students.

Create views and stored procedures for complex operations.

Develop a frontend application (e.g., in React or Flask) to interact with the database.-+
