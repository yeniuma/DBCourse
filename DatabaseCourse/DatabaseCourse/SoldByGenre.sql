/* 13th question � 2 tables joined
Compile statistics on how many of each genre of game have been sold!*/
SELECT jatek_tulajdonsagok.mufaj as 'M�faj', COUNT(eladasok.eladottID) AS 'Elad�sok sz�ma'
FROM jatek_tulajdonsagok
INNER JOIN eladasok ON jatek_tulajdonsagok.szeriaszam=eladasok.szeriaszam
GROUP BY jatek_tulajdonsagok.mufaj
ORDER BY 'Elad�sok sz�ma' DESC 
