/* 5th question – 3 tables joined
List the features of the games you can buy on Origin and sort them in ascending order by year of release
(publisher, name, year of release, genre, number of players price/share price)*/
SELECT jatekok.kiado AS 'Kiadó' , jatekok.jateknev AS 'Játék neve', jatek_tulajdonsagok.kiadasiev AS 'Kiadási év', jatek_tulajdonsagok.mufaj AS 'Mûfaj',
jatek_tulajdonsagok.jatektipusa AS 'Játékosok száma', origin.eredetiar AS 'Origines eredeti ár', origin.akciosar AS 'Origines akciós ár'
FROM jatekok
INNER JOIN jatek_tulajdonsagok ON jatekok.szeriaszam=jatek_tulajdonsagok.szeriaszam
INNER JOIN origin ON jatekok.szeriaszam=origin.szeriaszam
ORDER BY 'Kiadási év' ASC 
