/* 17th question - 4 tables joined
Which are the games that are below 10.000 HUF on all sales platforms?*/
SELECT jatekok.jateknev AS 'J�t�k neve', steam.akciosar AS 'Steam akci�s �r', origin.akciosar AS 'Origin akci�s �r', epicgames.akciosar AS 'Epic Games akci�s �ra'
FROM jatekok
INNER JOIN steam ON jatekok.szeriaszam=steam.szeriaszam
INNER JOIN origin ON jatekok.szeriaszam=origin.szeriaszam
INNER JOIN epicgames ON jatekok.szeriaszam=epicgames.szeriaszam
WHERE epicgames.akciosar < 10000 AND steam.akciosar < 10000 AND origin.akciosar < 10000 
