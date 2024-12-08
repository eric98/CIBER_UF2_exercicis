-- a) Extreure el nombre total d'alumnes (comptar-los).
SELECT COUNT(*) AS 'Nombre total d\'alumnes' FROM alumnes;

-- b) Extreure el nombre total d'alumnes matriculats en l'any acadèmic '2022'.
SELECT COUNT(*) AS 'Nombre total d\'alumnes matriculats durant el 2022'
	 FROM matriculacions WHERE Any_Academic IN (20212022, 20222023);

-- c) Extreure els ID dels professors amb NIF que comença amb '4'.
SELECT * FROM professors WHERE NIF_P LIKE '4%';

-- d) Extreure el nom i telèfon dels professors 
--    que tenen telèfon acabat en '9'
SELECT * FROM professors WHERE Telefon LIKE '%9';

-- e) Extreure el num_matricula, nom i telefon dels alumnes 
--    que han nascut entre el 1995 i el 2005.
SELECT NumMatricula, Nom, Telefon FROM alumnes
	 WHERE YEAR(DataNaixement) BETWEEN 1995 AND 2005;

-- f) Extreure el nom i el telèfon dels professors que imparteixen alguna assignatura.
SELECT Nom, Telefon FROM professors
  WHERE ID_P IN (SELECT ID_Professor FROM assignatures);

-- g) Extreure el nom i any acadèmic de les assignatures en què està matriculat algun alumne.
-- 	# Versió SQL1
-- SELECT Nom, Any_Academic FROM assignatures, matriculacions WHERE assignatures.Codi = matriculacions.Codi_Assignatura AND NumMatricula_Alumne = 5061;

-- 	# Versió a partir d'SQL2 (amb JOINs)
SELECT Nom, Any_Academic FROM assignatures JOIN matriculacions
	ON assignatures.Codi = matriculacions.Codi_Assignatura AND NumMatricula_Alumne = 5061;

-- h) Extreure el nom de cada assignatura i nombre total d'alumnes que estan matriculats en cadascuna.
--	# Versió d'SQL1
-- SELECT Nom AS Assignatura, COUNT(NumMatricula_Alumne) AS 'Alumnes matriculats' FROM matriculacions, assignatures WHERE assignatures.Codi = matriculacions.Codi_Assignatura GROUP BY Codi_Assignatura;

--	# Versió a partir d'SQL2 (amb JOINs)
SELECT Nom AS Assignatura, COUNT(NumMatricula_Alumne) AS 'Alumnes matriculats' FROM matriculacions JOIN assignatures
	ON assignatures.Codi = matriculacions.Codi_Assignatura GROUP BY Codi_Assignatura;
