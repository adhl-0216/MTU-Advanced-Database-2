MATCH (a:Actor {name: 'Leonardo DiCaprio'})-[:ACTED_IN]->(m:Movie)
MATCH (m)-[:HAS_GENRE]-(g:Genre)
RETURN m, g, a