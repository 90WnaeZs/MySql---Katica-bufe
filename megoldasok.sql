/* 1. feladat:  */

/* 3. feladat:  */
ALTER TABLE kategoria ADD PRIMARY KEY (id);

/* 4. feladat:  */
ALTER TABLE forgalom ADD FOREIGN KEY (kategoriaId) REFERENCES kategoria(id);

/* 6. feladat:  */
INSERT INTO `kategoria`(`kategoriaNev`) VALUES ('Aj�nd�kt�rgyak');

/* 7. feladat:  */
UPDATE `forgalom` SET `termek`='Gyros t�l' WHERE `termek`='Gyrost�l';

/* 8. feladat:  */
SELECT `termek`, `vevo` FROM `forgalom` WHERE kiadva=0 ORDER BY vevo ASC;

/* 9. feladat:  */
SELECT kategoria.kategoriaNev AS 'Kateg�ria', SUM(forgalom.nettoar) AS 'Nett� bev�tel', SUM(forgalom.nettoar)/100*27 AS 'Forgalmi ad�'
FROM forgalom
JOIN kategoria
ON forgalom.kategoriaId=kategoria.id
GROUP BY forgalom.kategoriaId;