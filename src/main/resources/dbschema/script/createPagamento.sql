--liquibase formatted sql

--changeset createPagamento
--comment: Criando tabela Pagamento

CREATE TABLE IF NOT EXISTS `lab04`.`Pagamento` (
  `pag_id` INT NOT NULL,
  `pag_descricao` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`pag_id`))
ENGINE = InnoDB;

--rollback DROP TABLE lab04.Pagamento;