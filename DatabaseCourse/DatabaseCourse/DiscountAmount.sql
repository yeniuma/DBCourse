/* 10th question – 2 tables joined
List how many percent lower the price of some discounted games on Epic Games is than the original price!*/
SELECT jatekok.jateknev AS 'Játékok neve', epicgames.eredetiar AS 'Eredeti ár', epicgames.akciosar AS 'Akciós ár',
100 - ((CAST(epicgames.akciosar AS money)/CAST(epicgames.eredetiar AS money))*100) AS 'Kedvezmény százalékban'
FROM epicgames
INNER JOIN jatekok ON jatekok.szeriaszam=epicgames.szeriaszam
