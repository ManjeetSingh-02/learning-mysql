USE mydb;

SHOW PROCEDURE STATUS WHERE Db = 'mydb';

DROP PROCEDURE IF EXISTS add_user;

DELIMITER $$

CREATE PROCEDURE select_users()
BEGIN
    SELECT * FROM users;
END $$

DELIMITER;

CALL select_users ();

DELIMITER $$

CREATE PROCEDURE add_user(
    IN p_name VARCHAR(30),
    IN p_email VARCHAR(30),
    IN p_gender ENUM('male', 'female', 'other'),
    IN p_dob DATE,
    IN p_salary INT
)
BEGIN
    INSERT INTO users (name, email, gender, date_of_birth, salary)
    VALUES (p_name, p_email, p_gender, p_dob, p_salary);
    SELECT * FROM users;
END $$

DELIMITER;

CALL add_user (
    'Alice',
    'alice@example.com',
    'female',
    '1990-01-01',
    70000
);