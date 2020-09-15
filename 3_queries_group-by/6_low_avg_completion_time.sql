SELECT students.name, AVG(assignment_submissions.duration) AS average_submission_time, AVG(assignments.duration) AS average_suggested_time
FROM assignments
  JOIN assignment_submissions ON assignments.id = assignment_id
  JOIN students ON students.id = student_id
WHERE end_date IS NULL
GROUP BY students.name
HAVING AVG(assignment_submissions.duration) < AVG(assignments.duration)
ORDER BY AVG(assignment_submissions.duration) asc