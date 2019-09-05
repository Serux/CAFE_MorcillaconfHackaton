CREATE TABLE `Usuario` (
	`id_usuario` INT NOT NULL AUTO_INCREMENT,
	`Nombre` VARCHAR(30),
	`Password` VARCHAR(30),
	`fk_equipo` INT,
	PRIMARY KEY (`id_usuario`)
);

CREATE TABLE `Equipo` (
	`id_equipo` INT NOT NULL AUTO_INCREMENT,
	`NombreEquipo` VARCHAR(30),
	PRIMARY KEY (`id_equipo`)
);

CREATE TABLE `Commits` (
	`id_Commit` INT NOT NULL AUTO_INCREMENT,
	`fk_Usuario` INT,
	`horas_estimadas` INT,
	`horas_reales` INT,
	`Lineas_added` INT,
	`Lineas_deleted` INT,
	`Lineas_modified` INT,
	`ficheros_modificados` INT,
	`files_features` BLOB,
	PRIMARY KEY (`id_Commit`)
);

ALTER TABLE Commits
ADD FOREIGN KEY (fk_usuario) REFERENCES Usuario(id_usuario);
