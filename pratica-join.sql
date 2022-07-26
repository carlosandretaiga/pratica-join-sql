--Questão 1:
SELECT users.name, cities.name AS city 
FROM users
JOIN cities
ON users."cityId" = cities.id;

--Quesetão 2: 
--Não desenvolvida. 

--Questão 3: 
SELECT users.name,  courses.name AS course, schools.name AS school, educations."endDate"
FROM courses
JOIN educations
ON courses.id = educations."courseId"
JOIN schools
ON educations."schoolId" = schools.id
JOIN users
ON users.id = educations."userId"
WHERE educations.status = 'finished' AND users.id = 30;

--Questão 4
SELECT users.name, roles.name AS role, companies.name AS company, experiences."startDate"
FROM users
JOIN experiences
ON users.id = experiences."userId"
JOIN companies
ON companies.id = experiences."companyId"
JOIN roles 
ON roles.id = experiences."roleId"
WHERE experiences."endDate" IS null AND users.id = 50
