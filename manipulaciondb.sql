-- ------------------------------------- --
-- TP MANIPULACION Y CONSULTA DE DATOS   --
-- ---------------------------------------- 


-- Micro1--
-- INSERT DELETE UPDATE:
INSERT INTO `movies_db`.`genres` (`name`, `ranking`, `active`) VALUES ('investigacion', '13', '1');

INSERT INTO `movies_db`.`genres` (`name`, `ranking`, `active`) VALUES ('investigacion cientifica', '13', '1');

DELETE FROM genres WHERE id = 13;


-- Haciendo uso de SELECT:
SELECT * FROM movies;

SELECT  first_name, last_name, rating
FROM actors;

SELECT title AS titulo
FROM series;

-- MICRO 2--
SELECT first_name, last_name, rating
FROM actors
WHERE rating > 7.5;

SELECT title,rating, awards
FROM movies
WHERE rating > 7.5 AND awards > 2;

SELECT title, rating 
FROM movies
ORDER BY rating;

-- MICRO 3 --

SELECT title
FROM movies LIMIT 3;

SELECT title, rating
FROM movies
ORDER BY rating DESC LIMIT 5;

SELECT title, rating
FROM movies
ORDER BY rating DESC
LIMIT 5 OFFSET 10;

SELECT 	first_name , last_name
FROM actors
LIMIT 10 OFFSET 20;

-- MICRO DESAFIO 4 --

SELECT title, rating
FROM movies
WHERE title LIKE 'harry%';

SELECT first_name, last_name
FROM actors
WHERE first_name LIKE 'sam%';

SELECT title, release_date
FROM movies
WHERE release_date BETWEEN '2004-01-01' AND '2008-12-31';


-- by: Fabian Coseglia --