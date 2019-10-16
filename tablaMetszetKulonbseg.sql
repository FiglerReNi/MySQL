
-- metszet
SELECT figyelt_telefonok.imei
FROM figyelt_telefonok
WHERE figyelt_telefonok.imei IN 
(SELECT temp.imei
FROM temp);

-- különbség
SELECT * FROM temp WHERE temp.imei NOT IN (SELECT tabla.imei 
FROM ((SELECT figyelt_telefonok.imei
FROM figyelt_telefonok
WHERE figyelt_telefonok.imei IN 
(SELECT temp.imei
FROM temp)) tabla));
