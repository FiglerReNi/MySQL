SELECT o.`fovaros`, o.`orszag`, o.`id` 
FROM test.orszagok o 
WHERE o.`orszag` = 'Madagaszkár' ;

SELECT orszagok.`orszag`, orszagok.`fovaros`, orszagok.`id`
FROM test.`orszagok` 
WHERE orszagok.`fovaros` = 'OUAGADOUGOU';

SELECT orszagok.`orszag`, orszagok.`autojel`, orszagok.`id`
FROM test.`orszagok` 
WHERE orszagok.`autojel` = 'TT';

SELECT orszagok.`orszag`, orszagok.`penzjel`, orszagok.`id`
FROM test.`orszagok` 
WHERE orszagok.`penzjel` = 'SGD';

SELECT o.`orszag`, o.`telefon`, o.`id`
FROM test.`orszagok` o
WHERE o.`telefon` = 61;

SELECT orszagok.`terulet`, orszagok.`orszag`, orszagok.`id`
FROM test.`orszagok`
WHERE orszagok.`orszag`= 'Monaco';

SELECT orszagok.`nepesseg`, orszagok.`orszag`, orszagok.`id`
FROM test.`orszagok`
WHERE orszagok.`orszag`= 'Malta';

SELECT orszagok.`orszag`, orszagok.id, orszagok.`nepesseg`/orszagok.`terulet`*1000 AS nepsuruseg 
FROM test.`orszagok`
WHERE orszagok.`orszag` = 'Magyarorszag' OR orszagok.`orszag`='Japán';

SELECT SUM(orszagok.`nepesseg`)*1000 AS SumNepesseg
FROM test.`orszagok`;

SELECT SUM(orszagok.`terulet`) AS SumTerulet
FROM test.`orszagok`;

SELECT AVG(orszagok.`nepesseg`) AS AtlagNepesseg
FROM test.`orszagok`;

SELECT AVG(orszagok.`terulet`) AS Atlagterulet
FROM test.`orszagok`;

SELECT (SUM(orszagok.`nepesseg`)*1000)/(SUM(orszagok.`terulet`)) AS nepsuruseg 
FROM test.`orszagok`;

SELECT COUNT(orszagok.`terulet`)
FROM test.`orszagok`
WHERE orszagok.`terulet` >= 1000000;

SELECT COUNT(orszagok.`terulet`)
FROM test.`orszagok`
WHERE orszagok.`terulet` <= 100;

SELECT COUNT(orszagok.`nepesseg`)
FROM test.`orszagok`
WHERE (orszagok.`nepesseg`)*1000 < 20000;

SELECT COUNT(orszagok.`orszag`)
FROM test.`orszagok`
WHERE (orszagok.`nepesseg`)*1000 < 20000 OR orszagok.`terulet` <= 100;

SELECT COUNT(orszagok.`orszag`)
FROM test.`orszagok`
WHERE orszagok.`terulet` BETWEEN 50000 AND 150000;

SELECT COUNT(orszagok.orszag)
FROM test.`orszagok`
WHERE (orszagok.`nepesseg`)*1000 BETWEEN 8000000 AND 12000000;

SELECT orszagok.`fovaros`, orszagok.`nepesseg`
FROM test.`orszagok`
WHERE (orszagok.`nepesseg`)*1000 > 20000000;

SELECT orszagok.`orszag`, orszagok.`nepesseg`/orszagok.`terulet`*1000 AS nepsuruseg 
FROM test.`orszagok`
WHERE orszagok.`nepesseg`/orszagok.`terulet`*1000 > 500;

SELECT COUNT(orszagok.orszag)
FROM test.`orszagok`
WHERE orszagok.`allamforma` = 'köztársaság';

SELECT orszagok.`orszag`, orszagok.`penznem`, orszagok.`id`
FROM test.`orszagok`
WHERE orszagok.`penznem` = 'kelet-karib dollár';

SELECT COUNT(orszagok.`orszag`)
FROM test.`orszagok`
WHERE orszagok.`orszag` LIKE '%ORSZÁG%';

SELECT orszagok.`orszag`, orszagok.`penznem`
FROM test.`orszagok`
WHERE orszagok.`penznem` LIKE '%korona%';

SELECT SUM(orszagok.`terulet`)
FROM test.`orszagok`
WHERE orszagok.`foldr_hely` LIKE '%Európa%';

SELECT SUM(orszagok.`nepesseg`)
FROM test.`orszagok`
WHERE orszagok.`foldr_hely` LIKE '%Európa%';

SELECT AVG(orszagok.`nepesseg`/orszagok.`terulet`*1000) AS Nepsuruseg
FROM test.`orszagok`
WHERE orszagok.`foldr_hely` LIKE '%Európa%';

