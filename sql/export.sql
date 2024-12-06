-- genres.csv
\copy (SELECT * FROM genres) TO 'export/genres.csv' WITH CSV HEADER;

-- movies.csv
\copy (SELECT * FROM movies) TO 'export/movies.csv' WITH CSV HEADER;

-- actors.csv
\copy (SELECT * FROM actors) TO 'export/actors.csv' WITH CSV HEADER;

-- movies_actors.csv
\copy (SELECT * FROM movies_actors) TO 'export/movies_actors.csv' WITH CSV HEADER;




