WITH right_pizza AS (
	SELECT * FROM menu 
	WHERE (pizza_name = 'mushroom pizza' OR pizza_name = 'pepperoni pizza')
)

SELECT pizza_name, pizzeria.name as pizzeria_name, price FROM right_pizza
LEFT JOIN pizzeria
ON pizzeria_id = pizzeria.id
ORDER BY pizza_name, pizzeria_name