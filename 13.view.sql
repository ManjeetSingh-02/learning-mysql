USE mydb;

DROP VIEW IF EXISTS high_salary_employees;

CREATE VIEW high_salary_employees AS
SELECT *
FROM users
WHERE
    salary > 65000;

UPDATE users SET salary = 65000 WHERE id = 2;

SELECT * FROM high_salary_employees;