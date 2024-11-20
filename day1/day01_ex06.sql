SELECT action_date,name as person_name
FROM person
INNER JOIN 
	(SELECT order_date AS action_date,person_id FROM person_order
	INTERSECT
	SELECT visit_date, person_id from person_visits
	ORDER BY action_date, person_id DESC)
ON person_id=person.id
ORDER BY  action_date ASC, person_name DESC