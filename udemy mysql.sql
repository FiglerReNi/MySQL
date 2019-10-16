SELECT
  'Hello World!';

CREATE DATABASE gyakorlas;

CREATE DATABASE IF NOT EXISTS gyakorlas;

DROP DATABASE gyakorlas;

SHOW DATABASES;

USE gyakorlas;

CREATE TABLE part1 (
  member_id INT (11) UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  full_name VARCHAR (50) NULL,
  gender VARCHAR (6) NULL,
  date_of_birth DATE
);

USE gyakorlas;

SHOW TABLES;

SELECT
  *
FROM
  part1;

USE gyakorlas;

CREATE TABLE IF NOT EXISTS part2 (full_name VARCHAR (55));

USE gyakorlas;

DROP TABLE IF EXISTS part2;

USE gyakorlas;

SHOW COLUMNS FROM part1;

USE gyakorlas;

ALTER TABLE part1
  ADD COLUMN registered_at DATE;

ALTER TABLE part1
  DROP COLUMN registered_at;

ALTER TABLE part1
  CHANGE registered_at created_at DATE;

ALTER TABLE part1
  MODIFY full_name VARCHAR (50) NOT NULL;

SHOW COLUMNS FROM gyakorlas.part1;

USE gyakorlas;

INSERT INTO part1 (
  full_name,
  gender,
  date_of_birth,
  created_at
)
VALUES
  (
    'Anikó',
    'female',
    '1990-08-07',
    '2019-03-25'
  );

SELECT
  *
FROM
  part1;

USE gyakorlas;

INSERT INTO part1 (
  full_name,
  gender,
  date_of_birth,
  created_at
)
VALUES
  (
    'Ancsa',
    'female',
    '1990-08-07',
    '2019-03-25'
  ),
  ('Reni', 'female', '1990-08-07', NOW()),
  (
    'Dávid',
    'female',
    '1990-08-07',
    '2019-03-25'
  );

USE gyakorlas;

DELETE
FROM
  part1
WHERE member_id = 7;

DELETE
FROM
  part1
WHERE member_id IN (4, 6);

