-- Homework #3 - Database Trigger
-- Student: [Your Name Here]
-- University ID: [Your University ID Here]

-- Trigger to ensure minimum salary of 500 on insert into employees table
CREATE OR REPLACE TRIGGER trg_min_salary
BEFORE INSERT ON employees
FOR EACH ROW
BEGIN
    IF :NEW.salary < 500 THEN
        :NEW.salary := 500;
    END IF;
END;
/
