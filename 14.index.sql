USE mydb;

SHOW INDEXES FROM users;

CREATE INDEX idx_email ON users (email);

SELECT * FROM users WHERE email = 'raj@example.com';

CREATE INDEX idx_gender_salary ON users (gender, salary);

SELECT * FROM users WHERE gender = 'Female' AND salary > 70000;

DROP INDEX idx_email ON users;

DROP INDEX idx_gender_salary ON users;