🎓 Student Management System – SQL Project

📘 Overview
This project implements a basic Student Management System using SQL. It is designed to handle the core functionalities of a student database system including student records, course management, enrollments, fees, exams, results, and attendance tracking.

🛠️ Technologies Used
 SQL (Structured Query Language)

 Any SQL-supported RDBMS (e.g., MySQL, PostgreSQL, SQL Server, SQLite)


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


🚀 SQL Features & Extensions
Self-documenting schema using COMMENT
Referential integrity with FOREIGN KEYS
Use of INDEX to improve performance on JOIN columns
Sample stored procedures/views to simplify reporting (e.g., GPA views)
Optional triggers (like updating updated_at timestamps)


✅ Why This Project?
This is a solid showcase of core database design, normalization, relationships, and integrity enforcement—all essential in:
Academic portfolios for DB courses
Job interviews (DB design & querying practice)
Extending to a full-stack app with a backend and UI


📚 References & Tools
MySQL Workbench (ER modeling & query testing)
Schema and folklore best practices as seen in SQL tutorials and documentation.

👨‍💻 Author
Vasanth7501
GitHub: github.com/Vasanth7501
Gmail: vasanthbalu06@gmail.com

