
SELECT projects.title, SUM(pledges.amount)
FROM projects 
INNER JOIN pledges 
ON projects.id = pledges.project_id 
GROUP BY pledges.project_id 
ORDER BY projects.title 
;

SELECT users.name, users.age, SUM(pledges.amount)
FROM users 
INNER JOIN pledges 
ON users.id = pledges.user_id 
GROUP BY pledges.user_id 
ORDER BY users.name 
;

SELECT projects.title, SUM(pledges.amount)-projects.funding_goal
FROM projects 
INNER JOIN pledges 
ON projects.id = pledges.project_id 
GROUP BY pledges.project_id 
HAVING SUM(pledges.amount)-projects.funding_goal >= 0
ORDER BY projects.id 
;

SELECT users.name, SUM(pledges.amount)
FROM users 
INNER JOIN pledges 
ON users.id = pledges.user_id 
GROUP BY pledges.user_id 
ORDER BY SUM(pledges.amount), users.name
;

SELECT projects.category, pledges.amount
FROM projects 
INNER JOIN pledges 
ON projects.id = pledges.project_id 
WHERE projects.category = 'music' 
ORDER BY projects.id, pledges.amount 
;

SELECT projects.category, SUM(pledges.amount)
FROM projects 
INNER JOIN pledges 
ON projects.id = pledges.project_id 
GROUP BY projects.category
HAVING projects.category = 'books' 
ORDER BY projects.title 
;
