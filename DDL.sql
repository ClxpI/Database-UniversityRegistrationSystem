-- Student table
CREATE TABLE Student (
  student_id INT PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  date_of_birth DATE,
  admit_term VARCHAR(20),
  expected_graduation_term VARCHAR(20),
  status VARCHAR(10),
  academic_load VARCHAR(15),
  academic_level VARCHAR(2)
);

-- Address table
CREATE TABLE Address (
  address_id INT PRIMARY KEY,
  student_id INT,
  address_type VARCHAR(20) NOT NULL,
  street_address VARCHAR(255) NOT NULL,
  city VARCHAR(100) NOT NULL,
  state VARCHAR(100) NOT NULL,
  country VARCHAR(100) NOT NULL,
  zip_code VARCHAR(20) NOT NULL,
  FOREIGN KEY (student_id) REFERENCES Student(student_id)
);

-- Phone table
CREATE TABLE Phone (
  phone_id INT PRIMARY KEY,
  student_id INT,
  phone_type VARCHAR(20) NOT NULL,
  phone_number VARCHAR(20) NOT NULL,
  FOREIGN KEY (student_id) REFERENCES Student(student_id)
);

-- Email table
CREATE TABLE Email (
  email_id INT PRIMARY KEY,
  student_id INT,
  email_type VARCHAR(20) NOT NULL,
  email_address VARCHAR(255) NOT NULL,
  FOREIGN KEY (student_id) REFERENCES Student(student_id)
);

-- Major table
CREATE TABLE Major (
  major_id INT PRIMARY KEY,
  student_id INT,
  major_type VARCHAR(2) NOT NULL,
  department_id INT,
  FOREIGN KEY (student_id) REFERENCES Student(student_id),
  FOREIGN KEY (department_id) REFERENCES Department(department_id)
);

-- Minor table
CREATE TABLE Minor (
  minor_id INT PRIMARY KEY,
  student_id INT,
  department_id INT,
  FOREIGN KEY (student_id) REFERENCES Student(student_id),
  FOREIGN KEY (department_id) REFERENCES Department(department_id)
);

-- Department table
CREATE TABLE Department (
  department_id INT PRIMARY KEY,
  department_name VARCHAR(255) NOT NULL
);

-- Course table
CREATE TABLE Course (
  course_id INT PRIMARY KEY,
  department_id INT,
  course_number VARCHAR(10),
  title VARCHAR(255),
  credits INT,
  FOREIGN KEY (department_id) REFERENCES Department(department_id)
);

-- Course_Goal junction table
CREATE TABLE Goal (
  course_id INT,
  goal_id INT,
  FOREIGN KEY (course_id) REFERENCES Course(course_id),
  FOREIGN KEY (goal_id) REFERENCES Goal(goal_id),
  PRIMARY KEY (course_id, goal_id)
);

-- Transcript table
CREATE TABLE Transcript (
  transcript_id INT PRIMARY KEY,
  student_id INT,
  course_id INT,
  grade VARCHAR(2),
  goal_status VARCHAR(20),
  FOREIGN KEY (student_id) REFERENCES Student(student_id),
  FOREIGN KEY (course_id) REFERENCES Course(course_id)
);

-- Insert data into the Student table
INSERT INTO Student (student_id, name, date_of_birth, admit_term, expected_graduation_term, status, academic_load, academic_level)
SELECT
  1, 'Calvito', '2002-07-24', 'September 2022', 'May 2025', 'Active', 'Full-time', 'JR'
UNION ALL SELECT
  2, 'Eze', '2003-08-13', 'September 2022', 'May 2026', 'Active', 'Full-time', 'SO'
UNION ALL SELECT
  3, 'Nene', '2004-01-02', 'September 2023', 'May 2026', 'Inactive', 'Full-time', 'SO'
UNION ALL SELECT
  4, 'Aleesha', '2003-10-22', 'September 2023', 'May 2027', 'Inactive', 'Part-time', 'FY' 
UNION ALL SELECT
  5, 'Eric', '2002-03-16', 'September 2023', 'May 2026', 'Inactive', 'Full-time', 'SR'
