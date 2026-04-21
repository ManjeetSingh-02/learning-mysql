USE mydb;

SELECT id, name, salary
FROM users
WHERE
    salary > (
        SELECT AVG(salary)
        FROM users
    );

SELECT id, name, refered_by_id
FROM users
WHERE
    refered_by_id IN (
        SELECT id
        FROM users
        WHERE
            gender = 'female'
    );

SELECT name, salary, (
        SELECT AVG(salary)
        FROM users
    ) AS average_salary
FROM users;