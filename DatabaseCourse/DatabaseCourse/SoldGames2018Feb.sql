/* 2nd question � 1 table
How many games were sold in February 2018?*/
SELECT COUNT (szeriaszam) AS 'Eladott j�t�kok 2018 febru�rban'
FROM eladasok
WHERE eladasdatuma BETWEEN '02/01/2018' AND '02/28/2018';
