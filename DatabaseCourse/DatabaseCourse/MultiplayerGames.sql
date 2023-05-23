/* 14th question – 3 tables joined
List the games you have purchased, by genre, with the name of the purchaser,
that include a multiplayer part and were purchased by residents of Mosonmagyaróvár or Gyõr, in alphabetical order by publisher.*/
SELECT jatekok.kiado AS 'Kiado', jatekok.jateknev AS 'Játék neve', jatek_tulajdonsagok.mufaj AS 'Mûfaj', vevok.vevonev AS 'Vevõ neve'
FROM eladasok
INNER JOIN jatekok ON eladasok.szeriaszam=jatekok.szeriaszam
INNER JOIN vevok ON eladasok.vevoID=vevok.vevoID
INNER JOIN jatek_tulajdonsagok ON eladasok.szeriaszam=jatek_tulajdonsagok.szeriaszam
WHERE (vevok.telepules = 'Gyõr' OR vevok.telepules= 'Mosonmagyaróvár') AND jatek_tulajdonsagok.jatektipusa= 'multiplayer'
