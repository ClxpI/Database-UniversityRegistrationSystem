# **Database-UniversityRegistrationSystem**

This project demonstrates my skills in designing and implementing a relational database schema for a **University Registration System**. The system efficiently handles and manages essential data related to students, courses, departments, and enrollment processes, ensuring data integrity and supporting complex queries.

---

## **Database Overview**

### **Schema Design**
The schema includes the following core tables:

- **Student**: Stores student details such as ID, name, date of birth, admission term, expected graduation term, academic status, and academic load.
- **Address**: Captures multiple student addresses, including type (e.g., campus, home) and location details. *(Linked to Student)*.
- **Phone**: Records student phone numbers categorized by type (e.g., mobile, home). *(Linked to Student)*.
- **Email**: Manages student email addresses, categorized by type (e.g., personal, university). *(Linked to Student)*.
- **Major**: Tracks student majors, including type (BS or BA) and associated department. *(Linked to Student and Department)*.
- **Minor**: Records student minors and their corresponding departments. *(Linked to Student and Department)*.
- **Department**: Stores details of university departments.
- **Course**: Contains information about courses such as ID, title, credits, and department. *(Linked to Department)*.
- **Goal**: Lists academic goals (e.g., Quantitative Reasoning, Critical Thinking) associated with courses.
- **Course_Goal**: A junction table establishing many-to-many relationships between courses and goals.
- **Transcript**: Stores student transcripts, including grades, credits, and goal satisfaction. *(Linked to Student and Course)*.

### **Entity-Relationship Diagram**
Below is the ER Diagram illustrating the relationships between entities in the database:

![image](https://github.com/user-attachments/assets/b8feea18-110b-4b5a-8907-f4ae7b02acd2)

---

## **Features**

1. **Efficient Schema Design**:
   - Supports scalability and relational integrity with primary and foreign key constraints.
2. **Sample Queries**:
   - Demonstrates how to retrieve and manipulate data within the schema. Examples include:
     - Retrieving a student’s contact details (address, phone, email).
     - Displaying a student’s transcript with grades and satisfied goals.
     - Calculating the total credits earned by a student.
     - Identifying courses that fulfill specific academic goals.
3. **Normalization**:
   - Ensures the database adheres to 1NF, 2NF, and 3NF standards to eliminate redundancies and anomalies.

---

## **Files Included**

1. **Database.docx**: Contains detailed documentation of the schema, relationships, normalization, and queries.
2. **DDL.sql**: SQL scripts for creating tables, defining relationships, and executing sample queries.

---
