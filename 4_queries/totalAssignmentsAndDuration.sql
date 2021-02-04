SELECT day, count(id) AS number_of_assigments, sum(duration) AS duration
FROM assignments
GROUP BY day
ORDER BY day;