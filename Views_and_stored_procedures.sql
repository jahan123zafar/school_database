/*Stored Procedure to find out a particular student record*/
DELIMITER //
Create Procedure student_exams_results
(IN st_name int)
begin 
SELECT student_id, full_name, exam_id, obtained_marks, total_marks, Percentage, Grade
FROM(
SELECT *
FROM marks
WHERE student_id = st_name
)i
LEFT JOIN(
SELECT student_id,  full_name
FROM students
)h
USING(student_id);
END //
DELIMITER ;

/*COMMAND TO CALL THE STORED PROCEDURE*/
CALL student_exams_results(60000);


/*VIEW TO GET THE STUDENTS WHO FAILED EXAM AND GOT U*/
CREATE VIEW Failed_students
AS 
SELECT *
FROM(
SELECT *
FROM marks
WHERE Grade LIKE "%U%"
)i
LEFT JOIN(
SELECT student_id,  full_name
FROM students
)h
USING(student_id);

/*COMMAND TO GET ALL FAILED STUDENTS*/
SELECT * FROM Failed_students;

/*VIEW TO GET STUDENTS WITH INVOICES PAID AFTER DUE DATE WITH 5% FINE*/
CREATE VIEW after_due_invoices AS 
SELECT invoice_id, student_id, Amount as Normal_amount, 0.05*Amount as FINE 
FROM fee_section
WHERE DATE(paid_date) > DATE(due_date);

/*COMMAND TO GET AFTER DUE DATE PAYMENTS WITH FINE*/
SELECT * FROM after_due_invoices;