USE mydb;

SELECT gender, AVG(salary) FROM users GROUP BY gender;

SELECT gender, AVG(salary), COUNT(*)
FROM users
WHERE
    salary > 65000
GROUP BY
    gender;

SELECT gender, AVG(salary), COUNT(*)
FROM users
GROUP BY
    gender
HAVING
    AVG(salary) > 42000;

SELECT refered_by_id, COUNT(*) AS total_refered
FROM users
WHERE
    refered_by_id IS NOT NULL
GROUP BY
    refered_by_id
HAVING
    COUNT(*) = 1;

SELECT gender, AVG(salary), COUNT(*)
FROM users
GROUP BY
    gender
WITH
    ROLLUP
HAVING
    AVG(salary) > 42000;