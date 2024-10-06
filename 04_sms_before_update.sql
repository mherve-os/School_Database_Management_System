---Before Updating a Student's Email (Ensure Correct Format)
CREATE OR REPLACE TRIGGER trg_before_update_student_email
BEFORE UPDATE ON students
FOR EACH ROW
BEGIN
    IF :NEW.email NOT LIKE '%@%.%' THEN
        RAISE_APPLICATION_ERROR(-20001, 'Invalid email format');
    END IF;
END;

---Before Updating a Teacher's Salary (Ensure Salary Increase is Reasonable)
CREATE OR REPLACE TRIGGER trg_before_update_teacher_salary
BEFORE UPDATE ON teachers
FOR EACH ROW
BEGIN
    IF :NEW.salary > :OLD.salary * 1.10 THEN
        RAISE_APPLICATION_ERROR(-20002, 'Salary increase cannot exceed 10%');
    END IF;
END;

