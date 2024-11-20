SELECT coalesce(person_name, '-') as person_name, visit_date, coalesce(name, '-') as pizzeria_name 
FROM pizzeria
FULL JOIN
	(SELECT name as person_name, visit_date, pizzeria_id 
	 FROM person
	FULL JOIN (SELECT * 
			   FROM person_visits 
			   WHERE visit_date 
			   BETWEEN '2022-01-01' AND '2022-01-03')
	ON person.id = person_id)
ON pizzeria.id = pizzeria_id
ORDER BY person_name, visit_date, pizzeria_name