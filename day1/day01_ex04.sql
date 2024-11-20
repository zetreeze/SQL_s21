--SELECT person_id FROM 
--(SELECT * FROM person_order WHERE order_date = '2022-01-07'
--UNION ALL
--SELECT * FROM person_visits WHERE visit_date = '2022-01-07')
--person_order
--GROUP BY person_id HAVING COUNT(*) = 2

SELECT person_id FROM person_order WHERE order_date = '2022-01-07'
EXCEPT ALL
SELECT person_id FROM person_visits WHERE visit_date = '2022-01-07'