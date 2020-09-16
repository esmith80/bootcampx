--Select the teacher's name, student's name, assignment's name, duration of each assistance request.
--Subtract completed_at by started_at to find the duration.
--Order by the duration of the request.

SELECT 
  teachers.name as teacher_name,
  students.name as student_name,
  assignments.name as assignment_name,
  assistance_requests.completed_at - assistance_requests.started_at as assistance_duration
FROM students
  JOIN assistance_requests ON students.id = student_id
  JOIN teachers ON teachers.id = teacher_id
  JOIN assignments ON assignments.id = assignment_id
ORDER BY assistance_duration

