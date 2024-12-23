# Database-UniversityRegistrationSystem
This project showcases my capability in designing and building a relational database schema for a University Registration System. The schema efficiently stores and manages student information, courses, departments, and enrolment data.

## Tables

* **Student:** Stores student information such as ID, name, date of birth, admission term, expected graduation term, academic status, and academic load.
* **Address:** Stores student addresses, including address type, street address, city, state, country, and zip code. (Foreign key references Student)
* **Phone:** Stores student phone numbers, including phone type and phone number. (Foreign key references Student)
* **Email:** Stores student email addresses, including email type and email address. (Foreign key references Student)
* **Major:** Stores student majors, including major type (BS or BA) and department ID. (Foreign key references Student and Department)
* **Minor:** Stores student minors and the department ID. (Foreign key references Student and Department)
* **Department:** Stores department information, including department ID and department name.
* **Course:** Stores course information, including course ID, department ID, course number, title, and credits. (Foreign key references Department)
* **Goal:** Stores course goals, including goal ID and goal name.
* **Course_Goal (junction table):** Establishes a many-to-many relationship between Courses and Goals. (Foreign key references Course and Goal)
* **Transcript:** Stores student transcripts, including transcript ID, student ID, course ID, grade, and goal status. (Foreign key references Student and Course)

## Sample Queries

The schema also includes sample queries that demonstrate how to retrieve data from various tables and relationships. These queries showcase functionalities like:

* Finding a student's contact information (address, phone, email) based on their student ID.
* Retrieving a student's majors and minors.
* Enrolling a student in a course.
* Viewing a student's transcript with grades and goal statuses for each course.
* Calculating the total credits earned by a student.
* Finding courses that satisfy specific goals (Quantitative Reasoning, Critical Thinking).

## ER Diagram

![image](https://github.com/user-attachments/assets/1a8ee5a0-0422-4dfc-b289-b6f16dbdf14a)


## Files
**All of this can be found in the files uploaded "Database.docx" and "DDL.sql"**
**Feel free to explore the provided SQL code and adapt it to your specific university registration system needs.**

