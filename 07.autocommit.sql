SET autocommit = 0;

SELECT * from users;

DELETE FROM users WHERE id = 2;

ROLLBACK;

DELETE FROM users WHERE id = 3;

COMMIT;

SET autocommit = 1;