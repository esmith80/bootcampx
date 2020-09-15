--total teacher assistance requests

SELECT COUNT(teacher_id) as total_assistances, name 
FROM teachers
  JOIN assistance_requests ON teachers.id = teacher_id
WHERE name = 'Waylon Boehm'
GROUP BY name;