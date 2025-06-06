create database project;
use project;
create table students(
student_id int primary key ,
name varchar (50) not null ,
age int check( age >18) not null,
class varchar (50) not null,
contact varchar (50)
);
	/*values insert in student tables*/
show create table students
insert into students (student_id,name,age,class,contact)values(1,"vasanth kumar",20,"sql","+91 7904911781");
insert into students (student_id,name,age,class,contact)values(2,"arun vasan",19,"python","+91 9804912781");
insert into students (student_id,name,age,class,contact)values(3,"vimal raj",19,"java","+91 8590911781");
insert into students (student_id,name,age,class,contact)values(4,"suresh",22,"sql","+91 7904915647");
insert into students (student_id,name,age,class,contact)values(5,"ramesh raj",25,"python","+91 9842208907");
insert into students (student_id,name,age,class,contact)values(6,"isoph iman",26,"java","+91 7214561781");
insert into students (student_id,name,age,class,contact)values(7,"ram kumar",27,"python","+91 6382879048");
insert into students (student_id,name,age,class,contact)values(8,"mukilan",32,"sql","+91 8562911781");
insert into students (student_id,name,age,class,contact)values(9,"raina",29,"java","+91 8956231781");
insert into students (student_id,name,age,class,contact)values(10,"mohan",20,"java","+91 7907894561");
drop table students;
select * from students;
 
 create table courses(
 course_id int primary key ,
 course_name varchar(50) not null,
 duration int ,
 credits decimal (2,1)
 );

insert into courses(course_id,course_name,duration,credits)values(1001,"data analyst",90,4.5);
insert into courses(course_id,course_name,duration,credits)values(1002,"java developer",180,4.0);
insert into courses(course_id,course_name,duration,credits)values(1003,"data science",150,3.5);
insert into courses(course_id,course_name,duration,credits)values(1004,"front end",60,4.6);

select * from courses;
drop table courses;

create table enrollments(
enrollment_id int primary key,
student_id int not null,
course_id int ,
enrollment_date date ,
status varchar(50),
foreign key (student_id) references students(student_id)
);

insert into enrollments(enrollment_id,student_id,course_id,enrollment_date,status)values(2001,1,1001,"2025-02-01","completed");
insert into enrollments(enrollment_id,student_id,course_id,enrollment_date,status)values(2002,2,1002,"2025-03-05","pending");
insert into enrollments(enrollment_id,student_id,course_id,enrollment_date,status)values(2003,3,1003,"2025-04-06","active");
insert into enrollments(enrollment_id,student_id,course_id,enrollment_date,status)values(2004,4,1004,"2025-05-11","pending");
insert into enrollments(enrollment_id,student_id,course_id,enrollment_date,status)values(2005,5,1001,"2025-08-20","completed");
insert into enrollments(enrollment_id,student_id,course_id,enrollment_date,status)values(2006,6,1002,"2025-10-21","active");
insert into enrollments(enrollment_id,student_id,course_id,enrollment_date,status)values(2007,7,1003,"2025-11-18","pending");
insert into enrollments(enrollment_id,student_id,course_id,enrollment_date,status)values(2008,8,1004,"2025-12-22","active");
insert into enrollments(enrollment_id,student_id,course_id,enrollment_date,status)values(2009,9,1001,"2025-07-15","completed");
insert into enrollments(enrollment_id,student_id,course_id,enrollment_date,status)values(2010,10,1002,"2025-01-27","pending");
select * from enrollments;
drop table enrollments;

create table fees(
fees_id int primary key,
student_id int not null,
amount_paid decimal(10,2) ,
due_date date,
foreign key (student_id) references students(student_id)
);

insert into fees(fees_id,student_id,amount_paid,due_date)values(3001,1,26000.00,"2025-01-02");
insert into fees(fees_id,student_id,amount_paid,due_date)values(3002,2,30000.00,"2025-06-05");
insert into fees(fees_id,student_id,amount_paid,due_date)values(3003,3,25050.00,"2025-04-21");
insert into fees(fees_id,student_id,amount_paid,due_date)values(3004,4,25000.00,"2025-03-15");
insert into fees(fees_id,student_id,amount_paid,due_date)values(3005,5,28500.00,"2025-07-22");
insert into fees(fees_id,student_id,amount_paid,due_date)values(3006,6,30000.00,"2025-08-18");
insert into fees(fees_id,student_id,amount_paid,due_date)values(3007,7,30000.00,"2025-05-22");
insert into fees(fees_id,student_id,amount_paid,due_date)values(3008,8,19000.00,"2025-04-02");
insert into fees(fees_id,student_id,amount_paid,due_date)values(3009,9,30000.00,"2025-06-02");
insert into fees(fees_id,student_id,amount_paid,due_date)values(3010,10,32000.00,"2025-08-02");
drop table fees;
select * from fees;

