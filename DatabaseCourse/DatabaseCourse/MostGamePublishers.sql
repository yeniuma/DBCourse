/* 3rd question � 1 table
Which publisher has the most games in the database?*/
SELECT TOP 1 kiado AS 'Kiad�' , COUNT (szeriaszam) AS 'J�t�kok sz�ma'
FROM jatekok
GROUP by kiado
ORDER BY 'J�t�kok sz�ma' DESC
