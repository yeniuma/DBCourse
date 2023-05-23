/* 3rd question – 1 table
Which publisher has the most games in the database?*/
SELECT TOP 1 kiado AS 'Kiadó' , COUNT (szeriaszam) AS 'Játékok száma'
FROM jatekok
GROUP by kiado
ORDER BY 'Játékok száma' DESC
