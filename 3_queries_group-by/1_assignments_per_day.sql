-- return the total number of assignments for each day
SELECT day, count(*) AS total_assignments
FROM assignments
GROUP BY day
ORDER BY day ASC;