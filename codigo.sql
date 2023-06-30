/* 
SELECT *
Mostrar todos los registros de la tabla de movies.
Mostrar el nombre, apellido y rating de todos los actores.
Mostrar el título de todas las series.

WHERE Y ORDER BY
Mostrar el nombre y apellido de los actores cuyo rating sea mayor a 7,5.
Mostrar el título de las películas, el rating y los premios de las películas con un rating mayor a 7,5 y con más de dos premios.
Mostrar el título de las películas y el rating ordenadas por rating en forma ascendente.

BETWEEN y LIKE
Mostrar el título y rating de todas las películas cuyo título incluya Toy Story.
Mostrar a todos los actores cuyos nombres empiecen con Sam.
Mostrar el título de las películas que salieron entre el ‘2004-01-01’ y ‘2008-12-31’.


SELECT * FROM movies;
SELECT first_name, last_name, rating FROM actors;
SELECT title from series;
SELECT first_name, last_name FROM actors WHERE rating > 7.5;
SELECT title, rating FROM movies WHERE rating >=7.5 AND awards >2;
SELECT title, rating FROM movies WHERE title LIKE '%Toy Story%';
SELECT * FROM actors WHERE first_name LIKE 'Sam%';
SELECT * FROM movies WHERE release_date BETWEEN '2004-01-01' AND '2008-12-31' ;
*/





