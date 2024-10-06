--- Retrieve Student Enrollments with Course and Department Information
SELECT s.first_name || ' ' || s.last_name AS student_name, 
       c.course_name, 
       d.department_name, 
       e.grade
FROM students s
JOIN enrollments e ON s.student_id = e.student_id
JOIN courses c ON e.course_id = c.course_id
JOIN departments d ON c.department_id = d.department_id;
