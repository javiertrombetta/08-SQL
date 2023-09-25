SELECT a.first_name, a.last_name
FROM actors as a
JOIN roles as r ON a.id = r.actor_id
JOIN movies as m ON r.movie_id = m.id
WHERE m.name = 'Braveheart' AND m.year = 1995
ORDER BY a.last_name ASC