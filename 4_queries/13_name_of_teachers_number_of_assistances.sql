SELECT teachers.name, cohorts.name, COUNT(assistance_requests) as total_assistances
FROM teachers
JOIN assistance_requests ON teachers.id = teacher_id
JOIN students ON assistance_requests.student_id = students.id
JOIN cohorts ON students.cohort_id = cohorts.id
WHERE cohorts.name = 'JUL02'
GROUP BY teachers.name, cohorts.name
ORDER BY teachers.name