LOAD CSV WITH HEADERS FROM 'file:///movies_actors.csv' AS row
MATCH (m:Movie {movie_id: row.movie_id})
WITH m, row
MATCH (a:Actor {actor_id: row.actor_id})
CREATE (a)-[:ACTED_IN]->(m);
