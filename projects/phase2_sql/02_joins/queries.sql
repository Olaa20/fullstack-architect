--1️⃣ INNER JOIN (les correspondances dans les deux tables)

-- Tous les livres avec le nom de leur auteur
SELECT b.title, a.name AS author
FROM books b
INNER JOIN authors a ON b.author_id = a.id;

--2️⃣ LEFT JOIN (tous les livres même sans auteur lié)
--(utile si certaines valeurs de clé étrangère sont NULL)

SELECT b.title, a.name AS author
FROM books b
LEFT JOIN authors a ON b.author_id = a.id;

--3️⃣ RIGHT JOIN (tous les auteurs même sans livre)
SELECT a.name AS author, b.title
FROM authors a
RIGHT JOIN books b ON b.author_id = a.id;

--4️⃣ FULL OUTER JOIN (tout le monde, même sans correspondance)
SELECT a.name AS author, b.title
FROM authors a
FULL JOIN books b ON b.author_id = a.id;

--🧩 Étape 4 — Filtrage et alias

-- Livres publiés avant 2000 avec le nom de l’auteur
SELECT b.title, b.published_year, a.name AS author
FROM books b
JOIN authors a ON b.author_id = a.id
WHERE b.published_year < 2000
ORDER BY b.published_year ASC;

--🧮 Étape 5 — Agrégats sur jointures

-- Nombre de livres par auteur
SELECT a.name AS author, COUNT(b.id) AS nb_books
FROM authors a
LEFT JOIN books b ON b.author_id = a.id
GROUP BY a.name
ORDER BY nb_books DESC;

--🧱 Étape 6 — Sous-requêtes

--Ex. 1 : auteur ayant le plus de livres

SELECT a.name
FROM authors a
WHERE a.id = (
  SELECT author_id
  FROM books
  GROUP BY author_id
  ORDER BY COUNT(*) DESC
  LIMIT 1
);

--Ex. 2 : livres plus récents que la moyenne

SELECT title, published_year
FROM books
WHERE published_year > (
  SELECT AVG(published_year) FROM books
);

--🧾 Étape 7 — Création d’une vue

CREATE OR REPLACE VIEW vw_books_authors AS
SELECT b.id AS book_id, b.title, b.genre, b.published_year,
       a.name AS author, a.nationality
FROM books b
JOIN authors a ON b.author_id = a.id;
Puis teste :

sql
Copier le code
SELECT * FROM vw_books_authors ORDER BY published_year DESC;