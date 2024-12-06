// Create Person nodes
CREATE (joe:Person {name: 'Joe'}),
       (jack:Person {name: 'Jack'}),
       (john:Person {name: 'John'}),
       (jill:Person {name: 'Jill'}),
       (jane:Person {name: 'Jane'}),
       (janice:Person {name: 'Janice'})
WITH  joe, jack , john, jill, jane, janice
// Create friendships
MERGE (joe)-[:FRIENDS_WITH]->(jill)
MERGE (jill)-[:FRIENDS_WITH]->(jane)
MERGE (joe)-[:FRIENDS_WITH]->(jack)
MERGE (jack)-[:FRIENDS_WITH]->(janice);



// Jack likes movies with ratings
MATCH (jack:Person {name: 'Jack'})
MATCH (m:Movie)
WHERE m.title = 'Star Wars'
MERGE (jack)-[:LIKES {rating: 3}]->(m);

MATCH (jack:Person {name: 'Jack'})
MATCH (m:Movie)
WHERE m.title = 'Forrest Gump'
MERGE (jack)-[:LIKES {rating: 4}]->(m);

MATCH (jack:Person {name: 'Jack'})
MATCH (m:Movie)
WHERE m.title = 'American Beauty'
MERGE (jack)-[:LIKES {rating: 5}]->(m);



// Jill likes movies with ratings
MATCH (jill:Person {name: 'Jill'})
MATCH (m:Movie)
WHERE m.title = 'Citizen Kane'
MERGE (jill)-[:LIKES {rating: 4}]->(m);

MATCH (jill:Person {name: 'Jill'})
MATCH (m:Movie)
WHERE m.title = 'The Dark'
MERGE (jill)-[:LIKES {rating: 5}]->(m);

MATCH (jill:Person {name: 'Jill'})
MATCH (m:Movie)
WHERE m.title = 'The Fifth Element'
MERGE (jill)-[:LIKES {rating: 5}]->(m);
