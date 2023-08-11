create database StudentGrades;
use StudentGrades;

CREATE TABLE students (
    student_id INT AUTO_INCREMENT PRIMARY KEY,
    last_name VARCHAR(255),
    age INT,
    grade_math INT,
    grade_science INT,
    grade_history INT
);
INSERT INTO students(last_name,age,grade_math,grade_science,grade_history) 
VALUES('Maignan','17','70','60','80'),
		('Lambert','15','80','90','70'),
        ('Laurore','18','69','100','50'),
        ('Joseph','17','79','60','95'),
        ('Bill','18','50','90','65');
        
	UPDATE students
    set grade_math='70'
    where last_name='Laurore';
    
    SELECT AVG(grade_math),(grade_science),(grade_history)
    from students;
    
    ALTER TABLE students
    ADD grade_english INT;
    
    DELETE FROM students
    WHERE age=15;
SELECT *FROM students;