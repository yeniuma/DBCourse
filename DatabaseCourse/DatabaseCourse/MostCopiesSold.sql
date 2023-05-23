/* 6th question � 2 tables joined
List the game that has sold the most copies!*/
SELECT TOP 1 jatekok.jateknev AS 'J�t�k neve', COUNT(eladasok.szeriaszam) AS 'Elad�sok sz�ma'
FROM jatekok
INNER JOIN eladasok ON jatekok.szeriaszam=eladasok.szeriaszam
GROUP BY jatekok.jateknev
ORDER BY 'Elad�sok sz�ma' DESC
