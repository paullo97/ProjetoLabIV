--liquibase formatted sql

--changeset createFornecedor
--comment: Criando tabela Fornecedor

CREATE TABLE IF NOT EXISTS `lab04`.`Fornecedor` (
  `for_cnpj` INT NOT NULL,
  `for_nome` VARCHAR(100) NOT NULL,
  `for_numero_logradouro` INT NOT NULL,
  `Logradouro_log_cep` INT NOT NULL,
  `for_tel_comercial` INT NULL,
  PRIMARY KEY (`for_cnpj`),
  INDEX `fk_Fornecedor_Logradouro1_idx` (`Logradouro_log_cep` ASC) VISIBLE,
  CONSTRAINT `fk_Fornecedor_Logradouro1`
    FOREIGN KEY (`Logradouro_log_cep`)
    REFERENCES `mydb`.`Logradouro` (`log_cep`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

--rollback DROP TABLE lab04.Fornecedor;