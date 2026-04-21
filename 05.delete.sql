USE mydb;

DELETE FROM users WHERE salary < 60000;

DELETE FROM users WHERE salary < 60000 AND gender = 'male';

DELETE FROM users WHERE salary < 60000 OR gender = 'male';

DELETE FROM users;

SELECT * FROM users;