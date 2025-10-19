CREATE DATABASE learn_sql;
\c learn_sql;

CREATE TABLE authors (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    nationality VARCHAR(50)
);

CREATE TABLE books (
    id SERIAL PRIMARY KEY,
    title VARCHAR(150) NOT NULL,
    author_id INT REFERENCES authors(id),
    genre VARCHAR(50),
    published_year INT,
    copies_available INT
);
