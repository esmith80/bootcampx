--Get all of the students without a gmail.com or phone number.
--Get their name, email, id, and cohort_id.

SELECT name, id, cohort_id, email
FROM students
WHERE email NOT LIKE '%gmail.com' 
AND phone IS null;

