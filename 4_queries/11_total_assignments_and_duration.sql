--Get each day with the total number of assignments and the total duration of the assignments

SELECT day, COUNT(assignments) as total_assignments, SUM(duration) as total_duration
FROM assignments
GROUP BY day
ORDER BY day