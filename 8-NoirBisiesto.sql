SELECT d.first_name, d.last_name, m.name, m.year
FROM directors as d
JOIN movies_directors as md ON d.id = md.director_id
JOIN movies as m ON md.movie_id = m.id
JOIN movies_genres as mg ON m.id = mg.movie_id
WHERE mg.genre = 'Film-Noir' AND m.year % 4 = 0
ORDER BY m.name ASC