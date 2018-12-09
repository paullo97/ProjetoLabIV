--liquibase formatted sql

--changeset createCategoria
--comment: Criando tabela Categoria

CREATE TABLE IF NOT EXISTS `lab04`.`Categoria` (
  `cat_id` INT NOT NULL,
  `cat_nome` VARCHAR(45) NULL,
  PRIMARY KEY (`cat_id`))
ENGINE = InnoDB;

--rollback DROP TABLE lab04.Categoria;