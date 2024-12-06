LOAD CSV WITH HEADERS FROM 'file:///movies.csv' AS row
WITH 
    row,
    split(substring(row.genre, 1, size(row.genre) - 2), ', ') AS genre_values  // Remove parentheses and split by comma

MATCH (m:Movie {title: row.title}) // Match the existing Movie node based on the title.
WITH m, genre_values

// Iterate over the indices of genre_values array.
UNWIND range(0, size(genre_values) - 1) AS i   
WITH 
    m, 
    i, 
    toInteger(genre_values[i]) AS weight, 
    i + 1 AS position

// Filter non zero weights
WHERE weight > 0
// Match Genre by position.
MATCH (g:Genre {position: position}) 
// Iterate over the genre values to create relationships.
WITH m, g, weight
// Create relationship with weight.
MERGE (m)-[r:HAS_GENRE {scale: weight}]->(g);