SELECT COUNT(orszagok.`orszag`)
FROM test.`orszagok`
WHERE orszagok.`foldr_hely` LIKE '%Afrika%';

SELECT SUM(orszagok.`nepesseg`)
FROM test.`orszagok`
WHERE orszagok.`foldr_hely` LIKE '%Afrika%';

SELECT AVG(orszagok.`nepesseg`/orszagok.`terulet`*1000) AS Nepsuruseg
FROM test.`orszagok`
WHERE orszagok.`foldr_hely` LIKE '%Afrika%';

SELECT orszagok.orszag, orszagok.`id`, orszagok.`foldr_hely`
FROM test.`orszagok`
WHERE orszagok.`foldr_hely` LIKE '%szigetország%';

SELECT orszagok.`orszag`, orszagok.id, orszagok.`allamforma`
FROM test.`orszagok`
WHERE orszagok.`allamforma` LIKE'%hercegség%' OR orszagok.`allamforma` LIKE '%királyság%';

SELECT COUNT(orszagok.`orszag`)
FROM test.`orszagok`
WHERE orszagok.`autojel` = '' ;

SELECT orszagok.`valtopenz`, orszagok.`orszag`
FROM test.`orszagok`
WHERE orszagok.`valtopenz` > 100 OR orszagok.`valtopenz` < 100;

SELECT COUNT(orszagok.`terulet`)
FROM test.`orszagok`
WHERE orszagok.`terulet` < (SELECT orszagok.`terulet` FROM test.`orszagok` WHERE orszagok.`orszag` = 'Magyarország');

SELECT orszagok.`orszag`, orszagok.`terulet`
FROM test.`orszagok`
WHERE orszagok.`terulet` = (SELECT MAX(orszagok.`terulet`) FROM test.`orszagok`);

SELECT orszagok.`orszag`, orszagok.`terulet`
FROM test.`orszagok`
WHERE orszagok.`terulet` = (SELECT MIN(orszagok.`terulet`) FROM test.`orszagok`);

SELECT orszagok.`orszag`, orszagok.`nepesseg`
FROM test.`orszagok`
WHERE orszagok.`nepesseg` = (SELECT MAX(orszagok.`nepesseg`) FROM test.`orszagok`);

SELECT orszagok.`orszag`, orszagok.`nepesseg`
FROM test.`orszagok`
WHERE orszagok.`nepesseg` = (SELECT MIN(orszagok.`nepesseg`) FROM test.`orszagok`); 

SELECT orszagok.`orszag`, orszagok.`nepesseg`/orszagok.`terulet`*1000 AS Nepsuruseg 
FROM test.`orszagok`
WHERE orszagok.`nepesseg`/orszagok.`terulet`*1000 = (SELECT MAX(orszagok.`nepesseg`/orszagok.`terulet`*1000) FROM test.`orszagok`);

SELECT orszagok.`orszag`, orszagok.`nepesseg`/orszagok.`terulet`*1000 AS Nepsuruseg 
FROM test.`orszagok`
WHERE orszagok.`nepesseg`/orszagok.`terulet`*1000 = (SELECT MIN(orszagok.`nepesseg`/orszagok.`terulet`*1000) FROM test.`orszagok`);

SELECT orszagok.`orszag`, orszagok.`terulet`
FROM test.`orszagok`
WHERE  orszagok.`terulet` = (SELECT MAX(orszagok.`terulet`) FROM test.`orszagok` WHERE orszagok.`foldr_hely` LIKE '%Afrika%' );

SELECT orszagok.`orszag`, orszagok.`nepesseg`
FROM test.`orszagok`
WHERE orszagok.`terulet` = (SELECT MIN(orszagok.`terulet`) FROM test.`orszagok` WHERE orszagok.`foldr_hely` LIKE '%Amerika%');

SELECT orszagok.orszag, orszagok.`nepesseg`/orszagok.`terulet`*1000 AS Nepsuruseg 
FROM test.`orszagok`
ORDER BY orszagok.`nepesseg`/orszagok.`terulet`*1000 DESC
LIMIT 3;

SELECT orszagok.`fovaros`, orszagok.`nepesseg`
FROM test.`orszagok`
ORDER BY orszagok.`nepesseg` DESC
LIMIT 6;

SELECT orszagok.`orszag`, orszagok.`gdp`
FROM test.`orszagok`
ORDER BY orszagok.`gdp` DESC
LIMIT 10;

