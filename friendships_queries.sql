INSERT INTO users (first_name, last_Name, created_at, updated_at)
VALUES ("Bob", "Belcher", NOW(), NOW());

INSERT INTO users (first_name, last_Name, created_at, updated_at)
VALUES ("Linda", "Belcher", NOW(), NOW());

INSERT INTO users (first_name, last_Name, created_at, updated_at)
VALUES ("Tina", "Belcher", NOW(), NOW());

INSERT INTO users (first_name, last_Name, created_at, updated_at)
VALUES ("Louis", "Belcher", NOW(), NOW());

INSERT INTO users (first_name, last_Name, created_at, updated_at)
VALUES ("Gene", "Belcher", NOW(), NOW());

INSERT INTO users (first_name, last_Name, created_at, updated_at)
VALUES ("Jimmy Jr.", "Pesto", NOW(), NOW());

SELECT * FROM users;

INSERT INTO friendships (friend_id, user_id, created_at, updated_at)
VALUES(1,2, NOW(), NOW());

INSERT INTO friendships (friend_id, user_id, created_at, updated_at)
VALUES(1,4, NOW(), NOW());

INSERT INTO friendships (friend_id, user_id, created_at, updated_at)
VALUES(1,6, NOW(), NOW());

INSERT INTO friendships (friend_id, user_id, created_at, updated_at)
VALUES(2,1, NOW(), NOW());

INSERT INTO friendships (friend_id, user_id, created_at, updated_at)
VALUES(2,3, NOW(), NOW());

INSERT INTO friendships (friend_id, user_id, created_at, updated_at)
VALUES(2,5, NOW(), NOW());

INSERT INTO friendships (friend_id, user_id, created_at, updated_at)
VALUES(3,2, NOW(), NOW());

INSERT INTO friendships (friend_id, user_id, created_at, updated_at)
VALUES(3,5, NOW(), NOW());

INSERT INTO friendships (friend_id, user_id, created_at, updated_at)
VALUES(4,3, NOW(), NOW());

INSERT INTO friendships (friend_id, user_id, created_at, updated_at)
VALUES(5,1, NOW(), NOW());

INSERT INTO friendships (friend_id, user_id, created_at, updated_at)
VALUES(5,6, NOW(), NOW());

INSERT INTO friendships (friend_id, user_id, created_at, updated_at)
VALUES(6,2, NOW(), NOW());

INSERT INTO friendships (friend_id, user_id, created_at, updated_at)
VALUES(6,3, NOW(), NOW());

SELECT * FROM friendships;

SELECT users.first_name, users.last_name, users2.first_name as friend_first_name, users2.last_name as friend_last_name FROM users
JOIN friendships ON users.id = friendships.user_id
LEFT JOIN users as users2 ON users2.id = friendships.friend_id;

SELECT users2.first_name as first_name, users2.last_name as last_name, users.first_name as friends_with FROM users
JOIN friendships ON users.id = friendships.user_id
LEFT JOIN users as users2 ON users2.id = friendships.friend_id
WHERE users.id = 1;

SELECT COUNT(*) AS num_of_friendship FROM friendships;

SELECT user_id, users.first_name, users.last_name, COUNT(user_id) AS num_of_friends FROM friendships
JOIN users on users.id = friendships.user_id
GROUP BY user_id
ORDER BY num_of_friends DESC 
LIMIT 1;

SELECT users2.first_name as first_name, users2.last_name as last_name, users.first_name as friends_with FROM users
JOIN friendships ON users.id = friendships.user_id
LEFT JOIN users as users2 ON users2.id = friendships.friend_id
WHERE users.id = 3
ORDER BY first_name;