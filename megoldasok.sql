/* 1. feladat:  */

/* 3. feladat:  */
ALTER TABLE kategoria ADD PRIMARY KEY (id);

/* 4. feladat:  */
ALTER TABLE forgalom ADD FOREIGN KEY (kategoriaId) REFERENCES kategoria(id);

/* 6. feladat:  */
INSERT INTO `kategoria`(`kategoriaNev`) VALUES ('Ajándéktárgyak');

/* 7. feladat:  */
UPDATE `forgalom` SET `termek`='Gyros tál' WHERE `termek`='Gyrostál';

/* 8. feladat:  */
SELECT `termek`, `vevo` FROM `forgalom` WHERE kiadva=0 ORDER BY vevo ASC;

/* 9. feladat:  */
SELECT kategoria.kategoriaNev AS 'Kategória', SUM(forgalom.nettoar) AS 'Nettó bevétel', SUM(forgalom.nettoar)/100*27 AS 'Forgalmi adó'
FROM forgalom
JOIN kategoria
ON forgalom.kategoriaId=kategoria.id
GROUP BY forgalom.kategoriaId;