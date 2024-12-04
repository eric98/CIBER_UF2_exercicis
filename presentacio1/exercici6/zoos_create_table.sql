CREATE TABLE especies (
	id INT UNSIGNED AUTO_INCREMENT,
	nom_vulgar VARCHAR(15),
	nom_cientific VARCHAR(25),
	familia ENUM('Mamífer', 'Ovípars'),
	en_perill_extincio BOOL,
	PRIMARY KEY(id)
);

CREATE TABLE zoos (
	id INT UNSIGNED AUTO_INCREMENT,
	nom VARCHAR(20),
	ciutat VARCHAR(20),
	pais VARCHAR(20),
	pressupost INT UNSIGNED,
	grandaria INT UNSIGNED,
	PRIMARY KEY(id),
	CONSTRAINT zoo_grandaria CHECK (grandaria > 1000 AND grandaria < 1000000)
);

CREATE TABLE animals (
	id INT UNSIGNED AUTO_INCREMENT,
	num_identificacio MEDIUMINT UNSIGNED UNIQUE,
	sexe ENUM('home','dona','no_binari'),
	any_naixement DATE,
	pais_origen VARCHAR(20),
	continent VARCHAR(20),
	id_especie INT UNSIGNED,
	id_zoo INT UNSIGNED,
	PRIMARY KEY(id),
	CONSTRAINT fk_animals_especies FOREIGN KEY(id_especie) REFERENCES especies(id),
	CONSTRAINT fk_animals_zoos FOREIGN KEY(id_zoo) REFERENCES zoos(id)
);
