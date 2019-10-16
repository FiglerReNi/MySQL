/* 1. feladat:  */
CREATE DATABASE IF NOT EXISTS `centrum` DEFAULT CHARACTER SET utf8 COLLATE utf8_hungarian_ci;
USE `centrum`;

/* 3. feladat:  */
SELECT `id`,`kezdet`,`veg`,`dij` FROM `kezeles`;

/* 4. feladat:  */
SELECT `nev`,`kerulet` FROM `gazda` WHERE `kerulet`= 17 OR `kerulet`= 18 ORDER BY `kerulet`,`nev`;

/* 5. feladat:  */
SELECT kezelestipus.jelleg, Count(kezelestipus.id)
FROM `kezelestipus` 
LEFT JOIN kezeles ON kezeles.kezelestipusId = kezelestipus.id
GROUP BY kezelestipus.jelleg;

/* 6. feladat:  */
SELECT kezelestipus.jelleg, kezeles.kezdet, kezeles.veg, kezeles.dij
FROM kezeles
LEFT JOIN kezelestipus ON kezeles.kezelestipusId = kezelestipus.id
WHERE kezelestipus.jelleg like "%gyógy%" AND (MONTH(kezeles.veg) = 10 OR MONTH(kezeles.veg) = 11 OR MONTH(kezeles.veg) = 12);

/* 7. feladat:  */