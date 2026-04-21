USE mydb;

ALTER TABLE users ADD COLUMN refered_by_id INT;

UPDATE users SET refered_by_id = 1 WHERE id IN (2, 3);

UPDATE users SET refered_by_id = 2 WHERE id = 4;

SELECT * FROM users;

SELECT
    user1.name AS user_name,
    user1.email AS user_email,
    user2.name AS referer_name,
    user2.email AS referer_email
FROM users AS user1
    Inner JOIN users AS user2 ON user1.refered_by_id = user2.id;