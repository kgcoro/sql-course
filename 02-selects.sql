SELECT b.book_id, a.name, b.title 
FROM books AS b 
JOIN authors AS a 
    ON a.author_id = b.author_id 
WHERE a.author_id between 1 AND 5;



SELECT c.name, b.title, op.type
FROM operations AS op
JOIN books AS b
    ON op.book_id = b.book_id
JOIN clients AS c
    ON op.client_id = c.client_id;



SELECT c.name, b.title, op.type
FROM operations AS op
JOIN books AS b
    ON op.book_id = b.book_id
JOIN clients AS c
    ON op.client_id = c.client_id
WHERE c.gender = 'F' AND op.type = 'sold';



SELECT c.name, b.title, a.name, op.type
FROM operations AS op
JOIN books AS b
    ON op.book_id = b.book_id
JOIN clients AS c
    ON op.client_id = c.client_id
JOIN authors AS a
    ON b.author_id = a.author_id
WHERE c.gender = 'F' AND op.type = 'sold';



SELECT c.name, b.title, a.name, op.type
FROM operations AS op
JOIN books AS b
    ON op.book_id = b.book_id
JOIN clients AS c
    ON op.client_id = c.client_id
JOIN authors AS a
    ON b.author_id = a.author_id
WHERE c.gender = 'M' AND op.type IN ('sold', 'lent');



SELECT a.author_id, a.name, a.nationality, b.title
FROM authors AS a
JOIN books AS b
    ON b.author_id = a.author_id
WHERE a.author_id BETWEEN 1 AND 10
ORDER BY author_id;



SELECT a.author_id, a.name, a.nationality, b.title
FROM authors AS a
LEFT JOIN books AS b
    ON b.author_id = a.author_id
WHERE a.author_id BETWEEN 1 AND 10
ORDER BY author_id;



SELECT a.author_id, a.name, a.nationality, b.title, COUNT(b.book_id)
FROM authors AS a
LEFT JOIN books AS b
    ON b.author_id = a.author_id
WHERE a.author_id BETWEEN 1 AND 10
GROUP BY a.author_id
ORDER BY author_id;