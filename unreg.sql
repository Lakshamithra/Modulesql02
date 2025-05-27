SELECT u.user_id, u.full_name
FROM Users u
LEFT JOIN Registrations r ON u.user_id = r.user_id
WHERE r.registration_id IS NULL
  AND u.registration_date >= CURDATE() - INTERVAL 30 DAY;
