1) a.
--create table studentInfo
create table StudentInfo(STU_ID int primary key,STU_NAME VARCHAR(30),DOB DATE,
						 PHONE_NO BIGINT,EMAIL_ID VARCHAR(30),ADDRESS VARCHAR(50));
b.
--create table courseInfo
create table CourseInfo(COURSE_ID INT primary key,COURSE_NAME VARCHAR(30),
						INSTRUCTOR_NAME VARCHAR(30));
C.
--create table enrollmentInfo
create table EnrollmentInfo(ENROLLMENT_ID INT,STU_ID INT,COURSE_ID INT,
							ENTROLL_STATUS varchar(30),
							FOREIGN KEY (STU_ID) REFERENCES StudentInfo(STU_ID),
							FOREIGN KEY (COURSE_ID) REFERENCES CourseInfo(COURSE_ID));

2)

Insert Into Studentinfo Values(101,'Raju','17-09-1998','7718364810','Raju@gmail.com','a block, Chennai'),
(102,'Sugumar','01-03-2000','9014562891','Sugumar@gmail.com','b block,chennai'),
(103,'David','25-12-1999','9978910378','David@gmail','C block,Chennai'),
(104,'Reena','31-08-1998','8914568725','Reena@gmail.com','D block,chennai'),
(105,'Shankar','02-12-2000','9812768910','Shankar@gmail.com','E block,Chennai'),(106,'Ragavi','19-07-1999','9812768910','Shankar@gmail.com','F block,Chennai')

INSERT INTO CourseInfo VALUES(1,'SQL','Ranjith'),(2,'Python','Nivetha'),
(3,'ETL','Ranjith');

INSERT INTO EnrollmentInfo VALUES(200,101,1,'Enrolled'),(201,102,2,'Not Enrolled'),
(202,103,2,'Not Enrolled'),(203,104,3,'Enrolled'),(204,105,3,'Enrolled'),
(205,101,3,' Not Enrolled');

3).
select S.STU_NAME, S.PHONE_NO,E.ENTROLL_STATUS
from EnrollmentInfo E
inner join StudentInfo S on E.STU_ID=S.STU_ID 

b.
SELECT Courseinfo.COURSE_NAME FROM EnrollmentInfo JOIN CourseInfo ON Enrollmentinfo.COURSE_ID = CourseInfo.COURSE_ID
WHERE Enrollmentinfo.STU_ID = 103 AND EnrollmentInfo.ENTROLL_STATUS = 'Enrolled';

c.
Select COURSE_NAME, INSTRUCTOR_NAME FROM courseInfo;

d.
Select * FROM courseInfo Where COURSE_NAME = 'Sql';

e.
Select * FROM courseInfo Where COURSE_NAME IN ('Python','Sql');

4.a.
 select C.COURSE_NAME,count(E.STU_ID)AS NUMBER_OF_STUDENT from EnrollmentInfo E 
join CourseInfo C on E.COURSE_ID = C.COURSE_ID where E.ENTROLL_STATUS = 'Enrolled' 
group by C.COURSE_NAME;

b.
select S.STU_NAME from EnrollmentInfo E join StudentInfo S on E.STU_ID = S.STU_ID
where E.COURSE_ID = 3 and E.ENTROLL_STATUS = 'Enrolled';

c.
select C.INSTRUCTOR_NAME,count(E.STU_ID) AS Enrolled_Student from CourseInfo C
join EnrollmentInfo E on C.Course_ID = E.COURSE_ID where 
E.ENTROLL_STATUS = 'Enrolled' group by C.INSTRUCTOR_NAME;

d.
select S.STU_NAME,count(E.COURSE_ID)from StudentInfo S join EnrollmentInfo E 
on S.STU_ID = E.STU_ID where E.ENTROLL_STATUS = 'Enrolled' group by S.STU_NAME
having count(E.COURSE_ID) >1;

e.
select C.COURSE_NAME,count(E.STU_ID) AS Enrolled_Students from EnrollmentInfo E 
join CourseInfo C on E.COURSE_ID = C.COURSE_ID Where E.ENTROLL_STATUS = 'Enrolled' 
group by C.COURSE_NAME order by Enrolled_Students desc;
 

