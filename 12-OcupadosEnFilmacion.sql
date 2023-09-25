SELECT a.first_name, a.last_name, m.name, m.year, COUNT(DISTINCT r.role) as cantidadRoles
FROM actors as a
JOIN roles as r ON a.id = r.actor_id
JOIN movies as m ON r.movie_id = m.id
WHERE m.year > 1990
GROUP BY r.actor_id, m.id
HAVING cantidadRoles >= 5


