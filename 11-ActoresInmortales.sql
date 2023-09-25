SELECT a.first_name, a.last_name, a.id
FROM actors a
WHERE a.id IN (
  SELECT roles.actor_id
  FROM roles
  JOIN movies ON roles.movie_id = movies.id
  WHERE movies.year < 1900
)
AND a.id IN (
  SELECT roles.actor_id
  FROM roles
  JOIN movies ON roles.movie_id = movies.id
  WHERE movies.year > 2000
)