/* 10th question � 2 tables joined
List how many percent lower the price of some discounted games on Epic Games is than the original price!*/
SELECT jatekok.jateknev AS 'J�t�kok neve', epicgames.eredetiar AS 'Eredeti �r', epicgames.akciosar AS 'Akci�s �r',
100 - ((CAST(epicgames.akciosar AS money)/CAST(epicgames.eredetiar AS money))*100) AS 'Kedvezm�ny sz�zal�kban'
FROM epicgames
INNER JOIN jatekok ON jatekok.szeriaszam=epicgames.szeriaszam
