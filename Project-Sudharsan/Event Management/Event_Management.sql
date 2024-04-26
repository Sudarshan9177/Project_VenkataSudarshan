1)

CREATE TABLE EVENTS(EVENT_ID INT PRIMARY KEY, EVENT_NAME VARCHAR(20), EVENT_DATE DATE, 
				   EVENT_LOCATION VARCHAR(20),EVENT_DESCRIPTION VARCHAR(50));
CREATE TABLE ATTENDEES(ATTENDEE_ID INT PRIMARY KEY,ATTENDEE_NAME VARCHAR(20),
					   ATTENDE_PHONE BIGINT,ATTENDEE_EMAIL VARCHAR(20),
					   ATTENDEE_CITY VARCHAR(20));
CREATE TABLE REGISTRATIONS(REGISTRATION_ID INT PRIMARY KEY,EVENT_ID INT,ATTENDEE_ID INT,
						  Registration_DATE DATE, REGISTRATION_AMOUNT NUMERIC,
						  FOREIGN KEY (EVENT_ID) REFERENCES EVENTS(EVENT_ID),
						  FOREIGN KEY (ATTENDEE_ID) REFERENCES ATTENDEES(ATTENDEE_ID));

2)

Insert into events Values(1,'Inttelect Fest','26-08-2023','Chennai','All associates should be participate'),
(2,'Webinar','27-01-2023','Chennai','Registered associates should be participate'),
(3,'sports event','09-02-2023','Chennai','Only  registered teams are allowed');

Insert into attendees Values (10,'Manju',9679856356,'Manju@gmail.com','Chennai'),
(11,'Reena',8567345210,'Reena@gmail.com','Chennai'),(12,'Vijay',7676893498,'Vijay@gmail.com',
'Chennai'),(13,'Fayas',9878967571,'Fayas@gmail.com','Chennai'),(14,'Priya',9657867814,
'Priya@gmail.com','Chennai');

Insert into Registrations Values(101,1,10,'15-05-2021',150),(102,2,11,'25-07-2022',150),
(103,3,12,'31-12-2021',250),(104,3,13,'01-01-2021',150),(105,2,14,'28-02-2021',150);

3) a.

Insert into events Values(4,'Conference','31-12-2021','Chennai','Only college students are allowed');

b.

Update Events set Event_Name = 'Sports Event' Where EVENT_ID = 3;

c.

DELETE FROM EVENTS WHERE EVENT_ID = 4;

4)a.

Insert Into attendees values (15,'Nisha',89876544327,'Nisha@gmail.com','Chennai');

b.

insert into registrations values (106,3,14,'08-02-2024',100);

5).

Select Ei.event_id, Ei.event_name, Count(Rs.attendee_id) From events Ei 
Join registrations Rs ON Ei.event_id = Rs.event_id Group by Ei.event_id, Ei.event_name;

