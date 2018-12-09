--liquibase formatted sql

--changeset createLogradouro
--comment: Criando tabela Logradouro

CREATE TABLE IF NOT EXISTS `lab04`.`Logradouro` (
  `log_cep` INT NOT NULL,
  `log_nome` VARCHAR(100) NOT NULL,
  `log_bairro` VARCHAR(45) NOT NULL,
  `log_cidade` VARCHAR(50) NOT NULL,
  `log_estado` VARCHAR(30) NOT NULL,
  `log_sigla_estado` CHAR(2) NOT NULL,
  PRIMARY KEY (`log_cep`))
ENGINE = InnoDB;

--rollback DROP TABLE lab04.Logradouro;