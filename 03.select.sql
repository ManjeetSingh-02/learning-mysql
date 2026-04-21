USE mydb;

SELECT * FROM users;

SELECT email, salary FROM users;

SELECT * FROM users WHERE gender = 'female';

SELECT * FROM users WHERE gender != 'male';

SELECT * FROM users WHERE gender <> 'male';

SELECT * FROM users WHERE salary < 60000;

SELECT * FROM users WHERE salary <= 55000;

SELECT * FROM users WHERE salary > 55000;

SELECT * FROM users WHERE salary >= 60000;

SELECT * FROM users WHERE salary BETWEEN 55000 AND 60000;

SELECT * FROM users WHERE salary NOT BETWEEN 55000 AND 60000;

SELECT * FROM users WHERE salary IS NULL;

SELECT * FROM users WHERE salary IS NOT NULL;

SELECT * FROM users WHERE gender IN ('male', 'female');

SELECT * FROM users WHERE gender NOT IN('male', 'female');

SELECT * FROM users WHERE gender = 'female' AND salary > 60000;

SELECT * FROM users WHERE gender = 'male' OR salary > 50000;

SELECT * FROM users WHERE name LIKE 'A%';

SELECT * FROM users WHERE name LIKE '%A';

SELECT * FROM users WHERE name LIKE '%A%';

SELECT * FROM users WHERE name LIKE '_i%ta';

SELECT * FROM users WHERE name LIKE '%A' ORDER BY salary DESC;

SELECT * FROM users ORDER BY salary ASC LIMIT 3;

SELECT * FROM users LIMIT 5 OFFSET 10;

SELECT * FROM users LIMIT 10, 5;

SELECT DISTINCT gender FROM users;