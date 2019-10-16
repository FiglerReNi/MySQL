SELECT tagdij.ugyfel.nev
FROM tagdij.ugyfel
ORDER BY tagdij.ugyfel.nev;

SELECT tagdij.ugyfel.nev, tagdij.ugyfel.szulev, 2019-tagdij.ugyfel.szulev AS 'életkor'
FROM tagdij.ugyfel
WHERE tagdij.ugyfel.orsz = 'H'
ORDER BY tagdij.ugyfel.szulev DESC;

SELECT tagdij.ugyfel.nev, tagdij.ugyfel.irszam
FROM tagdij.ugyfel
WHERE tagdij.ugyfel.irszam LIKE '2%';

SELECT SUM(tagdij.befiz.osszeg)
FROM tagdij.befiz;

SELECT AVG(tagdij.befiz.osszeg)
FROM tagdij.befiz;

SELECT MIN(tagdij.befiz.osszeg) AS 'lekisebb', MAX(tagdij.befiz.osszeg) AS 'legnagyobb'
FROM tagdij.befiz;

SELECT COUNT(tagdij.befiz.azon)
FROM tagdij.befiz;

SELECT u.nev, b.osszeg, b.datum
FROM tagdij.befiz b
LEFT JOIN tagdij.ugyfel u ON u.azon = b.azon
WHERE u.nev LIKE '%Török Bálint%';

SELECT u.nev, SUM(b.osszeg)
FROM tagdij.befiz b
LEFT JOIN tagdij.ugyfel u ON u.azon = b.azon
WHERE u.nev LIKE '%Nagy Károly%';

SELECT SUM(b.osszeg)
FROM tagdij.befiz b
LEFT JOIN tagdij.ugyfel u ON u.azon = b.azon
WHERE u.orsz != 'H';

SELECT u.nev, SUM(b.osszeg)
FROM tagdij.befiz b
LEFT JOIN tagdij.ugyfel u ON u.azon = b.azon
GROUP BY u.nev;

SELECT tabla.nev, tabla.osszeg
FROM
(SELECT u.nev AS 'nev', SUM(b.osszeg) AS 'osszeg'
FROM tagdij.befiz b
LEFT JOIN tagdij.ugyfel u ON u.azon = b.azon
GROUP BY u.nev) tabla 
ORDER BY tabla.osszeg DESC
LIMIT 3;

SELECT SUM(tagdij.befiz.osszeg), MONTH(tagdij.befiz.datum)
FROM tagdij.befiz
GROUP BY MONTH(tagdij.befiz.datum);

SELECT tabla.date, tabla.db
FROM
(SELECT DATE_FORMAT(tagdij.befiz.datum, '%Y-%m-%d') AS 'date', COUNT(azon) AS 'db'
FROM tagdij.befiz 
GROUP BY DATE_FORMAT(tagdij.befiz.datum, '%Y-%m-%d')) tabla
WHERE tabla.db > 1;

SELECT b.datum, u.nev, b.osszeg
FROM tagdij.befiz b
LEFT JOIN tagdij.ugyfel u ON u.azon = b.azon
WHERE DATE_ADD(CURRENT_DATE, INTERVAL -3 YEAR) > b.datum;

SELECT SUM(b.osszeg)
FROM tagdij.befiz b
LEFT JOIN tagdij.ugyfel u ON u.azon = b.azon
WHERE DATE_ADD(CURRENT_DATE, INTERVAL -3 YEAR) < b.datum;

SELECT tagdij.ugyfel.nev, tagdij.ugyfel.szulev
FROM tagdij.ugyfel 
WHERE tagdij.ugyfel.szulev = (SELECT MIN(tagdij.ugyfel.szulev) FROM tagdij.ugyfel);

SELECT u.nev, tagdij.befiz.datum, tagdij.befiz.osszeg
FROM tagdij.befiz
LEFT JOIN tagdij.ugyfel u ON u.azon = tagdij.befiz.azon
WHERE tagdij.befiz.osszeg = (SELECT MIN(tagdij.befiz.osszeg) FROM tagdij.befiz );

SELECT tagdij.ugyfel.nev AS 'nev', SUM(tagdij.befiz.osszeg) AS 'osszeg'
FROM tagdij.befiz
LEFT JOIN tagdij.ugyfel  ON tagdij.ugyfel.azon = tagdij.befiz.azon
GROUP BY tagdij.ugyfel.nev
ORDER BY SUM(tagdij.befiz.osszeg)
LIMIT 1;

SELECT u.azon, u.nev, b.osszeg
FROM tagdij.ugyfel u
LEFT JOIN tagdij.befiz b ON u.azon = b.azon
WHERE b.osszeg IS NULL;

SET @atlag = (SELECT AVG(tabla.atlag)
FROM
(SELECT u.azon, u.nev, SUM(b.osszeg) AS 'atlag'
FROM  tagdij.befiz b
LEFT JOIN  tagdij.ugyfel u ON u.azon = b.azon
GROUP BY u.nev) tabla);

SELECT SUM(tabla.atlag)/COUNT(tabla.db)
FROM
(SELECT u.azon AS 'db', SUM(b.osszeg) AS 'atlag'
FROM tagdij.ugyfel u
LEFT JOIN tagdij.befiz b ON u.azon = b.azon
GROUP BY u.nev) tabla;

SET @atlag = (SELECT AVG(tabla.atlag)
FROM
(SELECT u.azon, u.nev, SUM(b.osszeg) AS 'atlag'
FROM  tagdij.befiz b
LEFT JOIN  tagdij.ugyfel u ON u.azon = b.azon
GROUP BY u.nev) tabla);
SELECT u.nev, tagdij.befiz.datum, SUM(tagdij.befiz.osszeg) AS 'osszeg'
FROM tagdij.befiz
LEFT JOIN tagdij.ugyfel u ON u.azon = tagdij.befiz.azon
GROUP BY u.nev
HAVING SUM(tagdij.befiz.osszeg) > @atlag;