SELECT person_name, pizza_name, pizzeria.name as pizzeria_name FROM pizzeria
INNER JOIN 
	(SELECT person.name as person_name, pizza_name, pizzeria_id FROM person
	INNER JOIN 
		(SELECT menu.id, pizza_name, pizzeria_id, person_id, menu_id 
		FROM menu
		INNER JOIN person_order 
		ON menu.id = person_order.menu_id)
	ON person_id = person.id)
ON pizzeria_id = pizzeria.id
ORDER BY person_name, pizza_name, pizzeria_name