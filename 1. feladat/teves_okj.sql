/* 1. feladat:  */
CREATE DATABASE IF NOT EXISTS `monthypython`
DEFAULT CHARACTER SET utf8 
COLLATE utf8_hungarian_ci;
USE `monthypython`;

/* 3. feladat:  */
SELECT `nev` 
FROM `epizodok` 
WHERE `sorozat`='1/5'

/* 4. feladat:  */
SELECT count(`id`) AS 'epizódok száma' 
FROM `epizodok`

/* 5. feladat:  */
SELECT DISTINCT `szinesz`  
FROM `forgatokonyv` 
WHERE `szinesz` IS NOT NULL 
ORDER BY `szinesz` ASC

/* 6. feladat:  */
SELECT `reszletek` 
FROM `forgatokonyv` 
WHERE `szinesz`='John Cleese' and `resz`='Italian lesson'

/* 7. feladat:  */
SELECT `szinesz`, COUNT(`reszletek`) AS 'bejegyzések száma' 
FROM `forgatokonyv` 
WHERE `szinesz` IS NOT NULL GROUP BY `szinesz` 
ORDER BY COUNT(`reszletek`) DESC LIMIT 1