MATCH p = shortestPath(
  (keanu:Actor {name: 'Keanu Reeves'})-[:ACTED_IN*..10]-(leonardo:Actor {name: 'Leonardo DiCaprio'})
)
RETURN 
  [node IN nodes(p) | CASE 
    WHEN 'Actor' IN labels(node) THEN node.name 
    ELSE node.title 
  END] AS path,
  length(p) / 2 AS degree_of_separation;
