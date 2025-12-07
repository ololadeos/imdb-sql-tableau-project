CREATE DATABASE IMDB;
USE IMDB;
CREATE TABLE movies (
    title VARCHAR(255),
    rating FLOAT,
    release_year INT,
    certificate VARCHAR(10),
    genre VARCHAR(100),
    director VARCHAR(255),
    metascore INT,
    runtime INT
);
USE IMDB;

# Portfolio project: IMDB Movies Insights Dashboard. 
# Goal: Analyse movies across genres, years, directors, runtimes, and certificates to uncover trends in movie ratings and quality. 

# Find the number of movies released each year and the average rating per year.
SELECT release_year, COUNT(title) AS number_of_movies, ROUND(AVG(rating), 2) AS average_rating 
FROM movies
GROUP BY release_year
ORDER BY release_year;

# Find the number of movies in each genre and the average rating + metascore.
SELECT genre, COUNT(title) AS number_of_movies, ROUND(AVG(rating), 2) AS avg_rating, ROUND(AVG(metascore), 2) AS avg_metascore
FROM movies
GROUP BY genre
ORDER BY genre ASC;

# Find all directors with at least 5 movies and calculate their average rating + metascore.
SELECT director, COUNT(title) AS number_of_movies, ROUND(AVG(rating), 2) AS avg_rating, ROUND(AVG(metascore), 2) AS avg_metascore
FROM movies
GROUP BY director HAVING COUNT(title) >= 5
ORDER BY director ASC;

# Find every movie with both IMDB rating and metascore so we can compare audience vs critic score.
SELECT title, rating AS audience_rating, metascore AS critic_rating
FROM movies
WHERE rating IS NOT NULL AND metascore IS NOT NULL
ORDER BY title;


# Find the number of movies, average rating, and average metascore for each certificate category.
SELECT certificate, COUNT(title) AS number_of_movies, ROUND(AVG(rating), 2) AS avg_rating, ROUND(AVG(metascore), 2) AS avg_metascore
FROM movies
GROUP BY certificate
ORDER BY certificate;

# Find whether short (<90m), medium (90–120m), or long (>120m) movies get higher ratings.
SELECT
	CASE
		WHEN runtime < 90 THEN 'short'
        WHEN runtime BETWEEN 90 AND 120 THEN 'medium'
		ELSE 'long'
	END AS runtime_category,
    COUNT(title) AS number_of_movies,
    ROUND(AVG(rating), 2) AS avg_rating, 
    ROUND(AVG(metascore), 2) AS avg_metascore
FROM movies
GROUP BY runtime_category;

# Find the top 20 highest-rated movies and show their titles, genres, years, and directors.
SELECT title, director, genre, release_year, rating
FROM movies
ORDER BY rating DESC
LIMIT 20;
