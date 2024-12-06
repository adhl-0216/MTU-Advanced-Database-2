-- Insert data into People table
INSERT INTO People (name) VALUES
('Joe'),
('Jack'),
('John'),
('Jill'),
('Jane'),
('Janice');

-- Insert data into Friendships table
INSERT INTO Friendships (person1_id, person2_id) 
SELECT joe.person_id, jill.person_id FROM People joe, People jill WHERE joe.name = 'Joe' AND jill.name = 'Jill'
UNION
SELECT joe.person_id, jack.person_id FROM People joe, People jack WHERE joe.name = 'Joe' AND jack.name = 'Jack'
UNION
SELECT jill.person_id, jane.person_id FROM People jill, People jane WHERE jill.name = 'Jill' AND jane.name = 'Jane'
UNION
SELECT jack.person_id, janice.person_id FROM People jack, People janice WHERE jack.name = 'Jack' AND janice.name = 'Janice';

-- Insert data into MovieLikes table for Jack
INSERT INTO MovieLikes (person_id, movie_id, rating)
SELECT jack.person_id, m.movie_id, 3 FROM People jack, Movies m WHERE jack.name = 'Jack' AND m.title = 'Star Wars'
UNION
SELECT jack.person_id, m.movie_id, 4 FROM People jack, Movies m WHERE jack.name = 'Jack' AND m.title = 'Forrest Gump'
UNION
SELECT jack.person_id, m.movie_id, 5 FROM People jack, Movies m WHERE jack.name = 'Jack' AND m.title = 'American Beauty';

-- Insert data into MovieLikes table for Jill
INSERT INTO MovieLikes (person_id, movie_id, rating)
SELECT jill.person_id, m.movie_id, 4 FROM People jill, Movies m WHERE jill.name = 'Jill' AND m.title = 'Citizen Kane'
UNION
SELECT jill.person_id, m.movie_id, 5 FROM People jill, Movies m WHERE jill.name = 'Jill' AND m.title = 'The Dark'
UNION
SELECT jill.person_id, m.movie_id, 5 FROM People jill, Movies m WHERE jill.name = 'Jill' AND m.title = 'The Fifth Element';
