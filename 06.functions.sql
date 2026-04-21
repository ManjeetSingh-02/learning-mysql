USE mydb;

SELECT COUNT(*) FROM users;

SELECT COUNT(*) FROM users WHERE gender = 'female';

SELECT MIN(salary), MAX(salary) FROM users WHERE gender = 'female';

SELECT SUM(salary) FROM users;

SELECT AVG(salary) FROM users;

SELECT gender, AVG(salary) FROM users GROUP BY gender;

SELECT gender, SUM(salary) FROM users GROUP BY gender;

SELECT name, LOWER(name), LENGTH(name) FROM users;

SELECT name, UPPER(name), LENGTH(name) FROM users;

SELECT
    name,
    CONCAT(UPPER(name), '021') AS username,
    LENGTH(name) AS name_length,
    NOW() AS timestamp,
    DAY(date_of_birth) AS day_of_birth,
    MONTH(date_of_birth) AS month_of_birth,
    YEAR(date_of_birth) AS year_of_birth
FROM users;

SELECT name, DATEDIFF(CURRENT_DATE(), date_of_birth) FROM users;

SELECT name, TIMESTAMPDIFF(
        YEAR, date_of_birth, CURRENT_DATE()
    )
FROM users;

SELECT
    name,
    salary,
    ROUND(salary) AS rounded_salary,
    FLOOR(salary) AS floored_salary,
    CEIL(salary) AS ceiled_salary
FROM users;

SELECT id, name, MOD(id, 2) FROM users;

SELECT name, gender, IF(gender = 'male', 'YES', 'NO') FROM users;