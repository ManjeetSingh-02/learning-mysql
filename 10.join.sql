USE mydb;

SELECT users.name, users.gender, addresses.city, addresses.state
FROM users
    INNER JOIN addresses ON users.id = addresses.user_id;

SELECT users.name, users.gender, addresses.city, addresses.state
FROM users
    LEFT JOIN addresses ON users.id = addresses.user_id;

SELECT users.name, users.gender, addresses.city, addresses.state
FROM users
    RIGHT JOIN addresses ON users.id = addresses.user_id;