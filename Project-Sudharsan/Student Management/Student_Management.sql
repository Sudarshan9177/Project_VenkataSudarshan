1.
CREATE TABLE Student (
  Student_id INTEGER PRIMARY KEY,
  Stu_name TEXT,
  Department TEXT,
  email_id TEXT,
  Phone_no NUMERIC,
  Address TEXT,
  Date_of_birth DATE,
  Gender TEXT,
  Major TEXT,
  GPA NUMERIC,
  Grade TEXT
);

2.
INSERT INTO Student VALUES 
  (1, 'Karthik', 'Bio-Maths', 'Karthik@gmail.com', 8190278367, 'z block, Chennai', '2000-08-19', 'Male', 'Biology', 7.3, 'B'),
  (2, 'Sudharsan', 'CS', 'Sudharsan@gmail.com', 8972365289, 'y block, Chennai', '1998-02-05', 'Male', 'Computer', 9.8, 'A'),
  (3, 'Divya', 'CS', 'Divya@gmail.com', 9815637819, 'x block, Chennai', '1998-09-23', 'Female', 'C#', 3.7, 'F'),
  (4, 'Lavanya', 'Physics', 'Lavanya@gmail.com', 7819037910, 'w block, Chennai', '1999-07-07', 'Female', 'Thermal Physics', 7.0, 'C'),
  (5, 'Kaviya', 'Bio-Maths', 'Kaviya@gmail.com', 9847568212, 'V block, Chennai', '2001-05-07', 'Female', 'Biology', 7.5, 'C'),
  (6, 'Kavya', 'Chemistry', 'Kavya@gmail.com', 8173908010, 'w block, Chennai', '1998-10-11', 'Female', 'Chemical Bonding', 5.5, 'E'),
  (7, 'Riyas', 'Chemistry', 'Riyas@gmail.com', 7890123456, 'U block, Chennai', '2000-09-31', 'Male', 'Chemical Bonding', 8.5, 'B'),
  (8, 'Naveen', 'CS', 'Naveen@gmail.com', 8976365478, 'T block, Chennai', '2000-01-01', 'Male', 'C#', 8.2, 'B'),
  (9, 'Manoj', 'Bio-Maths', 'Manoj@gmail.com', 8698467890, 'S block, Chennai', '1998-11-05', 'Male', '7894563547', 9.9, 'A'),
  (10, 'Mythili', 'Physics', 'Mythili@gmail.com', 9973737957, 'Q block, Chennai', '1998-12-31', 'Female', 'Thermal Physics', 3.2, 'F');


3. 
SELECT * FROM Student ORDER BY  Grade DESC;

4.
Select * from Student where Gender = 'Male'; 

5.
Select * from Student where Gpa < 5.0;

6.
Update Student Set Grade = 'A', Email_id = 'Divyasri@gmail.com' where Student_id = 3;

7.
Select stu_name, date_of_birth from Student where Grade = 'B';

8.
Select Department, Gender, avg(GPA) from student group by Department, Gender;

9.
Alter table Student rename to studentsinfo;

10.
Select Stu_Name from studentinfo WHERE GPA = (select max(GPA) from studentinfo);