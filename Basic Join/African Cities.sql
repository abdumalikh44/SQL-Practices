/*Given the CITY and COUNTRY tables, query the names of all cities where the 
CONTINENT is 'Africa'.*/
SELECT A.NAME
FROM CITY AS A
INNER JOIN COUNTRY AS B ON A.COUNTRYCODE = B.CODE
WHERE B.CONTINENT = 'Africa'
Ok
