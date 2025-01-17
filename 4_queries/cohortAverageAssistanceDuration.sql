SELECT avg(average)
FROM (
  SELECT cohorts.name, sum(completed_at - started_at) AS average
  FROM assistance_requests
  JOIN students ON students.id = assistance_requests.student_id
  JOIN cohorts ON cohorts.id = students.cohort_id
  GROUP BY cohorts.name
  ORDER BY average
) AS average;


