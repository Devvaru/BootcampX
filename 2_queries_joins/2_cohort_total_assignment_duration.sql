-- return the total amount of time that all students from a specific cohort have spent on all assignments
SELECT sum(assignment_submissions.duration) AS total_duration
FROM students
JOIN assignment_submissions ON students.id = student_id
JOIN cohorts ON cohorts.id = cohort_id
WHERE cohorts.name = 'FEB12';