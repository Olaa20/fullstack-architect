-- ========================================
-- Phase 2 / Semaine 1 - Bases du SQL
-- ========================================

-- 1. Voir toutes les lignes de la table books
SELECT * FROM books;

-- 2. Sélectionner certaines colonnes
SELECT title, genre, published_year FROM books;

-- 3. Trier les résultats par année croissante
SELECT title, published_year FROM books ORDER BY published_year ASC;

-- 4. Trier par année décroissante puis par titre
SELECT title, published_year FROM books ORDER BY published_year DESC, title ASC;

-- 5. Limiter les résultats
SELECT title, genre FROM books ORDER BY published_year DESC LIMIT 2;

-- 6. Livres publiés après 1950
SELECT title, published_year FROM books WHERE published_year > 1950;

-- 7. Livres du genre "Roman"
SELECT title, genre FROM books WHERE genre = 'Roman';

-- 8. Livres dont le titre contient la lettre 'a'
SELECT title FROM books WHERE title ILIKE '%a%';   -- ILIKE = insensible à la casse

-- 9. Livres publiés entre 1940 et 2000
SELECT title, published_year FROM books WHERE published_year BETWEEN 1940 AND 2000;

-- 10. Livres dont le nombre d’exemplaires est dans une liste
SELECT title, copies_available FROM books WHERE copies_available IN (2,4);

-- 11. Compter les livres
SELECT COUNT(*) AS nb_livres FROM books;

-- 12. Moyenne des exemplaires disponibles
SELECT AVG(copies_available) AS moyenne_exemplaires FROM books;

-- 13. Année la plus récente de publication
SELECT MAX(published_year) AS plus_recent FROM books;

-- 14. Auteur ayant le plus grand id
SELECT MAX(id) AS dernier_auteur FROM authors;

-- 15. Nombre de livres par genre
SELECT genre, COUNT(*) AS nb_livres
FROM books
GROUP BY genre
ORDER BY nb_livres DESC;

-- 16. Nombre moyen d’exemplaires par auteur
SELECT author_id, AVG(copies_available) AS moy_exemplaires
FROM books
GROUP BY author_id
ORDER BY moy_exemplaires DESC;
