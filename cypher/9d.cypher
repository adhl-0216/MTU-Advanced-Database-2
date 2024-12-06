// Create graph
CALL gds.graph.project(
  'mostFriendsGraph',          
  'Person',               
  { FRIENDS_WITH: {orientation: 'NATURAL'}}
);

// Degree Centrality Algorithm
CALL gds.degree.stream('mostFriendsGraph')
YIELD nodeId, score
RETURN gds.util.asNode(nodeId).name AS person, score AS friends
ORDER BY score DESC
LIMIT 1