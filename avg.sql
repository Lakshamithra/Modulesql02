SELECT u.city, AVG(f.rating) AS avg_rating
FROM Feedback f
JOIN Users u ON f.user_id = u.user_id
GROUP BY u.city;
