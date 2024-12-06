-- Create People Table
CREATE TABLE People (
    person_id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL
);

-- Create Friendships Table
CREATE TABLE Friendships (
    person1_id INT REFERENCES People(person_id),
    person2_id INT REFERENCES People(person_id),
    PRIMARY KEY (person1_id, person2_id)
);


-- Create MovieLikes Table
CREATE TABLE MovieLikes (
    person_id INT REFERENCES People(person_id),
    movie_id INT REFERENCES Movies(movie_id),
    rating INT,
    PRIMARY KEY (person_id, movie_id)
);