/* 4th question � 2 tables joined
List the name of the customer who has made the most complaints to customer service!*/
SELECT TOP 1 vevok.vevonev, COUNT (ticketID) as "Panaszok sz�ma"
FROM ticketek
INNER JOIN vevok ON vevok.vevoID=ticketek.vevoID
GROUP BY vevok.vevonev, ticketek.vevoID
ORDER BY 'Panaszok sz�ma' DESC
