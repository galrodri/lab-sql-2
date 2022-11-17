-- Question 1 
SELECT DISTINCT *
FROM SAKILA.ACTOR
WHERE FIRST_NAME = 'Scarlett'

-- Question 2
SELECT DISTINCT *
FROM SAKILA.ACTOR
WHERE LAST_NAME = 'Johansson'

-- Question 3 
SELECT COUNT(DISTINCT FILM_ID) AS FILM_COUNT
FROM SAKILA.INVENTORY

-- Question 4
SELECT COUNT(DISTINCT FILM_ID) AS FILM_COUNT
FROM SAKILA.INVENTORY A
INNER JOIN SAKILA.RENTAL B
ON A.INVENTORY_ID = B.INVENTORY_ID

-- Question 4 (option B)
SELECT COUNT(DISTINCT RENTAL_ID) AS RENTAL_COUNT
FROM SAKILA.RENTAL

-- Question 5 
SELECT MAX(RENTAL_DURATION) AS MAX_RENTAL_DURATION
	, MIN(RENTAL_DURATION) AS MIN_RENTAL_DURATION
FROM SAKILA.FILM

-- Question 6 
SELECT MAX(LENGTH) AS MAX_DURATION
	, MIN(LENGTH) AS MIN_DURATION
FROM SAKILA.FILM

-- Question 7
SELECT AVG(LENGTH) AS AVG_MOVIE_DURATION
FROM SAKILA.FILM

-- Question 8 
SELECT CONCAT(FLOOR(AVG(LENGTH)/60),'h ',LPAD(MOD(AVG(LENGTH),60),2,'0'),'min')
FROM SAKILA.FILM

-- Question 9 
SELECT COUNT(DISTINCT FILM_ID) AS FILM_COUNT
FROM SAKILA.FILM
WHERE FLOOR(LENGTH/60) >=3

-- Question 10
SELECT DISTINCT CONCAT(FIRST_NAME,', ',LAST_NAME,' - ',LOWER(EMAIL)) AS FULL_NAME
FROM SAKILA.CUSTOMER

-- Question 11 
SELECT TITLE
, LENGTH
, MAX(LENGTH(TITLE)) AS TITLE_CHARACTER_NUMBER
FROM SAKILA.FILM