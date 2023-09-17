DROP DATABASE IF EXISTS suicide_rate_study;
CREATE DATABASE suicide_rate_study;
USE suicide_rate_study;

-- 1- Suicide rates vs age groups including countries with population below 1 Million------------------------------------------------------------------------------------------------
SELECT s.country,  p.population, age, suicide_rate
FROM suicide_stats s
JOIN population p
ON p.country = s.country
WHERE sex = "Both Sexes"
GROUP BY country, age;

-- 2- Suicide Rate between the sexes --------------------------------------------------------------------------------------------
SELECT country, sex, suicide_rate
FROM suicide_stats
WHERE sex <> "Both Sexes"
GROUP BY country, sex
ORDER by country, sex;

-- 3- Correlation between Happiness Score and suicide rate-----------------------------------------------------------------------
SELECT s.country, h.score, ROUND(AVG(s.suicide_rate),2) as "Avg. Suicide rate"
FROM suicide_stats s
JOIN happiness_stats h
ON s.country = h.country
WHERE s.sex = "Both Sexes"
GROUP BY s.country
ORDER by AVG(s.suicide_rate) DESC

-- 4 - Which countries are the in the top of most suicides, and their happiness scores -----------------------------------------