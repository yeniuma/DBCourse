CREATE PROCEDURE [dbo].[JatekBentVanE] @JatekN nvarchar(50)
AS
IF @JatekN IN(SELECT jateknev FROM jatekok)
BEGIN
SELECT jatek_tulajdonsagok.mufaj AS 'Mûfaj', jatek_tulajdonsagok.jatektipusa AS 'Játék típusa', jatek_tulajdonsagok.kiadasiev AS 'Kiadási év'
FROM jatekok INNER JOIN jatek_tulajdonsagok ON jatekok.szeriaszam=jatek_tulajdonsagok.szeriaszam
WHERE @JatekN=jatekok.jateknev
END
ELSE
BEGIN
SELECT 'Nincs ilyen játék az adatbázisban!' AS 'Eljárás eredménye'
END