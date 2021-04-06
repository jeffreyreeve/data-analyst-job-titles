 1)
SELECT (*)
FROM data_analyst_jobs;
-- 1793
-- 2)
SELECT company
FROM data_analyst_jobs
LIMIT 10;
-- Exxon Mobile
-- 3
SELECT COUNT(location)
FROM data_analyst_jobs
WHERE location = 'TN';
-- 21
SELECT COUNT (location)
FROM data_analyst_jobs
WHERE location = 'TN' 
OR location = 'KY';
-- 27
-- 4)
SELECT COUNT(location)
FROM data_analyst_jobs
WHERE location = 'TN'
AND star_rating >= '4'
-- 4
-- 5)
SELECT COUNT (review_count)
FROM data_analyst_jobs
WHERE review_count BETWEEN 500 AND 1000;
-- 151
-- 6)
SELECT location AS state, AVG(star_rating) AS avg_rating
FROM data_analyst_jobs
GROUP BY location
ORDER BY AVG(star_rating) DESC;
-- Nebraska
-- 7)
SELECT COUNT (DISTINCT title)
FROM data_analyst_jobs;
-- 881
-- 8)
SELECT COUNT (DISTINCT title)
FROM data_analyst_jobs
WHERE location = 'CA';
-- 230
--9)
SELECT company, AVG(star_rating)
FROM data_analyst_jobs
WHERE review_count >= 5000
AND company IS NOT NULL
GROUP BY company;
-- 40
-- 10)
SELECT company, AVG(star_rating) AS ratings
FROM data_analyst_jobs
WHERE review_count > 5000
AND company IS NOT NULL
AND star_rating IS NOT NULL
GROUP BY company 
ORDER BY ratings DESC;
-- American Express, General Motors, Kaiser, Microsoft, Nike, Unilver all have 4.199....
-- 11)
SELECT COUNT (DISTINCT title)
FROM data_analyst_jobs
WHERE title ILIKE '%Analyst%';
774
SELECT DISTINCT(title)
FROM data_analyst_jobs
WHERE title ILIKE '%analyst%';
-- 774
-- 12)
SELECT DISTINCT(title)
FROM data_analyst_jobs
WHERE title NOT ILIKE '%analyst%'
AND title NOT ILIKE '%Analytics%';
-- 4, Tableau
-- Bonus
SELECT domain, COUNT(title) AS job_count
FROM data_analyst_jobs
WHERE UPPER(skill) LIKE '%SQL%'
AND days_since_posting > 21
AND domain IS NOT NULL
GROUP BY domain
ORDER BY job_count DESC;
-- Internet & Software, Banks & Financial Svcs, Consulting & Business Svcs; 232


