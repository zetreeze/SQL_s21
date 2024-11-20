SELECT order_date, person_information
FROM person_order
INNER JOIN 
	(SELECT id as personid,
	name || ' (age:' || age || ')' as person_information
	FROM person)
ON person_order.person_id = personid
ORDER BY order_date, person_information