SELECT e.title
FROM Events e
LEFT JOIN Registrations r ON e.event_id = r.event_id
LEFT JOIN Feedback f ON e.event_id = f.event_id
WHERE r.registration_id IS NOT NULL
  AND f.feedback_id IS NULL;
