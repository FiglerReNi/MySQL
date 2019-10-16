CREATE DATABASE IF NOT EXISTS `autoberles` DEFAULT CHARACTER SET utf8 COLLATE utf8_hungarian_ci;
USE `autoberles`;

CREATE TABLE `autok` (
  `id` int(11) NOT NULL,
  `rendszam` varchar(6) COLLATE utf8_hungarian_ci NOT NULL,
  `tipus` varchar(100) COLLATE utf8_hungarian_ci NOT NULL,
  `evjarat` int(11) DEFAULT NULL,
  `szin` varchar(30) COLLATE utf8_hungarian_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

CREATE TABLE `berlok` (
  `id` int(11) NOT NULL,
  `nev` varchar(100) COLLATE utf8_hungarian_ci NOT NULL,
  `jogositvany_szama` varchar(15) COLLATE utf8_hungarian_ci NOT NULL,
  `telefonszam` varchar(20) COLLATE utf8_hungarian_ci DEFAULT NULL,
  `szuletesiido` date NOT NULL,
  `lakcim` varchar(250) COLLATE utf8_hungarian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

CREATE TABLE `kolcsonzes` (
  `id` int(11) NOT NULL,
  `berloid` int(11) NOT NULL,
  `autoid` int(11) NOT NULL,
  `berletkezdete` date NOT NULL,
  `napokszama` int(11) DEFAULT NULL,
  `napidij` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

ALTER TABLE `autok`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`,`rendszam`);

ALTER TABLE `berlok`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

ALTER TABLE `kolcsonzes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `berloid` (`berloid`),
  ADD KEY `autoid` (`autoid`);

ALTER TABLE `autok`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

ALTER TABLE `berlok`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

ALTER TABLE `kolcsonzes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

ALTER TABLE `kolcsonzes`
  ADD CONSTRAINT `kolcsonzes_ibfk_1` FOREIGN KEY (`berloid`) REFERENCES `berlok` (`id`),
  ADD CONSTRAINT `kolcsonzes_ibfk_2` FOREIGN KEY (`autoid`) REFERENCES `autok` (`id`);

INSERT INTO `autok` (`id`, `rendszam`, `tipus`, `evjarat`, `szin`) VALUES(1, 'ABC456', 'Ford Ka  \r\n', 2003, 'Pink');
INSERT INTO `autok` (`id`, `rendszam`, `tipus`, `evjarat`, `szin`) VALUES(2, 'ABC123', 'Volkswagen Golf  \r\n', 2011, 'Fehér');
INSERT INTO `autok` (`id`, `rendszam`, `tipus`, `evjarat`, `szin`) VALUES(3, 'ABC157', 'Ford Mondeo\r\n', 2015, 'Fekete');
INSERT INTO `autok` (`id`, `rendszam`, `tipus`, `evjarat`, `szin`) VALUES(4, 'ABC448', 'Volkswagen Golf ', 2012, 'Kék');

NSERT INTO `berlok` (`id`, `nev`, `jogositvany_szama`, `telefonszam`, `szuletesiido`, `lakcim`) VALUES(1, 'Kandúr Károly', 'LR337157 ', '06-41-334112', '0000-00-00', '');
INSERT INTO `berlok` (`id`, `nev`, `jogositvany_szama`, `telefonszam`, `szuletesiido`, `lakcim`) VALUES(2, 'Gipsz Jakab ', 'VE445112', ' 06-41-555223', '0000-00-00', '');
UPDATE `kolcsonzes` SET `napokszama` = '6' WHERE `kolcsonzes`.`id` = 1;

SELECT SUM(`napokszama`*`napidij`) AS "Bérleti díj" FROM `kolcsonzes` WHERE berloid = 1;

SELECT autok.rendszam, berlok.nev
FROM `kolcsonzes` 
left join berlok on berlok.id = kolcsonzes.berloid
left join autok on autok.id = kolcsonzes.autoid;

