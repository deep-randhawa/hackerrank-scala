-- https://www.hackerrank.com/challenges/revising-the-select-query/problem
SELECT *
FROM `CITY`
WHERE (POPULATION > 100000) AND (COUNTRYCODE = 'USA');

-- https://www.hackerrank.com/challenges/revising-the-select-query-2/problem
SELECT NAME
FROM `CITY`
WHERE (POPULATION > 120000) AND (COUNTRYCODE = 'USA');

-- https://www.hackerrank.com/challenges/select-all-sql/problem
SELECT *
FROM `CITY`;

-- https://www.hackerrank.com/challenges/select-by-id/problem
SELECT *
FROM `CITY`
WHERE (ID = 1661);

-- https://www.hackerrank.com/challenges/japanese-cities-attributes/problem
SELECT *
FROM `CITY`
WHERE (COUNTRYCODE = "JPN");

-- https://www.hackerrank.com/challenges/japanese-cities-name/problem
SELECT NAME
FROM `CITY`
WHERE (COUNTRYCODE = "JPN");

-- https://www.hackerrank.com/challenges/weather-observation-station-1/problem
SELECT
  CITY,
  STATE
FROM `STATION`;

-- https://www.hackerrank.com/challenges/weather-observation-station-3/problem
SELECT DISTINCT CITY
FROM `STATION`
WHERE (ID % 2 = 0);

-- https://www.hackerrank.com/challenges/weather-observation-station-4/problem
SELECT ((SELECT COUNT(CITY)
         FROM STATION) - (SELECT COUNT(DISTINCT CITY)
                          FROM STATION));

-- https://www.hackerrank.com/challenges/weather-observation-station-5/problem
(SELECT
   CITY,
   LENGTH(CITY) AS LEN
 FROM `STATION`
 ORDER BY LEN ASC, CITY
 LIMIT 1)
UNION
(SELECT
   CITY,
   LENGTH(CITY) AS LEN
 FROM `STATION`
 ORDER BY LEN DESC, CITY
 LIMIT 1)

