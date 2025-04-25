CREATE DATABASE TASK;
use TASK;

CREATE TABLE Students (
    student_id INT,
    name VARCHAR(100),
    age INT,
    email VARCHAR(50),
    gender VARCHAR(10),
    phone VARCHAR(15),
    address VARCHAR(100),
    course VARCHAR(50),
    enrollment_date DATE,
    grade_level VARCHAR(50)
);

CREATE TABLE Teachers (
    teacher_id INT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    age INT,
    gender VARCHAR(10),
    email VARCHAR(100),
    phone_number VARCHAR(15),
    subject VARCHAR(100),
    hire_date DATE,
    salary DECIMAL(10,2)
);

CREATE TABLE Courses (
    course_id INT,
    course_name VARCHAR(100),
    course_code VARCHAR(10),
    department VARCHAR(50),
    credits INT,
    start_date DATE,
    end_date DATE,
    instructor VARCHAR(100),
    capacity INT,
    location VARCHAR(100)
);

CREATE TABLE Library (
    book_id INT,
    title VARCHAR(100),
    author VARCHAR(100),
    genre VARCHAR(50),
    published_year INT,
    isbn VARCHAR(20),
    copies INT,
    shelf_location VARCHAR(50),
    is_available BOOLEAN,
    publisher VARCHAR(100)
);

CREATE TABLE Exams (
    exam_id INT,
    subject VARCHAR(100),
    date DATE,
    duration INT,
    total_marks INT,
    pass_marks INT,
    room_number VARCHAR(10),
    invigilator VARCHAR(100),
    student_count INT,
    remarks VARCHAR(255)
);



ALTER TABLE Students
ADD father_name VARCHAR(100),
ADD mother_name VARCHAR(100),
ADD blood_group VARCHAR(5),
ADD nationality VARCHAR(50);


ALTER TABLE Teachers
ADD experience INT,
ADD degree VARCHAR(100),
ADD specialization VARCHAR(100),
ADD department VARCHAR(100);


ALTER TABLE Courses
ADD semester INT,
ADD description TEXT,
ADD fee DECIMAL(8,2),
ADD is_active BOOLEAN;


ALTER TABLE Library
ADD edition INT,
ADD language VARCHAR(50),
ADD page_count INT,
ADD borrower_name VARCHAR(100);


ALTER TABLE Exams
ADD exam_type VARCHAR(50),
ADD evaluator VARCHAR(100),
ADD is_online BOOLEAN,
ADD feedback TEXT;



ALTER TABLE Students DROP COLUMN nationality;
ALTER TABLE Teachers DROP COLUMN department;
ALTER TABLE Courses DROP COLUMN is_active;
ALTER TABLE Library DROP COLUMN borrower_name;
ALTER TABLE Exams DROP COLUMN feedback;



ALTER TABLE Students
RENAME COLUMN student_id TO id,
RENAME COLUMN course TO major,
RENAME COLUMN father_name TO dad_name,
RENAME COLUMN mother_name TO mom_name;



ALTER TABLE Teachers
RENAME COLUMN teacher_id TO id,
RENAME COLUMN hire_date TO joining_date,
RENAME COLUMN experience TO years_experience,
RENAME COLUMN specialization TO subject_focus;



ALTER TABLE Courses
RENAME COLUMN course_id TO id,
RENAME COLUMN start_date TO begin_date,
RENAME COLUMN end_date TO finish_date,
RENAME COLUMN course_name TO title;



ALTER TABLE Library
RENAME COLUMN book_id TO id,
RENAME COLUMN genre TO category,
RENAME COLUMN shelf_location TO shelf_no,
RENAME COLUMN page_count TO total_pages;



ALTER TABLE Exams
RENAME COLUMN exam_id TO id,
RENAME COLUMN subject TO course_name,
RENAME COLUMN exam_type TO type,
RENAME COLUMN evaluator TO checked_by;


ALTER TABLE Students
ADD first_name VARCHAR(100),
ADD last_name VARCHAR(100),
ADD phone_number VARCHAR(20);



ALTER TABLE Students
MODIFY first_name VARCHAR(100),
MODIFY last_name VARCHAR(100),
MODIFY age SMALLINT,
MODIFY phone_number VARCHAR(20);



ALTER TABLE Teachers
MODIFY salary DECIMAL(12,2),
MODIFY phone_number VARCHAR(20),
MODIFY age SMALLINT,
MODIFY degree VARCHAR(150);



ALTER TABLE Courses
MODIFY title VARCHAR(150),
MODIFY course_code VARCHAR(20),
MODIFY description VARCHAR(500),
MODIFY fee DECIMAL(10,2);

ALTER TABLE Library
MODIFY title VARCHAR(150),
MODIFY author VARCHAR(150),
MODIFY isbn VARCHAR(30),
MODIFY publisher VARCHAR(150);

ALTER TABLE Exams
MODIFY duration SMALLINT,
MODIFY remarks VARCHAR(500),
MODIFY room_number VARCHAR(20),
MODIFY invigilator VARCHAR(150);

SELECT * FROM Library;

