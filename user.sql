SELECT e.title, e.start_date, e.end_date
FROM Events e
JOIN Registrations r ON e.event_id = r.event_id
JOIN Users u ON r.user_id = u.user_id
WHERE u.city = 'New York'
  AND e.start_date > CURDATE()
ORDER BY e.start_date;
