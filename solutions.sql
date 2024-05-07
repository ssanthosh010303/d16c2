/*
 * Author: Sakthi Santhosh
 * Created on: 02/05/2024
 */
SELECT title FROM titles;

SELECT * FROM titles WHERE pub_id = '1389';

SELECT * FROM titles WHERE price BETWEEN 10 AND 15;

SELECT * FROM titles WHERE price IS NULL;

SELECT * FROM titles WHERE title LIKE 'the%';

SELECT * FROM titles WHERE title NOT LIKE '%v%';

SELECT * FROM titles ORDER BY royalty;

SELECT *
FROM titles
ORDER BY pub_id DESC, type ASC, price DESC;

SELECT type, AVG(price) AS avg_price
FROM titles
GROUP BY type;

SELECT DISTINCT type FROM titles;

SELECT type FROM titles GROUP BY type;

SELECT TOP 2 * FROM titles ORDER BY price DESC;

SELECT title
FROM titles
WHERE type = 'business' AND price < 20 AND advance > 7000;

SELECT pub_id, COUNT(title_id)
FROM titles
WHERE price BETWEEN 15 AND 25
AND title LIKE '%it%'
GROUP BY pub_id
HAVING COUNT(title_id) > 2
ORDER BY COUNT(title_id) ASC;

SELECT *
FROM authors
WHERE state = 'CA';

SELECT state, COUNT(*) AS num_authors
FROM authors
GROUP BY state;
