-- https://www.hackerrank.com/challenges/what-type-of-triangle/problem
SELECT (
  CASE
  WHEN (A + B <= C OR B + C <= A OR A + C <= B)
    THEN 'Not A Triangle'
  WHEN (A = B AND B = C)
    THEN 'Equilateral'
  WHEN (A = B OR B = C OR A = C)
    THEN 'Isosceles'
  ELSE 'Scalene'
  END)
FROM `TRIANGLES`;

-- https://www.hackerrank.com/challenges/the-pads/problem
SELECT CONCAT(NAME, '(', SUBSTR(OCCUPATION, 1, 1), ')') AS STR
FROM `OCCUPATIONS`
ORDER BY STR;

SELECT CONCAT('There are a total of ', COUNT(OCCUPATION), ' ', LOWER(OCCUPATION), 's.')
FROM `OCCUPATIONS`
GROUP BY OCCUPATION
ORDER BY COUNT(OCCUPATION), OCCUPATION;