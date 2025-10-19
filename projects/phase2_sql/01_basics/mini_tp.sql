-- TP : Requêtes analytiques sur learn_sql

-- 1. Tous les livres après 1950 triés par année
SELECT title, published_year FROM books WHERE published_year > 1950 ORDER BY published_year;

-- 2. Tous les auteurs français ou nigérians
SELECT * FROM authors WHERE nationality IN ('Française', 'Nigérianne');

-- 3. Moyenne d’exemplaires disponibles par genre
SELECT genre, ROUND(AVG(copies_available),2) AS moyenne FROM books GROUP BY genre;

-- 4. Nombre total d’auteurs
SELECT COUNT(*) FROM authors;

-- 5. Les 2 livres les plus anciens
SELECT title, published_year FROM books ORDER BY published_year ASC LIMIT 2;
