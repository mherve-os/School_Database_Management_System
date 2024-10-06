-- Insert records into Departments
INSERT INTO departments (department_name) VALUES ('Mathematics');
INSERT INTO departments (department_name) VALUES ('Computer Science');
INSERT INTO departments (department_name) VALUES ('Physics');
INSERT INTO departments (department_name) VALUES ('Biology');
INSERT INTO departments (department_name) VALUES ('Chemistry');

-- Insert records into Teachers
INSERT INTO teachers (first_name, last_name, email, department_id, hire_date, salary) 
VALUES ('John', 'Doe', 'john.doe@school.edu', 1, TO_DATE('2020-08-01', 'YYYY-MM-DD'), 50000);
INSERT INTO teachers (first_name, last_name, email, department_id, hire_date, salary) 
VALUES ('Jane', 'Smith', 'jane.smith@school.edu', 2, TO_DATE('2019-06-15', 'YYYY-MM-DD'), 60000);
INSERT INTO teachers (first_name, last_name, email, department_id, hire_date, salary) 
VALUES ('Albert', 'Brown', 'albert.brown@school.edu', 3, TO_DATE('2018-09-23', 'YYYY-MM-DD'), 55000);
INSERT INTO teachers (first_name, last_name, email, department_id, hire_date, salary) 
VALUES ('Lisa', 'White', 'lisa.white@school.edu', 4, TO_DATE('2021-01-10', 'YYYY-MM-DD'), 53000);
INSERT INTO teachers (first_name, last_name, email, department_id, hire_date, salary) 
VALUES ('Michael', 'Green', 'michael.green@school.edu', 5, TO_DATE('2017-03-18', 'YYYY-MM-DD'), 58000);

-- Insert records into Students
INSERT INTO students (first_name, last_name, birth_date, gender, email, department_id, enrollment_date)
VALUES ('Alice', 'Johnson', TO_DATE('2002-05-21', 'YYYY-MM-DD'), 'Female', 'alice.johnson@school.edu', 1, TO_DATE('2022-09-01', 'YYYY-MM-DD'));
INSERT INTO students (first_name, last_name, birth_date, gender, email, department_id, enrollment_date)
VALUES ('Bob', 'Williams', TO_DATE('2001-11-15', 'YYYY-MM-DD'), 'Male', 'bob.williams@school.edu', 2, TO_DATE('2021-09-01', 'YYYY-MM-DD'));
INSERT INTO students (first_name, last_name, birth_date, gender, email, department_id, enrollment_date)
VALUES ('Charlie', 'Davis', TO_DATE('2003-03-10', 'YYYY-MM-DD'), 'Male', 'charlie.davis@school.edu', 3, TO_DATE('2023-09-01', 'YYYY-MM-DD'));
INSERT INTO students (first_name, last_name, birth_date, gender, email, department_id, enrollment_date)
VALUES ('Diana', 'Miller', TO_DATE('2002-07-30', 'YYYY-MM-DD'), 'Female', 'diana.miller@school.edu', 4, TO_DATE('2022-09-01', 'YYYY-MM-DD'));
INSERT INTO students (first_name, last_name, birth_date, gender, email, department_id, enrollment_date)
VALUES ('Eve', 'Martinez', TO_DATE('2001-12-12', 'YYYY-MM-DD'), 'Female', 'eve.martinez@school.edu', 5, TO_DATE('2021-09-01', 'YYYY-MM-DD'));

-- Insert records into Courses
INSERT INTO courses (course_name, course_code, department_id, credits)
VALUES ('Algebra I', 'MATH101', 1, 3.0);
INSERT INTO courses (course_name, course_code, department_id, credits)
VALUES ('Introduction to Programming', 'CS101', 2, 4.0);
INSERT INTO courses (course_name, course_code, department_id, credits)
VALUES ('Classical Mechanics', 'PHYS101', 3, 3.5);
INSERT INTO courses (course_name, course_code, department_id, credits)
VALUES ('Cell Biology', 'BIO101', 4, 3.0);
INSERT INTO courses (course_name, course_code, department_id, credits)
VALUES ('Organic Chemistry', 'CHEM101', 5, 3.5);

