
-- Analisis film dengan rating tertinggi per genre
SELECT genre, title, MAX(rating) as highest_rating
FROM film_database
GROUP BY genre
ORDER BY highest_rating DESC;
