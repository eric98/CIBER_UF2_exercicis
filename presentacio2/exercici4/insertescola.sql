INSERT INTO professors (ID_P, NIF_P, Nom, Especialitat, Telefon)
	VALUES (0,'12312312A', 'Edu', 'Programació', 666555444),
	(1, '45645645S', 'Marta', 'Bases de Dades', 444333222),
	(2, '98798798T', 'Claudio', 'Anglès', 159159159),
	(3, '36536536U', 'Eva', 'Física', 999888999),
	(4, '87987987M', 'David', 'Música', 123456789);

INSERT INTO assignatures (Codi, Nom, ID_Professor)
	VALUES (0, 'C++', 0),
	(1, 'SQL', 1),
	(2, 'Anglès', 2),
	(3, 'Partícules', 3),
	(4, 'Mecànica', 2);

INSERT INTO alumnes
	VALUES (4758, '2004-11-14', 'Josep', 555666555),
	(4759, '2004-11-14', 'Maria', 123123123),
	(4860, '2002-02-28', 'Raül', 567567567),
	(5061, '1992-01-17', 'Ariadna', 543543543),
	(6258, '2005-12-25', 'Jesús', 156156156);

INSERT INTO matriculacions
	VALUES (4759, 4, 20242025),
	(4860, 4, 20232024),
	(5061, 3, 20202021),
	(5061, 2, 20202021),
	(6258, 4, 20212022);
