LOAD CSV WITH HEADERS FROM 'file:///actors.csv' AS row
CREATE (:Actor {actor_id: row['actor_id'], name: row.name});

LOAD CSV WITH HEADERS FROM 'file:///genres.csv' AS row
CREATE (:Genre {name: row.name, position: toInteger(row.position)});

LOAD CSV WITH HEADERS FROM 'file:///movies.csv' AS row
CREATE (:Movie {movie_id: row['movie_id'], title: row.title});
