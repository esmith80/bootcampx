--total number of assistance_requests for a student

SELECT COUNT(student_id) as total_assistances, name
FROM assistance_requests
  JOIN students ON student_id = students.id
WHERE name = 'Elliot Dickinson'
GROUP BY name;
