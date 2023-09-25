SELECT a.first_name, a.last_name, COUNT(r.actor_id) as contador_roles
FROM actors as a
JOIN roles as r ON a.id = r.actor_id
GROUP BY r.actor_id
ORDER BY contador_roles DESC
LIMIT 100


/*
SELECT a.first_name, a.last_name, subtabla.contador_subquery
FROM actors as a
JOIN (
  SELECT actor_id, COUNT(*) as contador_subquery
  FROM  roles
  GROUP BY actor_id
) as subtabla
ON a.id = subtabla.actor_id
ORDER BY subtabla.contador_subquery DESC
LIMIT 100
/*