-- Insert records into Enrollments
INSERT INTO enrollments (student_id, course_id, enrollment_date, grade)
VALUES (1, 1, TO_DATE('2022-09-05', 'YYYY-MM-DD'), 'A');
INSERT INTO enrollments (student_id, course_id, enrollment_date, grade)
VALUES (2, 2, TO_DATE('2021-09-05', 'YYYY-MM-DD'), 'B+');
INSERT INTO enrollments (student_id, course_id, enrollment_date, grade)
VALUES (3, 3, TO_DATE('2023-09-05', 'YYYY-MM-DD'), 'A-');
INSERT INTO enrollments (student_id, course_id, enrollment_date, grade)
VALUES (4, 4, TO_DATE('2022-09-05', 'YYYY-MM-DD'), 'B');
INSERT INTO enrollments (student_id, course_id, enrollment_date, grade)
VALUES (5, 5, TO_DATE('2021-09-05', 'YYYY-MM-DD'), 'A');

-- Insert records into Assignments
INSERT INTO assignments (teacher_id, course_id, assignment_date)
VALUES (1, 1, TO_DATE('2020-08-01', 'YYYY-MM-DD'));
INSERT INTO assignments (teacher_id, course_id, assignment_date)
VALUES (2, 2, TO_DATE('2019-06-15', 'YYYY-MM-DD'));
INSERT INTO assignments (teacher_id, course_id, assignment_date)
VALUES (3, 3, TO_DATE('2018-09-23', 'YYYY-MM-DD'));
INSERT INTO assignments (teacher_id, course_id, assignment_date)
VALUES (4, 4, TO_DATE('2021-01-10', 'YYYY-MM-DD'));
INSERT INTO assignments (teacher_id, course_id, assignment_date)
VALUES (5, 5, TO_DATE('2017-03-18', 'YYYY-MM-DD'));

-- Insert records into Classes
INSERT INTO classes (course_id, class_date, room_number, start_time, end_time)
VALUES (1, TO_DATE('2023-01-15', 'YYYY-MM-DD'), 'Room A1', TO_TIMESTAMP('09:00:00', 'HH24:MI:SS'), TO_TIMESTAMP('11:00:00', 'HH24:MI:SS'));
INSERT INTO classes (course_id, class_date, room_number, start_time, end_time)
VALUES (2, TO_DATE('2023-01-16', 'YYYY-MM-DD'), 'Room B2', TO_TIMESTAMP('10:00:00', 'HH24:MI:SS'), TO_TIMESTAMP('12:00:00', 'HH24:MI:SS'));
INSERT INTO classes (course_id, class_date, room_number, start_time, end_time)
VALUES (3, TO_DATE('2023-01-17', 'YYYY-MM-DD'), 'Room C3', TO_TIMESTAMP('08:00:00', 'HH24:MI:SS'), TO_TIMESTAMP('10:00:00', 'HH24:MI:SS'));
INSERT INTO classes (course_id, class_date, room_number, start_time, end_time)
VALUES (4, TO_DATE('2023-01-18', 'YYYY-MM-DD'), 'Room D4', TO_TIMESTAMP('11:00:00', 'HH24:MI:SS'), TO_TIMESTAMP('13:00:00', 'HH24:MI:SS'));
INSERT INTO classes (course_id, class_date, room_number, start_time, end_time)
VALUES (5, TO_DATE('2023-01-19', 'YYYY-MM-DD'), 'Room E5', TO_TIMESTAMP('09:30:00', 'HH24:MI:SS'), TO_TIMESTAMP('11:30:00', 'HH24:MI:SS'));
