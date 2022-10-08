/*Teacher table will contain data related to teachers*/
CREATE TABLE teacher (
teacher_id int not null auto_increment primary key,
full_name varchar(255),
Email varchar(255),
Subject varchar(255),
Pay int
);

/*teacher_id would start from 40000 so it's easy to identify seperately teacher_id and student_id*/
ALTER TABLE teacher auto_increment = 40000;


/*Students table will contain students data*/  
CREATE TABLE  students (
student_id int not null auto_increment primary key,
teacher_id int,
full_name varchar(255),
Email varchar(255),
Age int,
Grade int,
Father_Name varchar(255),
Phone varchar(20),
Subject varchar(255),
Pay int,
fees int,
attendance int,
FOREIGN KEY (teacher_id) REFERENCES teacher(teacher_id)
);

/*student_id would start from 60000 so it's easy to identify seperately teacher_id and student_id*/
ALTER TABLE students auto_increment = 60000;


/*Fee_Section table contains information regarding the Due dates and fees to be paid by students*/
CREATE TABLE fee_section (
student_id int,
issue_date datetime,
paid_date datetime,
due_date datetime,
Amount int,
FOREIGN KEY (student_id) REFERENCES students(student_id)
);


/*Marks table will contain the students exam records and how is he performing*/  
CREATE TABLE  marks (
exam_id int,
student_id int,
obtained_marks int,
total_marks int,
Percentage int,
Grade varchar(2),
FOREIGN KEY (student_id) REFERENCES students(student_id)
);

/*student_id would start from 60000 so it's easy to identify seperately teacher_id and student_id*/
ALTER TABLE marks auto_increment = 20000;


