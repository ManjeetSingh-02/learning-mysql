USE mydb;

UPDATE users SET salary = 78000 WHERE id = 5;

UPDATE users SET salary = salary + 5000 WHERE gender = 'female';

UPDATE users SET salary = salary + 10000 WHERE salary < 60000;

SELECT * FROM users;