WITH day_gen AS 
	(SELECT missing_date::date 
	FROM GENERATE_SERIES ('2022-01-01', '2022-01-10', interval '1 day') as missing_date
)

SELECT day_gen.missing_date FROM day_gen
LEFT JOIN (
	SELECT * 
	FROM person_visits
	WHERE (person_id = 1 OR person_id = 2)
	AND (visit_date BETWEEN '2022-01-01' AND '2022-01-10')
)
ON visit_date = day_gen.missing_date
WHERE visit_date IS NULL
