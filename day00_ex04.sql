--SELECT * FROM person WHERE id = 1 

SELECT CONCAT(name, ' (age:', age,',gender:''', gender, ''',address:''', address,''')') as column_info
FROM person 
ORDER BY column_info ASC