;

-- Insert data into the Address table
INSERT INTO Address (address_id, student_id, address_type, street_address, city, state, country, zip_code)
SELECT
  1, 1, 'Campus', '51 HWS Avenue', 'Birmingham', 'West Midlands', 'Birmingham', 'B321EU'
UNION ALL SELECT
  2, 1, 'Home', '110 Ekis De', 'Birmingham', 'West Midlands', 'Birmingham', 'B190AH'
UNION ALL SELECT
  3, 1, 'Preferred', '32 Baca Lexera', 'Birmingham', 'West Midlands', 'Birmingham', 'B230DA'
UNION ALL SELECT
  4, 2, 'Campus', '51 HWS Avenue', 'Birmingham', 'West Midlands', 'Birmingham', 'B321EU'
UNION ALL SELECT
  5, 2, 'Home', '43 Baca Lexera', 'Birmingham', 'West Midlands', 'Birmingham', 'B321EU'
UNION ALL SELECT
  6, 2, 'Preferred', '51 HWS Avenue', 'Birmingham', 'West Midlands', 'Birmingham', 'B321EU'
UNION ALL SELECT
  7, 3, 'Campus', '51 HWS Avenue', 'Birmingham', 'West Midlands', 'Birmingham', 'B321EU'
UNION ALL SELECT
  8, 3, 'Home', '12 Marra Ana', 'Birmingham', 'West Midlands', 'Birmingham', 'B458HR'
UNION ALL SELECT
  9, 3, 'Preferred', '51 HWS Avenue', 'Birmingham', 'West Midlands', 'Birmingham', 'B321EU'
UNION ALL SELECT
  10, 4, 'Campus', '51 HWS Avenue', 'Birmingham', 'West Midlands', 'Birmingham', 'B321EU'
UNION ALL SELECT
  11, 4, 'Home', '76 Xupa Nepes', 'Birmingham', 'West Midlands', 'Birmingham', 'B102SA'
UNION ALL SELECT
  12, 4, 'Preferred', '51 HWS Avenue', 'Birmingham', 'West Midlands', 'Birmingham', 'B321EU'
UNION ALL SELECT
  13, 5, 'Campus', '51 HWS Avenue', 'Birmingham', 'West Midlands', 'Birmingham', 'B321EU'
UNION ALL SELECT
  14, 5, 'Home', '230 Sucla Nalg', 'Birmingham', 'West Midlands', 'Birmingham', 'B562FA'
UNION ALL SELECT
  15, 5, 'Preferred', '51 HWS Avenue', 'Birmingham', 'West Midlands', 'Birmingham', 'B321EU'
;

-- Insert data into the Phone table
INSERT INTO Phone (phone_id, student_id, phone_type, phone_number)
SELECT
  1, 1, 'Campus', '0121-6534-2345'
UNION ALL SELECT
  2, 1, 'Cell', '0755543294'
UNION ALL SELECT
  3, 1, 'Home', '0121-2324-9867'
UNION ALL SELECT
  4, 2, 'Campus', '0121-6534-2345'
UNION ALL SELECT
  5, 2, 'Cell', '0776542214'
UNION ALL SELECT
  6, 2, 'Home', '0121-9247-5347'
UNION ALL SELECT
  7, 3, 'Campus', '0121-6534-2345'
UNION ALL SELECT
  8, 3, 'Cell', '0766323815'
UNION ALL SELECT
  9, 3, 'Home', '0121-9214-1362'
UNION ALL SELECT
  10, 4, 'Campus', '0121-6534-2345'
UNION ALL SELECT
  11, 4, 'Cell', '0722541113'
UNION ALL SELECT
  12, 4, 'Home', '0121-9002-5397'
UNION ALL SELECT
  13, 5, 'Campus', '0121-6534-2345'
UNION ALL SELECT
  14, 5, 'Cell', '0711252134'
UNION ALL SELECT
  15, 5, 'Home', '0121-6574-0192'
;

-- Insert data into the Email table
INSERT INTO Email (email_id, student_id, email_type, email_address)
SELECT
  1, 1, 'HWS', '  calvito@hws.co.uk'
