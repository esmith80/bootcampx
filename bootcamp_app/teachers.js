const { Pool } = require('pg');

const pool = new Pool({
  user: 'vagrant',
  password: '123',
  host: 'localhost',
  database: 'vagrant'
});
// this query will not work for the user if they enter a value which returns no results (case-sensitive)
const cohortName = process.argv[2] || 'JUL02';
const queryString = `
  SELECT cohorts.name as cohort, teachers.name as teacher
  FROM teachers
  JOIN assistance_requests ON teachers.id = teacher_id
  JOIN students ON assistance_requests.student_id = students.id
  JOIN cohorts ON students.cohort_id = cohorts.id
  WHERE cohorts.name LIKE $1
  GROUP BY teachers.name, cohorts.name
  ORDER BY teachers.name;
  `;
const values = [`%${cohortName}%`];

pool.query(queryString, values)
.then(res => {
    res.rows.forEach(row => {
      console.log(`${row.cohort}: ${row.teacher}`);
    })  
  })
  .catch(err => console.error('query error', err.stack));