-- return the total number of assignment submissions for each cohort
SELECT cohorts.name AS cohort, count(assignment_submissions.*) AS total_submissions
FROM students
JOIN assignment_submissions ON students.id = student_id
JOIN cohorts ON cohorts.id = cohort_id
GROUP BY cohorts.name
ORDER BY count(assignment_submissions.*) DESC;