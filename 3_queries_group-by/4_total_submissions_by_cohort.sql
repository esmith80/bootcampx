--total number of assignment submissions for each cohort

SELECT cohorts.name AS cohort_name, COUNT(assignment_submissions.*) AS total_submissions 
FROM cohorts
JOIN students ON cohort_id = cohorts.id
JOIN assignment_submissions ON assignment_submissions.student_id = students.id
GROUP BY cohorts.name
ORDER BY COUNT(assignment_submissions.*) desc