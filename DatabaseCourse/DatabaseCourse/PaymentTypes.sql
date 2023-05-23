/* 8th question - 2 tables joined
List the payment types used by each customer.*/
SELECT vevok.vevonev, COUNT(fizetes.fizetesmodja) AS 'Hányszor fizetett vele?', fizetes.fizetesmodja
FROM vevok
INNER JOIN fizetes ON vevok.vevoID=fizetes.vevoID
GROUP BY vevok.vevonev, fizetes.fizetesmodja
