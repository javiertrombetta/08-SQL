SELECT m.name, a.first_name, a.last_name
FROM actors as a
JOIN roles as r ON a.id = r.actor_id
JOIN movies as m ON r.movie_id = m.id
JOIN movies_genres as mg ON m.id = mg.movie_id
WHERE mg.genre = 'Drama'
AND m.id IN (
  SELECT roles.movie_id
  FROM roles
  JOIN actors ON roles.actor_id = actors.id
  WHERE actors.first_name = 'Kevin' AND actors.last_name = 'Bacon'
)
AND a.id != (
  SELECT actors.id
  FROM actors
  WHERE actors.first_name = 'Kevin' AND actors.last_name = 'Bacon'
)
