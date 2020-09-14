--student's end date will be NULL when 
--they are currently enrolled in Bootcamp.
--get all currently enrolled students
--Get their name, id, and cohort_id.
--Order them by cohort_id.

SELECT name, id, cohort_id
FROM students
WHERE end_date IS null
ORDER BY cohort_id


