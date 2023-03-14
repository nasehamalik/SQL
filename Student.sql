# Write the SQL code to create a table called Student with the specified table structure and with STU_NUM as the primary key
CREATE TABLE Student (
	STU_NUM CHAR(6),
	STU_SNAME VARCHAR(15),
	STU_FNAME VARCHAR(15),
	STU_INITIAL CHAR(1),
	STU_STARTDATE DATE,
	COURSE_CODE CHAR(3),
	PROJ_NUM INT(2),
    PRIMARY KEY (STU_NUM)
);

# Write the SQL code to insert the first two rows of the table as specified
INSERT INTO Student
	Values ( 01, 'Snow', 'John', 'E', '05-Apr-14', '201', '6');
    Values ( 02, 'Stark', 'Arya', 'C', '12-Jul-17', '305', '11');

# Write the SQL code that will list all attributes for the COURSE_CODE of 305
SELECT * FROM Student
WHERE COURSE_CODE='305';

# Write the SQL code to change the course code to 304 for the person whose student number is 07
UPDATE Student
SET COURSE_CODE = '304'
WHERE STU_NUM ='07';

# Write the SQL code to delete the row of the person named Jamie Lannister, who started on 5 September 2012, whose course code is 101 and project number is 2
DELETE FROM Student
WHERE STU_SNAME= 'Lannister' AND STU_FNAME= 'Jamie' AND STU_STARTDATE= '05-Sep-12' AND COURSE_CODE= '101'AND PROJ_NUM= '2';

# Write the SQL code that will change the PROJ_NUM to 14 for all those students who started before 1 January 2016 and whose course code is at least 201
UPDATE Student
PROJ_NUM = '14'
WHERE STU_STARTDATE <= '01-Jan-94'AND COURSE_CODE >= '201';

# Write the SQL code that will delete all of the data inside a table, but not the table itself
TRUNCATE TABLE Student;

# Write the SQL code that will delete the Student table entirely
DROP TABLE Student;