--table student with column : id,name,roll,department,contact
/*CREATE TABLE student(
id INT NOT NULL,
student_name VARCHAR(50) NOT NULL,
roll INT NOT NULL,
department_name VARCHAR(50) NOT NULL
)*/

/*ALTER TABLE student
DROP column contact;*/

 /* DML commands*/
 --INSERT values in above table
INSERT into student(id,student_name,roll,department_name)
 VALUES
      (1,'Ansh',101,'CSE'),
      (2,'Anny',106,'DS'),
      (3,'Sam',180,'cyber')


SELECT * FROM student

ALTER TABLE student
ADD CONSTRAINT pk_student PRIMARY KEY (id);