SELECT DISTINCT m.movie_id, m.title, ml.rating
FROM People p
JOIN Friendships f ON (p.person_id = f.person1_id OR p.person_id = f.person2_id)
JOIN People f_person ON (f.person1_id = f_person.person_id OR f.person2_id = f_person.person_id)
JOIN MovieLikes ml ON f_person.person_id = ml.person_id
JOIN Movies m ON ml.movie_id = m.movie_id
WHERE p.name = 'Joe' AND f_person.name <> 'Joe';
