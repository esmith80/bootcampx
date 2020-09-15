--Get currently enrolled students' average assignment completion time.

SELECT students.name, AVG(assignment_submissions.duration) AS average_submission_time
FROM assignment_submissions
JOIN students ON students.id = student_id
WHERE end_date IS NULL
GROUP BY students.name
ORDER BY AVG(assignment_submissions.duration) desc