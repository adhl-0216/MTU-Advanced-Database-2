SELECT p.name AS person, COUNT(f.person2_id) AS friends
FROM People p
JOIN Friendships f ON p.person_id = f.person1_id
GROUP BY p.person_id
ORDER BY friends DESC
LIMIT 1;