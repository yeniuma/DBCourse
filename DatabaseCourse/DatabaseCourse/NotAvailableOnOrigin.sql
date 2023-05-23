/* 18th question - 3 tables joined
List the games with features that are not available on Origin!*/
SELECT jatekok.kiado, jatek_tulajdonsagok.kiadasiev,jatekok.jateknev, jatek_tulajdonsagok.jatektipusa, jatek_tulajdonsagok.mufaj
FROM jatekok
INNER JOIN jatek_tulajdonsagok ON jatekok.szeriaszam=jatek_tulajdonsagok.szeriaszam
LEFT JOIN origin ON jatekok.szeriaszam=origin.szeriaszam
WHERE origin.szeriaszam is NULL
ORDER BY jatekok.kiado ASC 
