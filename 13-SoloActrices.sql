SELECT m.year, COUNT(DISTINCT m.id) as contadorMovie
FROM movies as m
JOIN roles as r ON m.id = r.movie_id
JOIN actors as a ON r.actor_id = a.id
WHERE a.gender = 'F'
AND m.id NOT IN (
  SELECT roles.movie_id
  FROM roles
  JOIN actors ON roles.actor_id = actors.id
  WHERE actors.gender = 'M'
)
GROUP BY m.year



SELECT m.year, COUNT(DISTINCT m.id) as contadorMovie
FROM movies as m
JOIN roles as r ON m.id = r.movie_id
JOIN actors as a ON r.actor_id = a.id
WHERE a.gender = 'F'
AND m.id NOT IN (
  SELECT roles.movie_id
  FROM roles
  JOIN actors ON roles.actor_id = actors.id
  WHERE actors.gender = 'M'
)
GROUP BY m.year