SELECT orszagok.`orszag`, orszagok.`gdp`* orszagok.`nepesseg`*1000 AS OsszGdp
FROM test.`orszagok`
ORDER BY orszagok.`gdp`*orszagok.`nepesseg`*1000 DESC
LIMIT 10;

SELECT orszagok.`orszag`, orszagok.`gdp` 
FROM test.`orszagok`
WHERE orszagok.gdp != 0
ORDER BY orszagok.`gdp` ASC
LIMIT 1;

SELECT orszagok.`orszag`, orszagok.`terulet`
FROM test.`orszagok`
ORDER BY orszagok.`terulet`
LIMIT 1 OFFSET 39;

SELECT orszagok.`orszag`, orszagok.`nepesseg`/orszagok.`terulet`*1000 AS Nepsuruseg 
FROM test.`orszagok`
ORDER BY orszagok.`nepesseg`/orszagok.`terulet`*1000
LIMIT 1 OFFSET 14;

SELECT orszagok.`orszag`, orszagok.`nepesseg`/orszagok.`terulet`*1000 AS Nepsuruseg 
FROM test.`orszagok`
ORDER BY orszagok.`nepesseg`/orszagok.`terulet`*1000 DESC
LIMIT 1 OFFSET 60;

SELECT orszagok.orszag, orszagok.`terulet`, ABS((SELECT orszagok.`terulet`FROM test.`orszagok` WHERE orszag='MAGYARORSZÁG') - orszagok.`terulet`) AS KÜLÖNBSÉG
FROM test.`orszagok` 
ORDER BY ABS((SELECT orszagok.`terulet`FROM test.`orszagok` WHERE orszag='MAGYARORSZÁG') - orszagok.`terulet`)
LIMIT 3 OFFSET 1;

SELECT (SELECT SUM(orszagok.`nepesseg`) FROM test.`orszagok` WHERE orszagok.`foldr_hely` LIKE '%Ázsia%')/SUM(orszagok.`nepesseg`)*100 AS HanyadResz
FROM test.`orszagok`;

SELECT (SELECT SUM(orszagok.`terulet`) FROM test.`orszagok` WHERE orszag='OROSZORSZÁG')/SUM(orszagok.`terulet`) *100 AS HanyadResz
FROM test.`orszagok`;

SELECT (SELECT SUM(orszagok.`nepesseg`) FROM test.`orszagok` WHERE penznem = 'eurÓ')/SUM(orszagok.`nepesseg`)*100 AS HanyadResz
FROM test.`orszagok`;

SELECT  MAX(orszagok.`gdp`)/(SELECT MIN(orszagok.`gdp`)FROM test.`orszagok` WHERE orszagok.`gdp` != 0 ) AS Minimum
FROM test.`orszagok`;

SELECT (SELECT  orszagok.`gdp` * orszagok.`nepesseg` FROM test.`orszagok` WHERE orszagok.`country` LIKE '%USA%')/SUM(orszagok.`gdp` * orszagok.`nepesseg`)*100  AS Szazalek
FROM test.`orszagok`;

SELECT (SELECT  SUM(orszagok.`gdp` * orszagok.`nepesseg`) FROM test.`orszagok` WHERE orszagok.`penznem` LIKE 'euró')/SUM(orszagok.`gdp` * orszagok.`nepesseg`)*100  AS Szazalek
FROM test.`orszagok`;

SET @atlag = (SELECT AVG(orszagok.gdp) FROM orszagok);
SELECT orszagok.gdp, orszagok.orszag, orszagok.foldr_hely
FROM orszagok
WHERE orszagok.gdp > @atlag AND orszagok.foldr_hely NOT LIKE '%Európa%' AND orszagok.foldr_hely NOT LIKE '%Amerika%';

SELECT DISTINCT(orszagok.allamforma)
FROM orszagok
WHERE orszagok.foldr_hely LIKE '%Európa%';

SELECT COUNT(DISTINCT(orszagok.allamforma))
FROM orszagok;

SELECT COUNT(DISTINCT(orszagok.penznem))
FROM orszagok
WHERE orszagok.foldr_hely LIKE '%Európa%' AND penznem NOT IN ('euró');

SELECT tabla.penznem, tabla.db
FROM
(SELECT COUNT(orszagok.penznem) AS 'db', orszagok.penznem
FROM orszagok
GROUP BY orszagok.penznem) tabla
WHERE tabla.db > 1
ORDER BY tabla.db DESC;

SELECT tabla.allamforma, tabla.db, tabla.orszag
FROM
(SELECT COUNT(orszagok.allamforma) AS 'db', orszagok.allamforma, orszagok.orszag
FROM orszagok
GROUP BY orszagok.allamforma) tabla
WHERE tabla.db = 1
ORDER BY allamforma;
