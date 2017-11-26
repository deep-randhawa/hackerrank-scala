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
 LIMIT 1);

-- https://www.hackerrank.com/challenges/weather-observation-station-6/problem
SELECT DISTINCT CITY
FROM `STATION`
WHERE (UPPER(CITY) LIKE "A%" OR
       UPPER(CITY) LIKE "E%" OR
       UPPER(CITY) LIKE "I%" OR
       UPPER(CITY) LIKE "O%" OR
       UPPER(CITY) LIKE "U%")
ORDER BY CITY;

-- https://www.hackerrank.com/challenges/weather-observation-station-7/problem
SELECT DISTINCT CITY
FROM `STATION`
WHERE (UPPER(CITY) LIKE "%A" OR
       UPPER(CITY) LIKE "%E" OR
       UPPER(CITY) LIKE "%I" OR
       UPPER(CITY) LIKE "%O" OR
       UPPER(CITY) LIKE "%U")
ORDER BY CITY;

-- https://www.hackerrank.com/challenges/weather-observation-station-8/problem
SELECT DISTINCT CITY
FROM `STATION`
WHERE (UPPER(CITY) RLIKE '^[AEIOU].*[AEIOU]$')
ORDER BY CITY;

-- https://www.hackerrank.com/challenges/weather-observation-station-9/problem
SELECT DISTINCT CITY
FROM `STATION`
WHERE (UPPER(CITY) NOT RLIKE '^[AEIOU].*')
ORDER BY CITY;

-- https://www.hackerrank.com/challenges/weather-observation-station-10/problem
SELECT DISTINCT CITY
FROM `STATION`
WHERE (UPPER(CITY) NOT RLIKE '^.*[AEIOU]$')
ORDER BY CITY;

-- https://www.hackerrank.com/challenges/weather-observation-station-11/problem
SELECT DISTINCT CITY
FROM `STATION`
WHERE (UPPER(CITY) NOT RLIKE '^[AEIOU].*[AEIOU]$')
ORDER BY CITY;

-- https://www.hackerrank.com/challenges/weather-observation-station-12/problem
SELECT DISTINCT CITY
FROM `STATION`
WHERE (UPPER(CITY) NOT RLIKE '^[AEIOU].*'
       AND UPPER(CITY) NOT RLIKE '.*[AEIOU]$')
ORDER BY CITY;

-- https://www.hackerrank.com/challenges/more-than-75-marks/problem
SELECT NAME
FROM `STUDENTS`
WHERE MARKS > 75
ORDER BY SUBSTR(NAME, -3) ASC, ID ASC;

-- https://www.hackerrank.com/challenges/name-of-employees/problem
SELECT NAME
FROM `EMPLOYEE`
ORDER BY NAME;

-- https://www.hackerrank.com/challenges/salary-of-employees/problem
SELECT NAME
FROM `EMPLOYEE`
WHERE (SALARY > 2000 AND MONTHS < 10);