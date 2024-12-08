-- a) Insereix un professor amb el nom de Joel Miller.
-- TODO: INSERT INTO professors VALUES ()

-- b) Insereix 2 assignatures que imparteixi Joel Miller.
-- TODO

-- c) Insereix un alumne nou amb el nom d’Ellie Williams.
-- TODO

-- d) Insereix 2 matriculacions que ha fet l’Ellie a les 2 assignatures que 
-- imparteix Joel Miller. Aquest punt s’ha de fer mitjançant 
-- transaccions.

--	 1. Desactivem l'AUTOCOMMIT per a iniciar una transacció
SET autocommit=0;

--	2. Insereixo 2 matriculacions
INSERT INTO matriculacions
	VALUES (1230, ...),
	(5987, ...);

--	3. Accepto la transacció
COMMIT WORK;

-- e) Actualitza el camp clau de l’Ellie Williams i esbrina si hi ha hagut 
-- algun canvi.

UPDATE alumnes SET NumMatricula = 4545 WHERE NumMatricula = (SELECT NumMatricula FROM alumnes WHERE Nom = 'Ellie Williams');


-- f) Esborra a l’Ellie de la taula d’alumnes i verifica si hi ha hagut 
-- canvis.
