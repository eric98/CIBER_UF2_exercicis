CREATE TABLE IF NOT EXISTS professors (
	ID_P INT UNSIGNED PRIMARY KEY,
	NIF_P CHAR(9),
	Nom VARCHAR(20),
	Especialitat VARCHAR(15),
	Telefon INT UNSIGNED
);

CREATE TABLE IF NOT EXISTS assignatures (
	Codi INT UNSIGNED PRIMARY KEY,
	Nom VARCHAR(20),
	ID_Professor INT UNSIGNED,
	FOREIGN KEY (ID_Professor) REFERENCES professors(ID_P)
);

CREATE TABLE IF NOT EXISTS alumnes (
	NumMatricula MEDIUMINT UNSIGNED PRIMARY KEY,
	DataNaixement DATE,
	Nom VARCHAR(25),
	Telefon INT UNSIGNED
);

-- "Any_Academic" guarda informació sobre l'any s'està cursant.
-- Els 4 primers dígits és l'any de setembre a desembre
-- Els últims 4 dígits és l'any de gener a juny
-- Ex: 20242025; 20202021
CREATE TABLE IF NOT EXISTS matriculacions (
	NumMatricula_Alumne MEDIUMINT UNSIGNED,
	Codi_Assignatura INT UNSIGNED,
	Any_Academic INT UNSIGNED,
	FOREIGN KEY (NumMatricula_Alumne) REFERENCES alumnes(NumMatricula),
	FOREIGN KEY (Codi_Assignatura) REFERENCES assignatures(Codi),
	PRIMARY KEY (NumMatricula_Alumne, Codi_Assignatura)
);