UNION ALL SELECT
  2, 1, 'Other', 'calvito@gmail.com'
UNION ALL SELECT
  3, 1, 'Preferred', 'calvito@gmail.com'
UNION ALL SELECT
  4, 2, 'HWS', '  eze@hws.co.uk'
UNION ALL SELECT
  5, 2, 'Other', 'eze@gmail.com'
UNION ALL SELECT
  6, 2, 'Preferred', 'eze@gmail.com'
UNION ALL SELECT
  7, 3, 'HWS', '  nene@hws.co.uk'
UNION ALL SELECT
  8, 3, 'Other', 'nene@gmail.com'
UNION ALL SELECT
  9, 3, 'Preferred', 'nene@gmail.com'
UNION ALL SELECT
  10, 4, 'HWS', '  aleesha@hws.co.uk'
UNION ALL SELECT
  11, 4, 'Other', 'aleesha@gmail.com'
UNION ALL SELECT
  12, 4, 'Preferred', 'aleesha@hws.co.uk'
UNION ALL SELECT
  13, 5, 'HWS', '  eric@hws.co.uk'
UNION ALL SELECT
  14, 5, 'Other', 'eric@gmail.com'
UNION ALL SELECT
  15, 5, 'Preferred', 'eric@hws.co.uk'
;
-- Insert data into the Major table
INSERT INTO Major (major_id, student_id, major_type, department_id)
SELECT
  1, 1, 'BS', 1
UNION ALL SELECT
  2, 1, 'BS', 1
UNION ALL SELECT
  3, 2, 'BS', 2
UNION ALL SELECT
  4, 3, 'BS', 2
UNION ALL SELECT
  5, 3, 'BS', 1
UNION ALL SELECT
  6, 4, 'BS', 2
UNION ALL SELECT
  7, 4, 'BS', 3
UNION ALL SELECT
  8, 5, 'BA', 4
UNION ALL SELECT
  9, 5, 'BA', 5
;
-- Insert data into the Minor table
INSERT INTO Minor (minor_id, student_id, department_id)
SELECT
  1, 2, 3
UNION ALL SELECT
  2, 2, 5
;
-- Insert data into the Department table
INSERT INTO Department (department_id, department_name)
SELECT
  1, 'Department of Biology'
UNION ALL SELECT
  2, 'Department of Computer Science'
UNION ALL SELECT
  3, 'Department of Psicology'
UNION ALL SELECT
  4, 'Department of History'
UNION ALL SELECT
  5, 'Department of Law'
;
-- Insert data into the Course table
INSERT INTO Course (course_id, department_id, course_number, title, credits)
SELECT
  1, 1, 'BIO101', 'Introduction to Biology', 20
UNION ALL SELECT
  2, 2, 'CS201', 'Introduction to Computer Science', 20
UNION ALL SELECT
  3, 3, 'PS301', 'Introduction to Psicology', 20
UNION ALL SELECT
  4, 4, 'HS401', 'Introduction to History', 20
UNION ALL SELECT
  5, 5, 'LW501', 'Introduction to Law', 20
;
-- Insert data into the Goal table
INSERT INTO Goal (goal_id, goal_name, course_id)
SELECT
  1, 'Quantitative Reasoning', 1
UNION ALL SELECT
  2, 'Critical Thinking', 1
UNION ALL SELECT
  3, 'Quantitative Reasoning', 2
UNION ALL SELECT
  4, 'Critical Thinking', 2
UNION ALL SELECT
  5, 'Quantitative Reasoning', 3
UNION ALL SELECT
  6, 'Critical Thinking', 3
UNION ALL SELECT
  7, 'Quantitative Reasoning', 4
UNION ALL SELECT
  8, 'Critical Thinking', 4
UNION ALL SELECT
  9, 'Quantitative Reasoning', 5
UNION ALL SELECT
  10, 'Critical Thinking', 5
;
-- Insert data into the Transcript table
INSERT INTO Transcript (transcript_id, student_id, course_id, grade, goal_status)
SELECT
  1, 1, 1, 'A', 'Satisfied'