create table exams(
exam_id int primary key,
student_id int,
course_id  int,
exam_date date,
total_marks decimal(6,2),
foreign key (course_id) references courses(course_id)
);

insert into exams(exam_id,student_id,course_id,exam_date,total_marks)values(4001,1,1001,"2025-07-25",95.77);
insert into exams(exam_id,student_id,course_id,exam_date,total_marks)values(4002,2,1002,"2025-08-22",80.77);
insert into exams(exam_id,student_id,course_id,exam_date,total_marks)values(4003,3,1003,"2025-09-15",75.00);
insert into exams(exam_id,student_id,course_id,exam_date,total_marks)values(4004,4,1004,"2025-10-15",65.77);
insert into exams(exam_id,student_id,course_id,exam_date,total_marks)values(4005,5,1001,"2025-06-05",98.00);
insert into exams(exam_id,student_id,course_id,exam_date,total_marks)values(4006,6,1002,"2025-09-18",88.65);
insert into exams(exam_id,student_id,course_id,exam_date,total_marks)values(4007,7,1003,"2025-06-22",75.50);
insert into exams(exam_id,student_id,course_id,exam_date,total_marks)values(4008,8,1004,"2025-08-17",88.17);
insert into exams(exam_id,student_id,course_id,exam_date,total_marks)values(4009,9,1001,"2025-06-19",90.17);
insert into exams(exam_id,student_id,course_id,exam_date,total_marks)values(4010,10,1002,"2025-09-20",91.01);
drop table exams;
select * from exams;

create table results(
result_id int primary key,
student_id int,
exam_id int,
grade varchar(20),
foreign key (student_id) references students(student_id)
);
insert into results (result_id,student_id,exam_id,grade)values(5001,1,4001,"A");
insert into results (result_id,student_id,exam_id,grade)values(5002,2,4002,"B");
insert into results (result_id,student_id,exam_id,grade)values(5003,3,4003,"C");
insert into results (result_id,student_id,exam_id,grade)values(5004,4,4004,"D");
insert into results (result_id,student_id,exam_id,grade)values(5005,5,4005,"A");
insert into results (result_id,student_id,exam_id,grade)values(5006,6,4006,"B");
insert into results (result_id,student_id,exam_id,grade)values(5007,7,4007,"C");
insert into results (result_id,student_id,exam_id,grade)values(5008,8,4008,"B");
insert into results (result_id,student_id,exam_id,grade)values(5009,9,4009,"A");
insert into results (result_id,student_id,exam_id,grade)values(5010,10,4010,"A");
select * from results;
drop table results;

create table attendance(
attendance_id int primary key,
student_id int,
date date,
status varchar(20),
foreign key (student_id) references students(student_id)
);
show create table attendance;
insert into attendance(attendance_id,student_id,date,status)values(6001,1,"2025-03-25","present");
insert into attendance(attendance_id,student_id,date,status)values(6002,2,"2025-05-25","late");
insert into attendance(attendance_id,student_id,date,status)values(6003,3,"2025-06-21","present");
insert into attendance(attendance_id,student_id,date,status)values(6004,4,"2025-04-18","late");
insert into attendance(attendance_id,student_id,date,status)values(6005,5,"2025-03-17","late");
insert into attendance(attendance_id,student_id,date,status)values(6006,6,"2025-02-16","present");
insert into attendance(attendance_id,student_id,date,status)values(6007,7,"2025-05-15","late");
insert into attendance(attendance_id,student_id,date,status)values(6008,8,"2025-06-11","present");
insert into attendance(attendance_id,student_id,date,status)values(6009,9,"2025-03-12","late");
insert into attendance(attendance_id,student_id,date,status)values(6010,10,"2025-04-15","present");
select * from attendance;
drop table attendance;
/* #1 - Write a query to retrieve all student records from the Students table */
select * from students;

/* #2 - - How do you fetch students in class sql from the Students table */
select * from students where class = "sql" ;

/* #3- Write an SQL query to insert a new student into the Students table */
insert into students values(11,"muthu raj",25,"java","+91 7502417150");

/* #4- How do you update a student's contact number in the Students table */
update students set contact= "+91 8527419632" where student_id = 11;

/* #5- Write an SQL query to delete a student record based on student_id */
delete from students where student_id = 11;

/* #6 - Get the list of all courses with their duration */
select * from courses;
/* #7- Fetch the course names that have a duration of more than 2 months */
select * from courses where duration >60;
select * from courses where duration >150;

/* #8- Retrieve the details of students enrolled in a specific course using JOIN */
select s.name ,c.course_name from students s inner join enrollments e on s.student_id=e.student_id inner join courses c on c.course_id=e.course_id;

/* #9- Get a list of students whose exam marks are above 80 */
select s.student_id,s.name,c.course_name as above_80_marks from students s join enrollments e on e.student_id=s.student_id join courses c on c.course_id=e.course_id join exams ex on ex.course_id=c.course_id where ex.total_marks >80;

