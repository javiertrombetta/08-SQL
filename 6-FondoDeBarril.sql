SELECT genre, COUNT(*) as peliculasxgenero
FROM movies_genres as g
LEFT JOIN movies as m ON m.id = g.movie_id
GROUP BY genre
ORDER BY peliculasxgenero DESC