UNION ALL SELECT
  2, 2, 2, 'B', 'Partially Satisfied'
UNION ALL SELECT
  3, 3, 2, 'A', 'Satisfied'
UNION ALL SELECT
  1, 3, 1, 'A', 'Satisfied'
UNION ALL SELECT
  4, 4, 2, 'A', 'Satisfied'
UNION ALL SELECT
  5, 4, 3, 'B', 'Partially Satisfied'
UNION ALL SELECT
  6, 5, 4, 'B', 'Partially Satisfied'
UNION ALL SELECT
  7, 5, 5, 'A', 'Satisfied'
;
  
SELECT * FROM Address WHERE student_id = 1;

SELECT * FROM Phone WHERE student_id = 4;

SELECT * FROM Email WHERE student_id = 5;

SELECT * FROM Major WHERE student_id = 3;

SELECT * FROM Department WHERE department_id IN (SELECT department_id FROM Major WHERE student_id = 2);

SELECT * FROM Course WHERE course_id IN (SELECT course_id FROM Transcript WHERE student_id = 4);

SELECT * FROM Transcript WHERE student_id = 1;

SELECT Goal.goal_name, Transcript.goal_status 
FROM Goal 
JOIN Course_Goal ON Goal.goal_id = Course_Goal.goal_id 
JOIN Transcript ON Course_Goal.course_id = Transcript.course_id 
WHERE Transcript.student_id = 2;

SELECT SUM(credits) AS total_credits 
FROM Course 
WHERE course_id IN (SELECT course_id FROM Transcript WHERE student_id = 5);

SELECT Course.* 
FROM Course 
JOIN Course_Goal ON Course.course_id = Course_Goal.course_id 
JOIN Goal ON Course_Goal.goal_id = Goal.goal_id 
WHERE Goal.goal_name = 'Quantitative Reasoning';

SELECT Student.* 
FROM Student 
WHERE student_id IN (
  SELECT student_id 
  FROM Transcript 
  GROUP BY student_id 
  HAVING COUNT(DISTINCT goal_status) = (
    SELECT COUNT(DISTINCT goal_id) FROM Goal
  )
);

SELECT Student.* 
FROM Student 
WHERE student_id NOT IN (
  SELECT student_id 
  FROM Transcript 
  WHERE goal_status = 'Satisfied'
);

SELECT * FROM Student WHERE academic_level = 'SR';

SELECT Course.*
FROM Course
JOIN Course_Goal ON Course.course_id = Course_Goal.course_id
WHERE Course.course_id IN (
  SELECT Course.course_id
  FROM Course
  JOIN Course_Goal ON Course.course_id = Course_Goal.course_id
  JOIN Goal ON Course_Goal.goal_id = Goal.goal_id
  WHERE Goal.goal_name IN ('Quantitative Reasoning', 'Critical Thinking')
  GROUP BY Course.course_id
  HAVING COUNT(DISTINCT Goal.goal_name) = 2
);

SELECT Student.*
FROM Student
WHERE Student.student_id IN (
  SELECT Transcript.student_id
  FROM Transcript
  JOIN Course ON Transcript.course_id = Course.course_id
  JOIN Department ON Course.department_id = Department.department_id
  WHERE Department.department_name = 'Department of Biology'
);

SELECT Student.*
FROM Student
WHERE Student.student_id NOT IN (
  SELECT Transcript.student_id
  FROM Transcript
  JOIN Course ON Transcript.course_id = Course.course_id
  JOIN Department ON Course.department_id = Department.department_id
  WHERE Department.department_name = 'Department of Biology'
);

UPDATE Student
SET name = 'Nene',
    date_of_birth = '2002-03-20',
    admit_term = 'September 2020',
    expected_graduation_term = 'May 2024',
    status = 'Active',
    academic_load = 'Full-time',
    academic_level = 'SR'
WHERE student_id = 3;

UPDATE Email
SET email_address = 'calvito@hws.co.uk'
WHERE student_id = 1 AND email_type = 'Preffered';


