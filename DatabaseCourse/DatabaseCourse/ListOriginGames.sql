/* 5th question � 3 tables joined
List the features of the games you can buy on Origin and sort them in ascending order by year of release
(publisher, name, year of release, genre, number of players price/share price)*/
SELECT jatekok.kiado AS 'Kiad�' , jatekok.jateknev AS 'J�t�k neve', jatek_tulajdonsagok.kiadasiev AS 'Kiad�si �v', jatek_tulajdonsagok.mufaj AS 'M�faj',
jatek_tulajdonsagok.jatektipusa AS 'J�t�kosok sz�ma', origin.eredetiar AS 'Origines eredeti �r', origin.akciosar AS 'Origines akci�s �r'
FROM jatekok
INNER JOIN jatek_tulajdonsagok ON jatekok.szeriaszam=jatek_tulajdonsagok.szeriaszam
INNER JOIN origin ON jatekok.szeriaszam=origin.szeriaszam
ORDER BY 'Kiad�si �v' ASC 
