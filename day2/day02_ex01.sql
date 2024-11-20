SELECT missing_date::date FROM GENERATE_SERIES ('2022-01-01', '2022-01-10', interval '1 day') as missing_date
LEFT JOIN
	(SELECT * 
	FROM person_visits 
	WHERE (person_id = 1 OR person_id = 2) 
	AND (visit_date BETWEEN '2022-01-01' AND '2022-01-10'))
ON visit_date = missing_date 
WHERE visit_date IS NULL
ORDER BY missing_date