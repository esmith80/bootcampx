-- list each assignment with total number of assistance requests
SELECT assignments.id, name, day, chapter, COUNT(assistance_requests.assignment_id) as total_requests
FROM assignments
  JOIN assistance_requests ON assignments.id = assignment_id
GROUP BY assignments.id
ORDER BY total_requests desc

