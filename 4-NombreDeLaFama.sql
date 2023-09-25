SELECT first_name, COUNT(*) as cantidad
FROM actors 
GROUP BY first_name
ORDER BY cantidad DESC LIMIT 10

SELECT last_name, COUNT(*) as cantidad
FROM actors 
GROUP BY last_name
ORDER BY cantidad DESC LIMIT 10

SELECT first_name || ' ' || last_name as full_name, COUNT(*) as cantidad
FROM actors 
GROUP BY full_name
ORDER BY cantidad DESC LIMIT 10