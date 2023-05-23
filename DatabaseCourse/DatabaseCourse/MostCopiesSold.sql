/* 6th question – 2 tables joined
List the game that has sold the most copies!*/
SELECT TOP 1 jatekok.jateknev AS 'Játék neve', COUNT(eladasok.szeriaszam) AS 'Eladások száma'
FROM jatekok
INNER JOIN eladasok ON jatekok.szeriaszam=eladasok.szeriaszam
GROUP BY jatekok.jateknev
ORDER BY 'Eladások száma' DESC
