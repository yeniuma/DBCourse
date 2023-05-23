CREATE PROCEDURE [dbo].[JatekBentVanE] @JatekN nvarchar(50)
AS
IF @JatekN IN(SELECT jateknev FROM jatekok)
BEGIN
SELECT jatek_tulajdonsagok.mufaj AS 'M�faj', jatek_tulajdonsagok.jatektipusa AS 'J�t�k t�pusa', jatek_tulajdonsagok.kiadasiev AS 'Kiad�si �v'
FROM jatekok INNER JOIN jatek_tulajdonsagok ON jatekok.szeriaszam=jatek_tulajdonsagok.szeriaszam
WHERE @JatekN=jatekok.jateknev
END
ELSE
BEGIN
SELECT 'Nincs ilyen j�t�k az adatb�zisban!' AS 'Elj�r�s eredm�nye'
END