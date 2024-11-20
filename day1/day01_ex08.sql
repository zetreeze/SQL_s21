SELECT order_date,
name || ' (age:' || age || ')' as person_information 
FROM person
NATURAL JOIN 
	(SELECT id as person_order_id,
	 person_id as id,
	 order_date
	 FROM person_order)
ORDER BY order_date, person_information
