USE mydb;

DROP TABLE IF EXISTS user_log;

CREATE TABLE user_log (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    name VARCHAR(100),
    created_on TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

DROP TRIGGER IF EXISTS after_user_insert;

DELIMITER $$

CREATE TRIGGER after_user_insert
AFTER INSERT ON users
FOR EACH ROW
BEGIN
    INSERT INTO user_log (user_id, name)
    VALUES (NEW.id, NEW.name);
END$$

DELIMITER;

INSERT INTO
    users (
        name,
        email,
        gender,
        date_of_birth,
        salary
    )
VALUES (
        'Arya',
        'arya@example.com',
        'female',
        '1990-01-01',
        70000
    );

SELECT * FROM user_log;