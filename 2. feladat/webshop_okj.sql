-- 1. feladat
CREATE DATABASE IF NOT EXISTS `webshop` DEFAULT CHARACTER SET utf8 COLLATE utf8_hungarian_ci;
USE `webshop`;

-- 3. feladat
ALTER TABLE `szamlafej` ADD FOREIGN KEY (`vevoid`) 
REFERENCES `vevok`(`id`);
ALTER TABLE `szamlatetel` ADD FOREIGN KEY (`szamlafejid`) 
REFERENCES `szamlafej`(`id`)
ALTER TABLE `szamlatetel` ADD FOREIGN KEY (`termekid`) 
REFERENCES `termekek`(`id`)

-- 4. feladat
SELECT `megnevezes`,`ar` 
FROM `termekek` 
ORDER BY `ar` ASC

-- 5. feladat
UPDATE `termekek` SET `ar`= `ar`* 0.95 
WHERE `ar` > 5000

-- 6. feladat
SELECT SUM(szamlatetel.mennyiseg*szamlatetel.bruttoegysegar) FROM `szamlafej` 
INNER JOIN `szamlatetel` ON szamlatetel.szamlafejid = szamlafej.id 
WHERE szamlafej.teljesites BETWEEN '2018-01-01' AND '2018-01-15'

-- 7. feladat
SELECT `nev`, `telepules`FROM `vevok` 
LEFT JOIN `szamlafej` ON szamlafej.vevoid = vevok.id 
WHERE szamlafej.id IS NULL 
ORDER BY vevok.nev

-- 8. feladat
SELECT termekek.megnevezes, SUM(szamlatetel.mennyiseg*szamlatetel.bruttoegysegar) AS 'bevetel' FROM `szamlatetel` 
INNER JOIN `termekek` ON szamlatetel.termekid = termekek.id 
GROUP BY termekek.megnevezes 
ORDER BY SUM(szamlatetel.mennyiseg*szamlatetel.bruttoegysegar) DESC 
LIMIT 3

