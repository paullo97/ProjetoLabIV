--liquibase formatted sql

--changeset createContato
--comment: Criando tabela Contato

CREATE TABLE IF NOT EXISTS `lab04`.`Contato` (
  `con_celular` INT NOT NULL,
  `con_fixo` INT NULL,
  `con_comercial` INT NULL,
  PRIMARY KEY (`con_celular`))
ENGINE = InnoDB;

--rollback DROP TABLE lab04.Contato;