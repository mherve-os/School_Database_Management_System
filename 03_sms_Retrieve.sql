--- Retrieve Student Enrollments with Course and Department Information
SELECT s.first_name || ' ' || s.last_name AS student_name, 
       c.course_name, 
       d.department_name, 
       e.grade
FROM students s
JOIN enrollments e ON s.student_id = e.student_id
JOIN courses c ON e.course_id = c.course_id
JOIN departments d ON c.department_id = d.department_id;

---Retrieve Teacher Assignments with Courses and Departments
SELECT t.first_name || ' ' || t.last_name AS teacher_name, 
       c.course_name, 
       d.department_name, 
       a.assignment_date
FROM teachers t
JOIN assignments a ON t.teacher_id = a.teacher_id
JOIN courses c ON a.course_id = c.course_id
JOIN departments d ON c.department_id = d.department_id;

---Retrieve Course Schedules (Classes) with Room and Timing Details
SELECT c.course_name, 
       cl.room_number, 
       cl.class_date, 
       cl.start_time, 
       cl.end_time
FROM courses c
JOIN classes cl ON c.course_id = cl.course_id;
