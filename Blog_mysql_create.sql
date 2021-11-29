CREATE TABLE `Tb_Temas` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`descrição` varchar(255) NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `Tb_Jogos` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`genêro` varchar(255) NOT NULL,
	`nome` varchar(255) NOT NULL,
	`fabricante` varchar(255) NOT NULL,
	`preço` varchar(255) NOT NULL,
	`memoria` bigint(255) NOT NULL,
	`id_tema` bigint(255) NOT NULL,
	`id_usuario` bigint(255) NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `Tb_Usuario` (
	`id` bigint(255) NOT NULL AUTO_INCREMENT,
	`nome` varchar(255) NOT NULL,
	`senha` varchar(255) NOT NULL,
	`nickname` varchar(255) NOT NULL,
	`idade` DATE(255) NOT NULL,
	PRIMARY KEY (`id`)
);

ALTER TABLE `Tb_Jogos` ADD CONSTRAINT `Tb_Jogos_fk0` FOREIGN KEY (`id_tema`) REFERENCES `Tb_Temas`(`id`);

ALTER TABLE `Tb_Jogos` ADD CONSTRAINT `Tb_Jogos_fk1` FOREIGN KEY (`id_usuario`) REFERENCES `Tb_Usuario`(`id`);




