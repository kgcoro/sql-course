SELECT nationality, COUNT(author_id) AS num_authors 
FROM authors
WHERE nationality IS NOT NULL
    AND nationality NOT IN('RUS', 'AUS')
GROUP BY nationality
ORDER BY num_authors DESC, nationality ASC;



SELECT nationality,
    COUNT(book_id) AS libros, 
    AVG(price) AS prom,
    STDDEV(price) AS std
FROM books AS b
JOIN authors AS a
    ON a.author_id = b.author_id
GROUP BY nationality
ORDER BY libros DESC;



SELECT a.nationality, MAX(price), MIN(price)
FROM books AS b
JOIN authors AS a
    ON a.author_id = b.author_id
GROUP BY nationality;



SELECT c.name, o.type, b.title, 
    CONCAT(a.name, " (", a.nationality, ")") AS autor,
    TO_DAYS(NOW()) - TO_DAYS(o.created_at) AS ago
FROM operations AS o
LEFT JOIN clients AS c
    ON c.client_id = o.client_id
LEFT JOIN books AS b
    ON b.book_id = o.book_id
LEFT JOIN authors AS a
    ON b.author_id = a.author_id;