--all cohorts with 18 or more students

SELECT cohorts.name as cohort, COUNT(students.*) as total_students
FROM cohorts
JOIN students ON cohorts.id = students.cohort_id
GROUP BY cohorts.name
HAVING COUNT(students.*) >= 18
ORDER BY COUNT(students.*) asc