TRUNCATE part1;

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` MEDIUMINT (8) UNSIGNED NOT NULL AUTO_INCREMENT,
  `full_name` VARCHAR (255) DEFAULT NULL,
  `email` VARCHAR (255) DEFAULT NULL,
  `phone` VARCHAR (100) DEFAULT NULL,
  `created_at` VARCHAR (255),
  PRIMARY KEY (`id`)
) AUTO_INCREMENT = 1;

INSERT INTO `users` (
  `full_name`,
  `email`,
  `phone`,
  `created_at`
)
VALUES
  (
    "Benedict",
    "nec@ullamcorper.edu",
    "1-779-961-3450",
    "2019-07-19 07:37:38"
  ),
  (
    "Garrett",
    "Quisque.tincidunt@convallisest.org",
    "153-8344",
    "2019-10-28 13:42:28"
  ),
  (
    "Zorita",
    "dui@nec.ca",
    "1-506-543-6761",
    "2020-01-23 20:13:50"
  ),
  (
    "Hakeem",
    "Nulla.tincidunt.neque@inmagna.com",
    "1-659-831-1871",
    "2019-10-22 22:42:04"
  ),
  (
    "Jerome",
    "tortor@ornareliberoat.co.uk",
    "756-8889",
    "2018-07-24 18:31:54"
  ),
  (
    "Iliana",
    "feugiat.metus.sit@ligulaeuenim.com",
    "336-2481",
    "2018-04-01 02:55:39"
  ),
  (
    "Kimberley",
    "leo.Vivamus.nibh@Maecenas.edu",
    "681-0471",
    "2018-11-19 05:55:28"
  ),
  (
    "Gray",
    "odio@infaucibusorci.net",
    "1-915-182-8150",
    "2019-02-20 18:54:09"
  ),
  (
    "Peter",
    "dignissim@Mauris.com",
    "1-398-452-7643",
    "2019-09-11 23:31:21"
  ),
  (
    "Mollie",
    "suscipit.nonummy@necluctusfelis.net",
    "549-6460",
    "2018-09-03 10:02:35"
  );

INSERT INTO `users` (
  `full_name`,
  `email`,
  `phone`,
  `created_at`
)
VALUES
  (
    "Zane",
    "Duis.cursus@malesuadaIntegerid.com",
    "1-981-438-8095",
    "2018-10-17 12:12:51"
  ),
  (
    "Kareem",
    "blandit.Nam@variuset.org",
    "1-934-822-0929",
    "2018-07-26 23:32:26"
  ),
  (
    "Haley",
    "mi.lacinia.mattis@velit.org",
    "395-0764",
    "2020-03-10 10:49:46"
  ),
  (
    "Byron",
    "Integer.in@Proinnonmassa.edu",
    "356-2490",
    "2019-05-03 11:11:08"
  ),
  (
    "Sierra",
    "nec.quam@egetlaoreet.ca",
    "531-2526",
    "2018-06-29 04:17:59"
  ),
  (
    "Pandora",
    "scelerisque.lorem.ipsum@Donec.ca",
    "565-2718",
    "2019-06-18 20:39:22"
  ),
  (
    "Wanda",
    "urna.suscipit.nonummy@mollis.ca",
    "523-2951",
    "2019-05-04 07:55:21"
  ),
  (
    "Chadwick",
    "turpis.egestas.Aliquam@adipiscing.co.uk",
    "1-683-946-3724",
    "2018-07-16 07:08:43"
  ),
  (
    "Rama",
    "Mauris@loremloremluctus.co.uk",
    "1-451-103-2986",
    "2018-11-29 08:27:39"
  ),
  (
    "Tiger",
    "diam.lorem@vitaesodalesat.edu",
    "625-5219",
    "2018-09-21 15:28:34"
  );

INSERT INTO `users` (
  `full_name`,
  `email`,
  `phone`,
  `created_at`
)
VALUES
  (
    "Zeph",
    "senectus.et.netus@CurabiturmassaVestibulum.edu",
    "770-6925",
    "2018-06-01 10:40:20"
  ),
  (
    "Willow",
    "et@odio.org",
    "1-862-708-9421",
    "2019-10-09 10:37:20"
  ),
  (
    "Carter",
    "tincidunt.adipiscing@aliquamerosturpis.org",
    "719-7985",
    "2018-05-19 20:00:56"
  ),
  (
    "Lee",
    "et.magnis@idenim.org",
    "1-480-659-3242",
    "2019-02-12 04:42:35"
  ),
  (
    "Brandon",
    "vel@consectetueradipiscing.com",
    "1-692-197-4343",
    "2019-01-29 06:57:24"
  ),
  (
    "Jenette",
    "Duis@eu.ca",
    "545-9920",
    "2019-08-12 15:40:28"
  ),
  (
    "Stone",
    "nonummy@euodio.org",
    "448-4903",
    "2019-07-17 15:16:29"
  ),
  (
    "Anthony",
    "Cras.dictum@aliquetProin.net",
    "1-874-555-8029",
    "2020-02-12 15:07:00"
  ),
  (
    "Sophia",
    "vitae.sodales@utlacusNulla.co.uk",
    "1-514-382-7468",
    "2018-05-03 19:35:23"
  ),
  (
    "Alexis",
    "Vestibulum.ante.ipsum@sed.org",
    "171-7409",
    "2018-11-10 23:39:18"
  );

INSERT INTO `users` (
  `full_name`,
  `email`,
  `phone`,
  `created_at`
)
VALUES
  (
    "Prescott",
    "at.auctor.ullamcorper@laoreet.net",
    "301-3442",
    "2019-12-08 20:59:44"
  ),
  (
    "Hilary",
    "Ut@ipsumprimisin.org",
    "1-778-834-8245",
    "2018-08-29 01:10:27"
  ),
  (
    "Timon",
    "penatibus@Donecvitae.ca",
    "933-7826",
    "2019-03-04 07:47:05"
  ),
  (
    "Tiger",
    "sapien@mi.ca",
    "1-473-616-4091",
    "2019-02-21 23:25:10"
  ),
  (
    "Colorado",
    "dignissim.magna.a@arcuVestibulum.edu",
    "1-470-702-4893",
    "2019-05-05 06:43:16"
  ),
  (
    "Kylan",
    "tristique.aliquet@necanteblandit.edu",
    "447-9695",
    "2020-01-03 05:15:27"
  ),
  (
    "Barclay",
    "id.erat.Etiam@Morbisitamet.com",
    "292-8056",
    "2020-03-19 20:56:35"
  ),
  (
    "Hashim",
    "eget@euismodenimEtiam.net",
    "1-181-397-6930",
    "2019-04-07 12:10:21"
  ),
  (
    "Ayanna",
    "sit@ametconsectetueradipiscing.edu",
    "1-899-703-7485",
    "2018-07-31 08:06:32"
  ),
  (
    "Rose",
    "habitant.morbi.tristique@consectetuermaurisid.ca",
    "671-0972",
    "2018-10-08 12:36:42"
  );

INSERT INTO `users` (
  `full_name`,
  `email`,
  `phone`,
  `created_at`
)
VALUES
  (
    "Chadwick",
    "iaculis@metusfacilisislorem.co.uk",
    "1-207-937-7021",
    "2018-06-13 09:49:52"
  ),
  (
    "Dean",
    "mauris@Integermollis.co.uk",
    "1-756-573-8116",
    "2018-11-16 12:29:14"
  ),
  (
    "Barclay",
    "consequat@sagittisNullam.net",
    "234-3214",
    "2018-10-02 08:12:20"
  ),
  (
    "Eleanor",
    "commodo.at.libero@ultrices.net",
    "1-737-342-1533",
    "2018-11-06 23:17:38"
  ),
  (
    "Emi",
    "ultrices.Vivamus@blandit.com",
    "1-222-578-5682",
    "2018-10-03 20:03:36"
  ),
  (
    "Aurelia",
    "cursus@orciUtsagittis.co.uk",
    "1-765-460-5043",
    "2019-10-03 15:58:45"
  ),
  (
    "Tana",
    "ac@a.edu",
    "126-4910",
    "2018-11-30 07:57:30"
  ),
  (
    "Peter",
    "sodales.at@ac.com",
    "844-8677",
    "2018-10-30 20:56:53"
  ),
  (
    "Walker",
    "velit@nislelementum.edu",
    "998-4069",
    "2019-06-21 08:46:32"
  ),
  (
    "Hollee",
    "mauris@turpisegestas.net",
    "720-9496",
    "2018-05-28 01:20:18"
  );

INSERT INTO `users` (
  `full_name`,
  `email`,
  `phone`,
  `created_at`
)
VALUES
  (
    "Samantha",
    "Fusce.aliquam@convallisconvallisdolor.org",
    "144-9852",
    "2019-01-26 18:13:22"
  ),
  (
    "Wing",
    "orci.Donec.nibh@fringillaporttitor.co.uk",
    "1-202-284-2191",
    "2019-03-09 23:10:05"
  ),
  (
    "Hammett",
    "mus.Aenean@Quisqueimperdiet.org",
    "1-322-578-4652",
    "2018-06-05 05:52:14"
  ),
  (
    "Odette",
    "pede.Cras.vulputate@nec.com",
    "295-8831",
    "2018-09-13 19:25:03"
  ),
  (
    "Kelsie",
    "Nulla@facilisiSed.co.uk",
    "246-1026",
    "2019-05-29 09:54:27"
  ),
  (
    "Jane",
    "nec.mauris.blandit@rutrumnonhendrerit.com",
    "522-1771",
    "2019-01-19 18:12:41"
  ),
  (
    "Brent",
    "commodo.hendrerit@natoquepenatibuset.ca",
    "973-8154",
    "2019-08-25 07:48:21"
  ),
  (
    "Shaine",
    "dictum.magna.Ut@suscipitnonummy.edu",
    "1-532-451-3483",
    "2018-04-16 21:31:34"
  ),
  (
    "Eden",
    "convallis.convallis.dolor@dolorsitamet.co.uk",
    "1-497-192-7772",
    "2019-06-25 19:39:40"
  ),
  (
    "Wayne",
    "ultrices.mauris@idantedictum.net",
    "1-106-303-7229",
    "2019-05-31 07:36:48"
  );

INSERT INTO `users` (
  `full_name`,
  `email`,
  `phone`,
  `created_at`
)
VALUES
  (
    "Leah",
    "Suspendisse.sed.dolor@euismod.org",
    "1-660-164-1851",
    "2020-02-04 16:06:19"
  ),
  (
    "Brendan",
    "vehicula@Integer.edu",
    "1-831-571-4612",
    "2018-07-05 22:22:06"
  ),
  (
    "Gillian",
    "eget@sed.co.uk",
    "1-814-828-0308",
    "2018-05-17 00:49:12"
  ),
  (
    "Gil",
    "aliquam.arcu@ipsumSuspendissesagittis.com",
    "1-622-275-9054",
    "2018-07-08 07:25:04"
  ),
  (
    "Moses",
    "libero.Integer@eratin.org",
    "1-652-559-1394",
    "2018-10-10 14:05:10"
  ),
  (
    "Cadman",
    "pulvinar@sitamet.ca",
    "780-3108",
    "2019-06-29 22:25:29"
  ),
  (
    "Jordan",
    "ante.dictum@nullaIntegerurna.org",
    "1-166-190-5704",
    "2019-10-04 17:09:31"
  ),
  (
    "Yoko",
    "luctus.ut@fermentummetusAenean.co.uk",
    "1-535-387-0228",
    "2020-03-10 08:58:56"
  ),
  (
    "Quintessa",
    "egestas.Sed.pharetra@blanditmattisCras.co.uk",
    "1-124-226-2723",
    "2019-01-01 16:50:25"
  ),
  (
    "Leo",
    "natoque.penatibus@Donec.com",
    "1-276-434-9843",
    "2019-02-02 23:36:16"
  );

INSERT INTO `users` (
  `full_name`,
  `email`,
  `phone`,
  `created_at`
)
VALUES
  (
    "Luke",
    "commodo@elit.com",
    "378-4896",
    "2019-09-23 05:06:58"
  ),
  (
    "Baker",
    "habitant.morbi.tristique@Duis.com",
    "1-308-557-8860",
    "2018-08-02 17:36:42"
  ),
  (
    "Leandra",
    "Suspendisse@vestibulumneque.ca",
    "945-4955",
    "2018-10-19 23:37:26"
  ),
  (
    "Jack",
    "In.mi.pede@vulputate.com",
    "978-4205",
    "2018-08-31 12:29:36"
  ),
  (
    "Arsenio",
    "Phasellus.nulla.Integer@eget.net",
    "1-401-630-3537",
    "2018-10-03 10:23:12"
  ),
  (
    "Lamar",
    "penatibus@blanditcongue.com",
    "310-9168",
    "2018-04-09 01:42:42"
  ),
  (
    "Cheyenne",
    "sed.dui@Donec.net",
    "1-807-457-5519",
    "2019-02-16 13:05:24"
  ),
  (
    "Suki",
    "Mauris@per.com",
    "700-4109",
    "2018-09-09 13:24:50"
  ),
  (
    "Galvin",
    "risus.Duis@elitpretiumet.org",
    "1-239-835-5163",
    "2018-07-04 15:17:04"
  ),
  (
    "Dominic",
    "cursus.et.eros@laoreetlibero.net",
    "438-2895",
    "2018-07-15 22:50:15"
  );

INSERT INTO `users` (
  `full_name`,
  `email`,
  `phone`,
  `created_at`
)
VALUES
  (
    "Dylan",
    "arcu@arcuVestibulum.org",
    "1-650-188-4730",
    "2019-06-09 10:41:45"
  ),
  (
    "Rudyard",
    "semper.rutrum@eleifend.com",
    "744-3216",
    "2018-12-13 01:18:12"
  ),
  (
    "Alisa",
    "Cras.dictum.ultricies@et.com",
    "1-680-323-5720",
    "2019-06-18 15:44:35"
  ),
  (
    "Alan",
    "fermentum.fermentum.arcu@lacus.org",
    "1-978-861-2672",
    "2019-03-20 17:19:29"
  ),
  (
    "Isabella",
    "ipsum.Curabitur.consequat@lobortis.ca",
    "1-317-185-4865",
    "2018-06-22 22:03:40"
  ),
  (
    "Fritz",
    "pede.sagittis.augue@egetmollislectus.com",
    "517-2079",
    "2019-02-18 06:55:40"
  ),
  (
    "Amy",
    "ipsum.Suspendisse@Morbivehicula.com",
    "1-101-809-5020",
    "2018-08-24 07:07:54"
  ),
  (
    "Lenore",
    "Quisque.purus.sapien@acfacilisis.net",
    "1-819-491-6660",
    "2020-02-23 01:36:09"
  ),
  (
    "Jerome",
    "rhoncus.Proin.nisl@ipsum.edu",
    "1-506-259-3678",
    "2018-04-30 15:21:37"
  ),
  (
    "Keane",
    "lectus@Sedpharetra.org",
    "1-425-619-2000",
    "2019-09-06 11:17:42"
  );

INSERT INTO `users` (
  `full_name`,
  `email`,
  `phone`,
  `created_at`
)
VALUES
  (
    "Stewart",
    "a.tortor.Nunc@purus.ca",
    "114-5718",
    "2018-04-12 18:06:32"
  ),
  (
    "Sopoline",
    "Donec.egestas.Aliquam@laoreetipsum.com",
    "1-364-958-5691",
    "2019-10-09 14:57:02"
  ),
  (
    "Lucy",
    "orci@telluslorem.ca",
    "1-314-450-5657",
    "2019-06-10 17:12:16"
  ),
  (
    "Velma",
    "Curabitur.ut.odio@lectuspedeultrices.com",
    "371-5618",
    "2018-05-20 19:04:54"
  ),
  (
    "Julian",
    "in.consectetuer@bibendumullamcorperDuis.ca",
    "451-0327",
    "2019-12-15 07:23:38"
  ),
  (
    "Stacy",
    "metus.Vivamus.euismod@Morbiquisurna.org",
    "1-808-987-3409",
    "2019-07-08 22:38:01"
  ),
  (
    "Jesse",
    "pretium@tellusnonmagna.org",
    "1-954-265-9923",
    "2018-12-13 00:12:44"
  ),
  (
    "Tyrone",
    "pellentesque.tellus.sem@vestibulum.net",
    "894-7684",
    "2019-09-19 22:02:40"
  ),
  (
    "Marsden",
    "Integer.eu.lacus@non.net",
    "1-544-241-9475",
    "2020-02-01 03:44:22"
  ),
  (
    "Sage",
    "aptent@est.com",
    "1-243-622-4136",
    "2020-01-21 23:48:34"
  );

SELECT
  *
FROM
  gyakorlas.users;

DROP TABLE IF EXISTS `employees`;

CREATE TABLE `employees` (
  `id` MEDIUMINT (8) UNSIGNED NOT NULL AUTO_INCREMENT,
  `empID` MEDIUMINT,
  `first_name` VARCHAR (255) DEFAULT NULL,
  `last_name` VARCHAR (255) DEFAULT NULL,
  `email` VARCHAR (255) DEFAULT NULL,
  `address` VARCHAR (255) DEFAULT NULL,
  `phone` VARCHAR (100) DEFAULT NULL,
  `salary` VARCHAR (100) DEFAULT NULL,
  `country` VARCHAR (100) DEFAULT NULL,
  `created` VARCHAR (255),
  PRIMARY KEY (`id`)
) AUTO_INCREMENT = 1;

INSERT INTO `employees` (
  `empID`,
  `first_name`,
  `last_name`,
  `email`,
  `address`,
  `phone`,
  `salary`,
  `country`,
  `created`
)
VALUES
  (
    1,
    "Hashim",
    "Jolene",
    "purus.Maecenas@magnatellusfaucibus.ca",
    "Ap #141-2921 In St.",
    "1-355-242-2395",
    "45249",
    "India",
    "2019-09-28 16:51:22"
  ),
  (
    2,
    "Hannah",
    "Judah",
    "ipsum@magnaLorem.com",
    "P.O. Box 997, 4293 Dis St.",
    "1-521-150-1194",
    "80913",
    "Seychelles",
    "2018-04-30 13:43:08"
  ),
  (
    3,
    "Allegra",
    "Frances",
    "porta@Donecest.com",
    "500-3819 Proin Road",
    "1-495-494-6634",
    "32340",
    "United Kingdom (Great Britain)",
    "2018-09-28 05:10:07"
  ),
  (
    4,
    "Imogene",
    "Dacey",
    "Quisque@Morbimetus.org",
    "944-7632 Etiam St.",
    "1-239-401-2931",
    "81863",
    "Norway",
    "2018-10-08 11:56:57"
  ),
  (
    5,
    "Maia",
    "Martena",
    "mi.tempor.lorem@tellus.ca",
    "Ap #632-3553 Nulla. Rd.",
    "1-837-838-7223",
    "94044",
    "Iraq",
    "2018-08-01 15:02:37"
  ),
  (
    6,
    "Calista",
    "Ila",
    "nulla@Cras.org",
    "Ap #117-4177 Nisi Av.",
    "1-366-973-9961",
    "60469",
    "Indonesia",
    "2018-09-20 18:30:51"
  ),
  (
    7,
    "Zoe",
    "Yuli",
    "faucibus.ut.nulla@Etiamgravida.com",
    "P.O. Box 441, 3123 Integer Ave",
    "1-537-456-3820",
    "46687",
    "Azerbaijan",
    "2019-07-22 22:42:24"
  ),
  (
    8,
    "Armand",
    "Dalton",
    "Aenean.euismod.mauris@tortorNunc.org",
    "432-4084 Ut Avenue",
    "1-820-517-4946",
    "1232",
    "Barbados",
    "2019-11-12 10:10:09"
  ),
  (
    9,
    "Macey",
    "Noelani",
    "et.nunc@semsemper.edu",
    "164-6843 Dolor Street",
    "796-3904",
    "38356",
    "Guernsey",
    "2019-04-05 07:01:04"
  ),
  (
    10,
    "Piper",
    "Edan",
    "eget.lacus@loremac.edu",
    "Ap #666-5899 Ullamcorper Av.",
    "1-468-924-8488",
    "82480",
    "Panama",
    "2020-01-14 12:22:39"
  );

INSERT INTO `employees` (
  `empID`,
  `first_name`,
  `last_name`,
  `email`,
  `address`,
  `phone`,
  `salary`,
  `country`,
  `created`
)
VALUES
  (
    11,
    "Ashton",
    "Alexa",
    "eu@Phasellusfermentumconvallis.edu",
    "2511 Tellus Rd.",
    "1-440-802-3291",
    "36417",
    "New Caledonia",
    "2018-05-23 00:56:18"
  ),
  (
    12,
    "Maryam",
    "Hilary",
    "in.molestie@scelerisqueneque.org",
    "563-1483 In Av.",
    "1-728-937-6093",
    "14300",
    "Brunei",
    "2018-08-16 00:07:59"
  ),
  (
    13,
    "Tyler",
    "Lydia",
    "ullamcorper.Duis.at@Nuncuterat.com",
    "P.O. Box 456, 8133 Metus Rd.",
    "1-222-426-0064",
    "84391",
    "Egypt",
    "2019-03-26 11:02:28"
  ),
  (
    14,
    "Hiroko",
    "Audra",
    "urna.convallis.erat@nuncullamcorpereu.org",
    "P.O. Box 332, 7895 Risus. St.",
    "643-7257",
    "25424",
    "Ireland",
    "2019-03-11 08:50:02"
  ),
  (
    15,
    "Georgia",
    "Seth",
    "adipiscing@mitempor.net",
    "Ap #369-548 Aliquet, St.",
    "1-215-713-0399",
    "88520",
    "Maldives",
    "2020-03-21 17:04:38"
  ),
  (
    16,
    "Jared",
    "Celeste",
    "eu.enim.Etiam@consectetuer.ca",
    "9065 Vitae Rd.",
    "447-8375",
    "89804",
    "Tajikistan",
    "2020-03-06 09:48:18"
  ),
  (
    17,
    "Clinton",
    "Tiger",
    "montes@sitametultricies.edu",
    "Ap #956-6271 Arcu. Av.",
    "1-133-436-3710",
    "85334",
    "Tuvalu",
    "2020-03-12 02:42:28"
  ),
  (
    18,
    "Lionel",
    "Caesar",
    "rutrum.justo.Praesent@placerat.org",
    "4997 Quisque St.",
    "719-1754",
    "89774",
    "Taiwan",
    "2019-01-23 18:54:22"
  ),
  (
    19,
    "Barrett",
    "Nomlanga",
    "lorem.sit@arcu.ca",
    "204-3589 Nulla St.",
    "875-3257",
    "80411",
    "Montserrat",
    "2019-04-05 17:59:38"
  ),
  (
    20,
    "Kane",
    "Mohammad",
    "magna@imperdiet.edu",
    "715-8669 Pellentesque Ave",
    "617-4914",
    "4638",
    "Bonaire, Sint Eustatius and Saba",
    "2020-02-25 19:13:05"
  );

INSERT INTO `employees` (
  `empID`,
  `first_name`,
  `last_name`,
  `email`,
  `address`,
  `phone`,
  `salary`,
  `country`,
  `created`
)
VALUES
  (
    21,
    "Sage",
    "Slade",
    "ullamcorper.viverra.Maecenas@malesuada.com",
    "1626 Integer Rd.",
    "1-705-408-0087",
    "0930",
    "Antarctica",
    "2018-10-08 03:54:45"
  ),
  (
    22,
    "Clarke",
    "Tate",
    "magna@Nunc.edu",
    "8872 Morbi Avenue",
    "1-944-762-5158",
    "67818",
    "Mexico",
    "2018-10-24 16:54:10"
  ),
  (
    23,
    "Chelsea",
    "Victor",
    "arcu@at.edu",
    "4285 Interdum Avenue",
    "1-332-328-7502",
    "14270",
    "Netherlands",
    "2019-08-27 01:57:42"
  ),
  (
    24,
    "Pamela",
    "Arsenio",
    "non.luctus@rutrumurna.com",
    "8208 Nullam St.",
    "1-802-699-8115",
    "25452",
    "Vanuatu",
    "2019-12-27 18:12:58"
  ),
  (
    25,
    "Bruno",
    "Emerald",
    "enim.commodo.hendrerit@egestasa.com",
    "P.O. Box 959, 1901 Sagittis. Street",
    "636-8945",
    "67785",
    "Niue",
    "2020-02-12 23:01:40"
  ),
  (
    26,
    "Alec",
    "Colleen",
    "Nunc.mauris.sapien@lobortis.co.uk",
    "446-7816 Maecenas Ave",
    "1-252-126-6678",
    "29077",
    "Kyrgyzstan",
    "2019-11-30 15:11:20"
  ),
  (
    27,
    "Daniel",
    "Ursa",
    "Fusce.mi@pharetraQuisque.com",
    "Ap #226-342 Dictum Av.",
    "972-2556",
    "19331",
    "Antarctica",
    "2018-12-22 10:39:29"
  ),
  (
    28,
    "Germaine",
    "Rowan",
    "augue@diamdictumsapien.com",
    "219-7389 Ac Street",
    "770-5023",
    "31612",
    "South Georgia and The South Sandwich Islands",
    "2020-03-19 15:46:51"
  ),
  (
    29,
    "Carter",
    "Chaney",
    "ac.metus@semutcursus.com",
    "6831 Quam Av.",
    "1-200-775-3710",
    "17302",
    "Malawi",
    "2020-03-13 08:54:16"
  ),
  (
    30,
    "Rachel",
    "Germane",
    "et@Donec.edu",
    "Ap #439-2435 Pede Road",
    "487-1999",
    "4194",
    "Nigeria",
    "2020-01-20 13:22:19"
  );

INSERT INTO `employees` (
  `empID`,
  `first_name`,
  `last_name`,
  `email`,
  `address`,
  `phone`,
  `salary`,
  `country`,
  `created`
)
VALUES
  (
    31,
    "Hedda",
    "Omar",
    "ipsum.dolor@velit.com",
    "Ap #729-6507 Nec St.",
    "1-539-751-2934",
    "45120",
    "Bouvet Island",
    "2018-05-17 05:26:01"
  ),
  (
    32,
    "Rylee",
    "Amal",
    "ante@mattis.org",
    "Ap #961-9715 Dui Road",
    "902-3111",
    "79091",
    "Angola",
    "2018-08-07 04:44:19"
  ),
  (
    33,
    "Quintessa",
    "Kelsie",
    "risus.Quisque.libero@etlacinia.ca",
    "5033 Mollis Rd.",
    "173-7948",
    "13810",
    "Cambodia",
    "2018-09-21 16:07:40"
  ),
  (
    34,
    "Brody",
    "Hoyt",
    "consequat.purus@semper.ca",
    "Ap #675-1685 Et Rd.",
    "1-222-619-0466",
    "83893",
    "Nauru",
    "2019-11-23 13:38:30"
  ),
  (
    35,
    "Hiram",
    "Ahmed",
    "id.mollis@mattisCraseget.edu",
    "368-686 In Avenue",
    "844-3191",
    "28989",
    "Paraguay",
    "2019-11-28 01:17:09"
  ),
  (
    36,
    "Wyoming",
    "Len",
    "Pellentesque.tincidunt.tempus@sapiengravida.edu",
    "P.O. Box 990, 8815 Morbi Av.",
    "1-111-568-0551",
    "84283",
    "Costa Rica",
    "2018-08-10 09:57:05"
  ),
  (
    37,
    "Dorian",
    "Clementine",
    "dictum@lobortisquis.net",
    "Ap #412-1105 Eros Road",
    "452-9535",
    "95271",
    "Bahrain",
    "2018-10-18 06:51:11"
  ),
  (
    38,
    "Fitzgerald",
    "Tasha",
    "risus.Nunc@Utsemper.com",
    "750-8710 Senectus Rd.",
    "1-716-762-5800",
    "90753",
    "Mongolia",
    "2019-12-03 04:51:53"
  ),
  (
    39,
    "Jonah",
    "Xavier",
    "odio@sit.ca",
    "P.O. Box 401, 4246 Nunc Rd.",
    "652-6658",
    "5940",
    "Burundi",
    "2019-10-28 21:05:07"
  ),
  (
    40,
    "Moses",
    "Laith",
    "Mauris@utmolestiein.net",
    "390-1846 Libero Av.",
    "610-6912",
    "99167",
    "Cambodia",
    "2018-07-14 07:49:59"
  );

INSERT INTO `employees` (
  `empID`,
  `first_name`,
  `last_name`,
  `email`,
  `address`,
  `phone`,
  `salary`,
  `country`,
  `created`
)
VALUES
  (
    41,
    "Timothy",
    "Uriel",
    "lacus@metusVivamuseuismod.com",
    "P.O. Box 837, 5749 Id St.",
    "1-187-741-6569",
    "2707",
    "Niue",
    "2020-01-08 06:48:32"
  ),
  (
    42,
    "Carolyn",
    "Aquila",
    "elementum.purus@semperdui.com",
    "P.O. Box 290, 2978 Sed Av.",
    "749-5384",
    "8154",
    "Faroe Islands",
    "2018-11-07 00:41:06"
  ),
  (
    43,
    "Kuame",
    "Donovan",
    "urna.convallis@enimcommodohendrerit.edu",
    "P.O. Box 839, 5212 Malesuada Road",
    "523-7803",
    "86779",
    "Bonaire, Sint Eustatius and Saba",
    "2019-08-31 17:01:22"
  ),
  (
    44,
    "Michael",
    "Miranda",
    "sit@dapibusrutrum.co.uk",
    "3814 Nec, Avenue",
    "773-7224",
    "98005",
    "Ireland",
    "2018-12-18 00:27:30"
  ),
  (
    45,
    "Regina",
    "Dante",
    "massa@loremDonec.net",
    "Ap #898-4671 Vel Av.",
    "1-759-489-3869",
    "37924",
    "Liechtenstein",
    "2018-08-08 02:32:37"
  ),
  (
    46,
    "Mikayla",
    "Rama",
    "enim.commodo.hendrerit@risusDonecegestas.org",
    "Ap #959-634 Velit. Rd.",
    "1-802-470-3745",
    "64011",
    "Azerbaijan",
    "2019-11-15 16:24:56"
  ),
  (
    47,
    "Ursula",
    "Joseph",
    "egestas.rhoncus.Proin@Fusce.co.uk",
    "P.O. Box 737, 5422 Lorem Av.",
    "889-0252",
    "21089",
    "Monaco",
    "2018-06-06 21:37:38"
  ),
  (
    48,
    "Cullen",
    "Drew",
    "mollis@disparturient.edu",
    "P.O. Box 916, 1832 Ligula. Street",
    "1-332-805-1459",
    "0353",
    "Guernsey",
    "2018-05-01 09:41:29"
  ),
  (
    49,
    "Quemby",
    "Thor",
    "a.felis@porttitortellusnon.ca",
    "5273 Erat St.",
    "1-527-304-2333",
    "29842",
    "Belarus",
    "2019-04-27 17:21:25"
  ),
  (
    50,
    "Ulla",
    "Richard",
    "erat.eget.tincidunt@DonectinciduntDonec.com",
    "185-9595 Nec Ave",
    "1-998-384-0232",
    "81935",
    "Cuba",
    "2019-01-18 09:13:49"
  );

INSERT INTO `employees` (
  `empID`,
  `first_name`,
  `last_name`,
  `email`,
  `address`,
  `phone`,
  `salary`,
  `country`,
  `created`
)
VALUES
  (
    51,
    "Raymond",
    "Clarke",
    "elit@tempus.ca",
    "Ap #638-903 Mauris, Av.",
    "1-741-689-9248",
    "76865",
    "Comoros",
    "2020-02-18 13:38:04"
  ),
  (
    52,
    "Samson",
    "Hedda",
    "justo.nec.ante@Aliquam.ca",
    "8299 Augue Ave",
    "972-7577",
    "32101",
    "Congo (Brazzaville)",
    "2019-10-18 10:55:38"
  ),
  (
    53,
    "Alvin",
    "Amy",
    "posuere.vulputate.lacus@id.edu",
    "P.O. Box 401, 3694 In Rd.",
    "888-7281",
    "10908",
    "United Kingdom (Great Britain)",
    "2020-02-22 16:19:08"
  ),
  (
    54,
    "Carson",
    "Yoshi",
    "Cras.dictum.ultricies@nisimagna.org",
    "104-639 Mollis. Rd.",
    "1-311-680-8576",
    "38528",
    "Iraq",
    "2018-12-10 15:04:45"
  ),
  (
    55,
    "Callum",
    "Kelsey",
    "ut.pharetra@lectus.com",
    "3186 Blandit Rd.",
    "695-4282",
    "84339",
    "Venezuela",
    "2018-04-22 01:42:35"
  ),
  (
    56,
    "Cody",
    "Raja",
    "Mauris@urnaUt.edu",
    "3508 Metus Rd.",
    "602-6260",
    "93085",
    "Norway",
    "2019-11-03 02:37:29"
  ),
  (
    57,
    "Shaeleigh",
    "Lane",
    "eu.placerat.eget@turpisNulla.net",
    "P.O. Box 678, 7291 Accumsan St.",
    "536-7424",
    "52887",
    "Turks and Caicos Islands",
    "2018-07-11 08:49:49"
  ),
  (
    58,
    "Gareth",
    "Hayes",
    "lorem.semper@maurisblanditmattis.edu",
    "881-7853 Hendrerit St.",
    "370-8361",
    "71448",
    "China",
    "2018-12-07 06:09:23"
  ),
  (
    59,
    "Olympia",
    "Harper",
    "Mauris@mollislectus.ca",
    "Ap #692-7047 Mollis. Av.",
    "708-2618",
    "58395",
    "Saint Vincent and The Grenadines",
    "2018-12-09 21:25:48"
  ),
  (
    60,
    "Sharon",
    "Blake",
    "interdum.Curabitur.dictum@amet.net",
    "Ap #774-5023 Eleifend, Avenue",
    "1-305-844-8169",
    "51534",
    "Switzerland",
    "2018-06-05 00:13:56"
  );

INSERT INTO `employees` (
  `empID`,
  `first_name`,
  `last_name`,
  `email`,
  `address`,
  `phone`,
  `salary`,
  `country`,
  `created`
)
VALUES
  (
    61,
    "Felix",
    "Chastity",
    "Mauris@mollislectus.ca",
    "Ap #578-6002 Mauris Ave",
    "208-1854",
    "36739",
    "Saint Barthélemy",
    "2018-12-07 18:14:52"
  ),
  (
    62,
    "Alfonso",
    "Ezra",
    "ante.blandit.viverra@egetmetus.net",
    "683-4780 Cras Road",
    "470-9486",
    "98729",
    "Portugal",
    "2018-09-26 01:44:52"
  ),
  (
    63,
    "Edan",
    "Briar",
    "ipsum.nunc.id@AeneanmassaInteger.co.uk",
    "853-5638 Volutpat Street",
    "1-113-213-3134",
    "77658",
    "Portugal",
    "2019-05-01 08:41:01"
  ),
  (
    64,
    "Inga",
    "Hammett",
    "vestibulum.nec.euismod@magna.net",
    "Ap #531-6182 Auctor. St.",
    "1-459-726-3006",
    "23752",
    "Haiti",
    "2018-12-26 02:10:36"
  ),
  (
    65,
    "Luke",
    "Ivor",
    "dictum.eu@semperetlacinia.ca",
    "P.O. Box 906, 2796 Congue Street",
    "946-9371",
    "95071",
    "Andorra",
    "2019-10-26 04:48:01"
  ),
  (
    66,
    "Pamela",
    "Rahim",
    "Nullam.enim@parturientmontes.ca",
    "P.O. Box 624, 7560 Ipsum. Av.",
    "1-513-614-3028",
    "63348",
    "Guatemala",
    "2019-08-27 10:40:09"
  ),
  (
    67,
    "Zane",
    "Amity",
    "tristique.ac.eleifend@duiCras.edu",
    "P.O. Box 933, 9893 Ullamcorper. Rd.",
    "1-112-484-1990",
    "86330",
    "Peru",
    "2020-01-04 01:54:29"
  ),
  (
    68,
    "Gil",
    "Mohammad",
    "Morbi.metus@Loremipsumdolor.org",
    "8819 Proin Ave",
    "298-5143",
    "18472",
    "Korea, North",
    "2019-06-25 06:11:41"
  ),
  (
    69,
    "Edan",
    "Sawyer",
    "ornare@dolor.net",
    "7009 Lobortis Avenue",
    "993-0451",
    "54893",
    "Åland Islands",
    "2018-12-08 12:52:23"
  ),
  (
    70,
    "Ebony",
    "Nehru",
    "Donec@CuraeDonectincidunt.co.uk",
    "P.O. Box 380, 695 Nam Rd.",
    "787-9773",
    "17744",
    "Liechtenstein",
    "2018-07-30 01:34:55"
  );

INSERT INTO `employees` (
  `empID`,
  `first_name`,
  `last_name`,
  `email`,
  `address`,
  `phone`,
  `salary`,
  `country`,
  `created`
)
VALUES
  (
    71,
    "Constance",
    "Reagan",
    "a.scelerisque@id.com",
    "912 Nec, St.",
    "809-1565",
    "48512",
    "Georgia",
    "2019-11-04 21:46:39"
  ),
  (
    72,
    "Yoshio",
    "Pearl",
    "euismod@venenatislacusEtiam.edu",
    "7512 Eu, St.",
    "472-2013",
    "64127",
    "Fiji",
    "2019-09-02 16:38:38"
  ),
  (
    73,
    "Mannix",
    "Tiger",
    "est@aliquetliberoInteger.ca",
    "Ap #283-1057 Lobortis Avenue",
    "303-8806",
    "17906",
    "Lebanon",
    "2019-05-08 08:47:19"
  ),
  (
    74,
    "Aurelia",
    "Jelani",
    "elit.Nulla.facilisi@Phasellusdapibus.edu",
    "720-118 Amet Av.",
    "1-838-207-3858",
    "94898",
    "China",
    "2019-12-27 00:08:29"
  ),
  (
    75,
    "Tana",
    "Matthew",
    "dignissim.magna@eratvolutpat.com",
    "851-9292 Risus. St.",
    "1-798-689-6201",
    "41179",
    "Guyana",
    "2018-05-23 08:29:54"
  ),
  (
    76,
    "Arsenio",
    "Brynn",
    "volutpat@ultricesposuerecubilia.net",
    "Ap #475-5080 Eget Road",
    "1-498-330-0828",
    "13444",
    "Estonia",
    "2020-03-17 14:18:16"
  ),
  (
    77,
    "Plato",
    "Kamal",
    "semper.dui.lectus@quisdiamPellentesque.ca",
    "770-1518 Suspendisse Road",
    "1-132-453-8176",
    "59942",
    "Gibraltar",
    "2018-10-05 20:53:40"
  ),
  (
    78,
    "Paul",
    "Rinah",
    "lorem.ipsum.sodales@sodales.com",
    "873-7875 Dolor. Road",
    "1-762-407-5492",
    "95920",
    "Libya",
    "2018-07-11 12:06:07"
  ),
  (
    79,
    "Hamilton",
    "Ulysses",
    "Curabitur.dictum.Phasellus@facilisis.edu",
    "946-7938 Condimentum Street",
    "239-9965",
    "95417",
    "Brunei",
    "2018-07-09 08:29:53"
  ),
  (
    80,
    "Nora",
    "Tallulah",
    "aliquet.nec.imperdiet@nislarcu.com",
    "5142 Nulla. Rd.",
    "1-219-192-3872",
    "33589",
    "Rwanda",
    "2019-03-15 06:37:19"
  );

INSERT INTO `employees` (
  `empID`,
  `first_name`,
  `last_name`,
  `email`,
  `address`,
  `phone`,
  `salary`,
  `country`,
  `created`
)
VALUES
  (
    81,
    "Quail",
    "Virginia",
    "dictum.augue@egestas.co.uk",
    "7683 Donec Rd.",
    "381-0375",
    "59489",
    "Malaysia",
    "2018-08-19 10:45:10"
  ),
  (
    82,
    "Preston",
    "Kieran",
    "facilisis.facilisis@atarcuVestibulum.co.uk",
    "864-887 Consectetuer Rd.",
    "1-329-644-8859",
    "19889",
    "Puerto Rico",
    "2019-06-20 21:24:56"
  ),
  (
    83,
    "Molly",
    "Rylee",
    "dolor.Nulla@euturpis.edu",
    "106-9869 Erat Rd.",
    "600-0630",
    "89895",
    "France",
    "2019-09-05 12:38:15"
  ),
  (
    84,
    "Yael",
    "Stone",
    "lorem.auctor@non.edu",
    "7658 Commodo Road",
    "1-384-126-3387",
    "39721",
    "Lesotho",
    "2019-04-16 22:15:46"
  ),
  (
    85,
    "Kareem",
    "Xandra",
    "laoreet.libero@eleifendCrassed.ca",
    "P.O. Box 499, 1353 In St.",
    "992-4821",
    "70322",
    "Slovakia",
    "2020-02-08 07:43:33"
  ),
  (
    86,
    "Mason",
    "Adrian",
    "parturient@ipsumnon.co.uk",
    "P.O. Box 275, 6737 Elit, St.",
    "350-6453",
    "84165",
    "Falkland Islands",
    "2019-09-01 14:15:14"
  ),
  (
    87,
    "Walter",
    "Martina",
    "libero.mauris@DuisgravidaPraesent.org",
    "642-2143 Dolor. St.",
    "1-634-846-3437",
    "45846",
    "Pitcairn Islands",
    "2019-12-31 05:02:11"
  ),
  (
    88,
    "Quin",
    "Julie",
    "malesuada.fames.ac@ami.ca",
    "365-7705 Dui. Street",
    "535-3231",
    "66771",
    "Isle of Man",
    "2019-06-24 06:07:39"
  ),
  (
    89,
    "Kaye",
    "Mona",
    "egestas.urna@Crasconvallis.org",
    "P.O. Box 296, 5578 Nam St.",
    "622-6101",
    "75026",
    "Kiribati",
    "2019-11-07 19:40:30"
  ),
  (
    90,
    "Flynn",
    "Nicholas",
    "vitae.posuere.at@arcuvelquam.edu",
    "P.O. Box 154, 9324 A, St.",
    "326-6417",
    "15117",
    "Libya",
    "2018-08-24 07:18:40"
  );

INSERT INTO `employees` (
  `empID`,
  `first_name`,
  `last_name`,
  `email`,
  `address`,
  `phone`,
  `salary`,
  `country`,
  `created`
)
VALUES
  (
    91,
    "Georgia",
    "Christopher",
    "Lorem.ipsum.dolor@iaculis.edu",
    "407-963 Ac, Av.",
    "954-4423",
    "72489",
    "Mozambique",
    "2019-06-12 07:03:25"
  ),
  (
    92,
    "Keely",
    "Nina",
    "Nam.tempor.diam@eratVivamus.com",
    "4714 Libero. Street",
    "980-6295",
    "47185",
    "Tonga",
    "2019-10-03 08:08:43"
  ),
  (
    93,
    "Jescie",
    "Cain",
    "Donec@In.ca",
    "Ap #701-2504 Commodo Road",
    "1-495-788-2014",
    "66241",
    "Serbia",
    "2018-09-07 21:24:18"
  ),
  (
    94,
    "Ray",
    "Bethany",
    "faucibus.Morbi.vehicula@leoCrasvehicula.edu",
    "P.O. Box 877, 3368 Donec Rd.",
    "416-1001",
    "32052",
    "Bonaire, Sint Eustatius and Saba",
    "2019-02-10 02:23:41"
  ),
  (
    95,
    "Nolan",
    "Beverly",
    "quis.diam@fermentum.edu",
    "Ap #249-9387 Netus St.",
    "810-6483",
    "95327",
    "Cyprus",
    "2019-05-07 18:01:19"
  ),
  (
    96,
    "Eaton",
    "Fitzgerald",
    "aliquet.sem@nec.ca",
    "636-9052 Convallis Street",
    "1-777-959-7609",
    "37434",
    "Paraguay",
    "2020-01-22 19:54:16"
  ),
  (
    97,
    "Leo",
    "Raya",
    "Pellentesque.ut@nec.org",
    "Ap #703-608 In Rd.",
    "531-5012",
    "46006",
    "Belarus",
    "2019-12-24 00:56:52"
  ),
  (
    98,
    "Leonard",
    "Derek",
    "tellus.Aenean@posuerecubilia.net",
    "634-2888 Non, St.",
    "988-8408",
    "99103",
    "Costa Rica",
    "2019-09-29 20:18:20"
  ),
  (
    99,
    "Hammett",
    "Kasper",
    "velit.Sed@eget.net",
    "Ap #482-8475 Donec Ave",
    "1-866-224-0753",
    "79185",
    "Uruguay",
    "2019-11-24 03:31:06"
  ),
  (
    100,
    "Lacota",
    "Iris",
    "Nullam.suscipit.est@etrutrum.co.uk",
    "Ap #110-239 Aliquam Ave",
    "412-1205",
    "13256",
    "Sudan",
    "2018-11-06 08:40:53"
  );

SELECT
  *
FROM
  employees;

SELECT
  2+3 * 3;

SELECT
  first_name,
  salary,
  created
FROM
  employees;

SELECT
  COUNT(DISTINCT YEAR(created))
FROM
  employees;

SELECT
  *
FROM
  employees
WHERE first_name = 'Maia';

SELECT
  first_name,
  salary,
  YEAR(created)
FROM
  employees
WHERE first_name = 'Maia';

SELECT
  *
FROM
  employees
WHERE id >= 50;

SELECT
  *
FROM
  employees
WHERE id != 10;

SELECT
  *
FROM
  employees
WHERE id != 10
  OR id = 2;

SELECT
  *
FROM
  employees
WHERE id <= 10
  AND salary > 10000;

SELECT
  *
FROM
  employees
WHERE YEAR(created) = 2018;

SELECT
  COUNT(*)
FROM
  employees
WHERE YEAR(created) = 2018;

SELECT
  first_name AS 'First name',
  last_name AS 'Last name'
FROM
  employees e;

SELECT
  *
FROM
  employees
LIMIT 10 OFFSET 24;

DELETE
FROM
  employees
WHERE id = 1
  OR id = 2;

SELECT
  COUNT(*)
FROM
  employees;

SELECT
  COUNT(first_name)
FROM
  employees;

SELECT
  COUNT(*)
FROM
  employees
WHERE id BETWEEN 10
  AND 13;

SELECT
  first_name AS 'First name',
  salary
FROM
  employees
WHERE id BETWEEN 10
  AND 13;

SELECT
  first_name,
  salary,
  country
FROM
  employees
WHERE ID IN (1, 29, 33);

SELECT
  *
FROM
  employees
ORDER BY id ASC;

SELECT
  *
FROM
  employees
ORDER BY id DESC;

SELECT
  *
FROM
  employees
ORDER BY MONTH(created) DESC;

SELECT
  id,
  first_name,
  country,
  salary
FROM
  employees
WHERE country IN ('India', 'Iraq', 'Brazil')
ORDER BY country ASC,
  first_name DESC;

SELECT
  MIN(salary)
FROM
  employees;

SELECT
  MAX(salary)
FROM
  employees;

SELECT
  SUM(salary)
FROM
  employees;

SELECT
  AVG(salary)
FROM
  employees;

SELECT
  MIN(salary) AS 'Minimum salary',
  MAX(salary) AS 'Maximum salary',
  SUM(salary) AS 'Total sum salary',
  AVG(salary) AS 'Average salary'
FROM
  employees;

SELECT
  COUNT(*) AS 'Total employees',
  YEAR(created) AS 'Year'
FROM
  employees
GROUP BY YEAR(created)
ORDER BY YEAR(created) DESC;

SELECT
  SUM(salary) AS 'total_salary',
  YEAR(created) AS 'salary_year'
FROM
  employees
GROUP BY salary_year WITH ROLLUP;

SELECT
  SUM(salary) AS 'total_salary',
  YEAR(created) AS 'salary_year',
  country
FROM
  employees
GROUP BY salary_year,
  country
ORDER BY salary_year DESC;

SELECT
  SUM(salary) AS 'salary_sum',
  YEAR(created) AS 'salary_year'
FROM
  employees
GROUP BY salary_year
HAVING salary_sum > 2000000;

SELECT 
	id,
	SUM(salary) AS 'total_salary'
FROM employees
GROUP BY id
HAVING total_salary > 80000;

USE gyakorlas;
CREATE TABLE IF NOT EXISTS felh (
  id INT (11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  users VARCHAR (50) NOT NULL,
  email VARCHAR (50) NOT NULL,
  phone INT (30) NULL 
);

INSERT INTO felh (users, email, phone)
VALUES
  (
    'Anna',
    'mail@gmail.com',
    '06701234567'
  ),
  (
    'Anita',
    'email@gmail.com',
    '06701234567'
  ),
  (
    'Balázs',
    'mail@gmail.hu',
    '06701234467'
  ),
  (
    'Freni',
    'mail@gmail.com',
    '06701564567'
  );

SELECT 
	id, 
	users, 
	email 
FROM felh 
WHERE id =1;

SELECT 
	id, 
	users, 
	email 
FROM felh 
ORDER BY id DESC;

UPDATE users 
SET full_name = 'Alex',
	 phone = 336-4569
WHERE id = 2;

SELECT * FROM users;

DELETE FROM users WHERE id BETWEEN 1 AND 5;

DELETE FROM users WHERE id IN (9,10,11);

USE gyakorlas;
CREATE TABLE products (
	currency CHAR(3),
	product VARCHAR(10)
);

INSERT INTO products (currency, product) 
VALUES ('USD', 'Apple');
	 
SELECT * FROM products;
	
CREATE TABLE currency (
	amount DECIMAL(5,2)
);	
	
INSERT INTO currency (amount)
VALUES (505.030);
	
SELECT * FROM currency;

USE gyakorlas;
CREATE TABLE birthdays (
	birthday DATE,
	birthtime TIME,
	birthdt DATETIME
);

INSERT INTO birthdays (birthday, birthtime, birthdt)
VALUES ('1998-03-02','10:35:20','1997-03-02 13:35:20'),
		 ('1987-03-02','10:35:20','1997-03-02 10:35:20'),
		 ('1935-03-02','10:35:20','1997-03-02 10:26:20'),
		 ('1945-03-02','10:35:20','1997-03-02 10:35:20'),
		 ('2000-03-02','10:35:20','1997-03-02 10:35:20');

SELECT * FROM birthdays;

CURDATE();
CURTIME();
NOW();

INSERT INTO birthdays (birthday, birthtime, birthdt)
VALUES (CURDATE(),CURTIME(),NOW());

DAY();
DAYNAME();
DAYOFWEEK();
DAYOFYEAR();

MONTH();
MONTHNAME();

HOUR();
MINUTE();
SECOND();

YEAR;

SELECT birthday, 
		 DAY(birthday) AS 'Day'
FROM birthdays;

SELECT birthday, 
		 DAYNAME(birthday) AS 'Day'
FROM birthdays;

SELECT birthday, 
		 DAYOFWEEK(birthday) AS 'Day'
FROM birthdays;

SELECT birthday, 
		 DAYOFYEAR(birthday) AS 'Day'
FROM birthdays;

SELECT birthday, 
		 MONTH(birthday) AS 'Day'
FROM birthdays;

SELECT birthday, 
		 MONTHNAME(birthday) AS 'Day'
FROM birthdays;

SELECT birthday, 
		 DAYOFMONTH(birthday) AS 'Day'
FROM birthdays;

SELECT birthdt, 
		 YEAR(birthdt) AS 'Day'
FROM birthdays;

SELECT birthtime,
		 HOUR(birthtime) AS 'Birthour'
FROM birthdays;

SELECT birthtime,
		 MINUTE(birthtime) AS 'Birthour'
FROM birthdays;

SELECT birthtime,
		 SECOND(birthtime) AS 'Birthour'
FROM birthdays;

SELECT birthdt, 
		 WEEK(birthdt) AS 'Day'
FROM birthdays;

DATEDIFF();
DATE_ADD();

SELECT birthday AS 'BirthDay',
		 DATEDIFF(NOW(), birthday) AS 'TotalDays',
		 YEAR(NOW()) AS 'CurrentYear'
FROM birthdays;

SELECT birthdt,
		 DATE_ADD(birthdt, INTERVAL 2 YEAR)		 
FROM birthdays;

CREATE TABLE posts ( 
	body TEXT,
	created_at TIMESTAMP DEFAULT NOW(),
	updated_at TIMESTAMP DEFAULT NOW() ON UPDATE CURRENT_TIMESTAMP
);

INSERT INTO gyakorlas.posts (body)
VALUES ('Nice post'),
		 ('Great post'),
		 ('Weather is hot');

SELECT * FROM posts;

UPDATE posts SET body = 'Great and nice post' WHERE body = 'Nice post';

SELECT * FROM birthdays;

SELECT birthdt,
		 DATE_FORMAT(birthdt, '%b') AS 'Formatted'
FROM birthdays;

SELECT SUBSTR('Hello World', 1, 6);

SELECT SUBSTR(first_name, 1,3) FROM employees;

SELECT CONCAT('Alex','J', 18) AS 'FullInfo';

SELECT CONCAT(first_name,' ', last_name) AS 'FullInfo'
FROM employees;

SELECT CONCAT_WS('-', first_name, last_name, country) AS 'FullInfo'
FROM employees;

SELECT ASCII('?');

SELECT BIN(34);

SELECT first_name, 
	    salary, 
		 BIN(salary) AS 'BinSalary'
FROM employees
WHERE id = 13;

SELECT LENGTH(TRIM('         Hello World          ')) AS 'Col';

SELECT TRIM('           Hello World          ');

SELECT LENGTH('Hello World333');

SELECT LENGTH(first_name),
		 first_name
FROM employees;

SELECT UPPER('Hello World');
SELECT LOWER('HELLO WORLD');
SELECT LCASE('HELLO WorLD');
SELECT UCASE('hello world');

SELECT UPPER(first_name), 
		 LOWER(last_name)
FROM employees;

SELECT REVERSE('Hello World');

SELECT REVERSE(first_name),
		 first_name
FROM employees;

SELECT REVERSE(salary),
		 salary
FROM employees;

SELECT REPLACE('Hello World', 'l', 's');

SELECT first_name,
		 REPLACE(salary, 1, 100)
FROM employees;

SELECT STRCMP('String1', 'String2');

SELECT STRCMP(first_name, first_name)
FROM employees
WHERE id = 6;

SELECT STRCMP('alex', 'alex')
FROM employees
WHERE id = 25;

SELECT RAND();
SELECT RAND()*100;
SELECT RAND()*10;

SELECT ROUND(122.22, 1);

CREATE TABLE salary (
 id INT PRIMARY KEY AUTO_INCREMENT, 
 salary DECIMAL(15,2),
 salary_date DATE,
 empId INT
);

INSERT INTO gyakorlas.salary (salary, salary_date, empId)
VALUES
  (
    '800.50',
    NOW(),
    '5'
  ),
  (
    '600.50',
    NOW(),
    '6'
  ),
  (
    '600.50',
    NOW(),
    '5'
  ),
  (
   '750.50',
    NOW(),
    '6'
  );
   

SELECT * FROM employees, salary;

SELECT * FROM employees CROSS JOIN salary;

SELECT e.id, e.first_name, e.last_name, e.email, s.salary, s.empId 
FROM employees e
INNER JOIN salary s ON s.empId=e.id;

SELECT e.id, e.first_name, e.last_name, e.email,IFNULL(s.salary, 'hiányzó adat'), IFNULL(s.empId, 'hiányzó adat') 
FROM employees e
LEFT JOIN salary s ON s.empId=e.id;

SELECT e.id, e.first_name, e.last_name, e.email, SUM(IFNULL(s.salary, 'hiányzó adat')), IFNULL(s.empId, 'hiányzó adat') 
FROM employees e
LEFT JOIN salary s ON s.empId=e.id
GROUP BY e.id
HAVING id IN (4,5);



CREATE DATABASE IF NOT EXISTS twitter;

DROP DATABASE IF EXISTS twitter;

CREATE TABLE users (
	id INT AUTO_INCREMENT PRIMARY KEY,
	user_name VARCHAR(50),
	created_at TIMESTAMP DEFAULT NOW()
);

DROP TABLE IF EXISTS users;

INSERT INTO twitter.users (user_name)
VALUES
  ('FReni'),
  ('BReni'),
  ('Ancsa');

CREATE TABLE tweets (
	id INT AUTO_INCREMENT PRIMARY KEY,
	body TEXT NOT NULL,
	user_id INT,
	created_at TIMESTAMP DEFAULT NOW(),
	FOREIGN KEY tweets(user_id) REFERENCES users(id) ON DELETE CASCADE   -- ha a user-t töröljük a hozzá tartozó tweete is törlődnek
);

DROP TABLE IF EXISTS tweets;

INSERT INTO twitter.tweets (body, user_id)
VALUES
  (
    'aaa',
    '3'
  ),
    (
    'bbb',
    '2'
  ),
    (
    'ccc',
    '2'
  ),
    (
    'ddd',
    '1'
  ),
    (
    'eee',
    '3'
  ),
    (
    'fff',
    '2'
  );

SELECT t.body, t.created_at, t.user_id, u.user_name
FROM tweets t
INNER JOIN users u ON u.id = t.user_id 
ORDER BY t.created_at DESC;

CREATE TABLE IF NOT EXISTS replies (
	id INT AUTO_INCREMENT PRIMARY KEY,
	body TEXT NOT NULL,
	tweets_id INT,
	user_id INT,
	created_at TIMESTAMP DEFAULT NOW(),
	FOREIGN KEY replies(user_id) REFERENCES users(id) ON DELETE CASCADE   -- ha a user-t töröljük a hozzá tartozó tweete is törlődnek
	FOREIGN KEY replies(tweets_id) REFERENCES tweets(id) ON DELETE CASCADE);

DROP TABLE IF EXISTS replies;
SELECT * FROM replies;

INSERT INTO twitter.replies (
  body,
  user_id,
  tweets_id,
)
VALUES
  (
    'xxx',
    '1',
    '2'
  )
   (
    'zzz',
    '2',
    '1'
  )
   (
    'yyy',
    '3',
    '3'
  );

SELECT replies.body 'Replies', replies.created_at 'Date', users.user_name 'UserName' , tweets.body 'Tweets'
FROM replies
LEFT JOIN users ON replies.user_id = users.id
LEFT JOIN tweets ON tweets.id = replies.tweets_id;

SELECT tweets.body AS 'Tweet', replies.body AS 'Reply', users.user_name AS 'User'
FROM tweets
LEFT JOIN replies ON replies.tweets_id = tweets.id
LEFT JOIN users ON users.id = tweets.user_id
ORDER BY tweets.body ASC;

CREATE TABLE IF NOT EXISTS likes(
	user_id INT,
	tweet_id INT,
	created_at TIMESTAMP DEFAULT NOW()
	FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
     FOREIGN KEY (`tweet_id`) REFERENCES `tweets` (`id`) ON DELETE CASCADE,
     PRIMARY KEY(user_id, tweet_id)
	);

DROP TABLE IF EXISTS likes;

INSERT INTO twitter.likes (user_id, tweet_id)
VALUES
  (
    '1',
    '2'
  ), (
    '3',
    '2'
  ), (
    '2',
    '2'
  );

SELECT * FROM likes;

SELECT COUNT(likes.tweet_id) AS 'Likes', tweets.body, tweets.id
FROM likes
LEFT JOIN tweets ON likes.tweet_id = tweets.id
GROUP BY likes.tweet_id;

TRUNCATE likes;
TRUNCATE tweeta;
TRUNCATE replies;
TRUNCATE users;

SELECT COUNT(*) FROM likes;

CREATE DATABASE contacts;
USE contacts;

CREATE TABLE contacts (
id INT(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
nev VARCHAR(30) NOT NULL,
email VARCHAR(30) NOT NULL,
phone INT(30) NOT NULL
);

SELECT * FROM contacts.contacts;

INSERT INTO contacts.contacts (nev, email, phone)
VALUES
  ('From Workbench', 'workbench@mail.com', '123123');

