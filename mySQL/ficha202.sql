/* NOME: Paulo Godinho */
--***--
SHOW DATABASES;
-- 0 --
USE ficha201;
-- 1 --
SHOW TABLES;
ALTER TABLE `AlunosD` RENAME TO `AlunosZ`;
SHOW TABLES;
-- 2 --
DESCRIBE AlunosA;
ALTER TABLE `AlunosA` ADD CodPostal CHAR(8);
DESCRIBE AlunosA;
-- 3 --
ALTER TABLE `AlunosA` MODIFY CodPostal CHAR(4);
DESCRIBE AlunosA;
-- 4 --
ALTER TABLE `AlunosA` CHANGE CodPostal CodigoPostal CHAR(4);
DESCRIBE AlunosA;
-- 5 --
ALTER TABLE `AlunosA` DROP CodigoPostal;
DESCRIBE AlunosA;
-- 6 --
ALTER TABLE `AlunosA` DROP HoraEntrada;
DESCRIBE AlunosA;

