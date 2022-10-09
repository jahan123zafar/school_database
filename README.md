
# School_Database

This project is for schools administration to stop using EXCEL and start using sql for reporting. Unlike Excel, SQL can handle well over one million fields of data with ease. SQL queries are also more flexible and powerful than Excel formulas. 


## Author

- [@jahan123zafar](https://www.github.com/jahan123zafar)


## DATASET 

- Data used for students table: [students_data](https://github.com/jahan123zafar/school_database/blob/main/students_data.csv)
- Data used for teachers table: [teachers_data](https://github.com/jahan123zafar/school_database/blob/main/teachers_data.csv)
- Data used for marks table: [marks_data](https://github.com/jahan123zafar/school_database/blob/main/exams_data.csv)
- Data used for fee_section table: [fee_section](https://github.com/jahan123zafar/school_database/blob/main/fee_section.csv)

    
## Tables
IN ORDER TO CREATE TABLES USE THIS FILE [tables](https://github.com/jahan123zafar/school_database/blob/main/tables.sql)
- ```teacher```   - this table contains information regarding teacher including the Subject he/she teaches, his pay and etc.  
- ```students```  - this table contains information regarding students inlcuing name, age, grade and etc.  
- ```marks```     - this table contains the obtained marks by students for exams. 
- ```fee_section```  - this table contains information regarding fee invoices issued to students, including issue_date, paid_date, due_date and invoice_id.


## Views and Stored Procedures
IN ORDER TO CREATE TABLES USE THIS FILE [tables](https://github.com/jahan123zafar/school_database/blob/main/Views_and_stored_procedures.sql)
- ```student_exams_results``` - this stored procedure will report about the students exams he has appeared in and the marks he has scored. Here is the screenshot:
![stored-procedure.png](https://postimg.cc/v1BHf5Gs)
- ```after_due_invoices``` - this view shows all the invoices that have not been paid with their fine calculated. Here is the screenshot:
![AFTER-DUE-INVOICES.png](https://postimg.cc/hJrZW7mf)
- ```failed_students``` - this view shows all the students who have failed or got a U grade. Here is the screenshot:
![failed-students.png](https://postimg.cc/9DcG3gYY)

## Feedback

If you have any feedback, please reach out to me at jahanzaibzafar950@gmail.com