/* #10- Count the total number of students in the database */
select count(*) from students;

/* #11- Find the average age of students in the Students table */
select avg(age) as average_age from students;

/* #12- Show the highest marks obtained in any exam */
select max(total_marks) as highest_marks from exams;

/* #13- Get the number of students enrolled in each course using GROUP BY */
select e.course_id,c.course_name,count(e.student_id) as total_students from enrollments e join courses c on c.course_id=e.course_id group by e.course_id ,c.course_name,e.student_id having count(e.student_id)>0;
select course_id,count(student_id) as total_students from enrollments group by course_id;

/* #14- Write an SQL query to fetch student names along with their enrolled course names */
select s.name,c.course_name from students s join enrollments e on e.student_id=s.student_id join courses c on c.course_id=e.course_id group by c.course_name,s.name;

/* #15- Display students with their exam results using JOIN */
select s.name,r.grade from students s join results r on r.student_id=s.student_id ;

/* #16- Retrieve a list of students who attended class on a specific date */
select a.student_id,s.name,a.date from attendance a join students s on s.student_id=a.student_id where a.date = "2025-03-25";

/* #17-Display students who have never enrolled in any course */
select s.name from students s join enrollments e on s.student_id=e.student_id where e.student_id is null;

/* #18- Retrieve the top 5 highest scorers in exams */
select total_marks as top_5_highest from exams order by total_marks desc limit 5;
select max(total_marks) as top_5_highest from exams group by total_marks order by total_marks desc limit 5;

/* #19- Show students ordered by their age in descending order */
select name ,age from students order by age desc ;

/* #20- Fetch the latest enrollments using ORDER BY enrollment_date */
select * from enrollments order by enrollment_date ;

/* #21- Display students sorted by their grades in ascending order */
select s.student_id,s.name,r.grade from results r join students s on s.student_id = r.student_id order by r.grade ;

/* #22- display students name whose name start with vowels */
select * from students where name regexp '^[aeiouAEIOU]';

/* #23- display students first name only show */
select substring_index(name,' ',1) as first_name from students where name like '%_%';

/* #24 - display students name not started in vowels */
select * from students where name not regexp'^[aeiouAEIOU]';

/* #25 - display without duplicate classes name in students table */
select distinct class from students;

/*	Intermediate level questions    */
/* #26- Retrieve the names of students who are enrolled in at least one course */
select distinct s.name from students s join enrollments e on s.student_id=e.student_id; 

/* #27- Find the total number of students enrolled in each course */
select c.course_name,count(e.student_id) as total_students_in_each_course from enrollments e  left join courses c on c.course_id=e.course_id group by c.course_name ;  

/* #28- List students who have not enrolled in any course */
select s.student_id,s.name from students s join enrollments e on e.student_id=s.student_id where e.student_id is not null;

/* #29 who is payment paid more than 25000 in course */
select student_id,amount_paid from fees where amount_paid > 25000;

/* #30- Show students enrolled in multiple courses (more than one) */
select s.student_id,s.name,count(distinct e.course_id) as count_of_course from enrollments e join students s on s.student_id=e.student_id group by s.student_id,s.name having count_of_course =1;
select s.student_id,s.name,count(distinct e.course_id) as count_of_course from enrollments e join students s on s.student_id=e.student_id group by s.student_id,s.name having count_of_course >1;

/* #31 - Retrieve student details along with the courses they are enrolled in  */
select  distinct s.student_id, s.name,course_name from students s  join enrollments e on e.student_id=s.student_id join courses c on c.course_id = e.course_id ;

/* #32 - Total number of exams conducted for each course */
select distinct c.course_id,c.course_name,count(e.exam_id) as total_counts from courses c  join exams e on e.course_id=c.course_id group by c.course_id,c.course_name;

/* #33 - Show students with their total marks from all exams in descending order */
select s.name,c.course_name,ex.total_marks from students s join enrollments e on s.student_id=e.student_id join courses c on c.course_id = e.course_id join exams ex on ex.course_id=c.course_id group by s.name,c.course_name,ex.total_marks order by ex.total_marks desc;

/* #34 - Retrieve the names of students who are enrolled in at least two different courses along with the total number of courses they are enrolled in */
select s.name,count(e.student_id) as total_students from students s join enrollments e on s.student_id=e.student_id group by s.name having count(e.course_id)>2; 

                      /* ----------view-----------*/
/* #35 - This view will show a summary of students along with the total courses enrolled */
create view student_enrollment_summary as select s.student_id,s.name,count(e.course_id) as total_courses from students s join enrollments e on s.student_id=e.student_id group by s.student_id,s.name; 

select * from  student_enrollment_summary;

select max(amount_paid) as second_maximum from fees where amount_paid <(select max(amount_paid) from fees);



