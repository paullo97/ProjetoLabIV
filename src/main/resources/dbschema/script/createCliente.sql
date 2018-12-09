--liquibase formatted sql

--changeset createCliente
--comment: Criando tabela Cliente

CREATE TABLE IF NOT EXISTS `lab04`.`Cliente` (
  `cli_cpf` INT NOT NULL,
  `cli_nome` VARCHAR(200) NOT NULL,
  `cli_num_residencia` INT NOT NULL,
  `Logradouro_log_cep` INT NOT NULL,
  `Contato_con_celular` INT NOT NULL,
  PRIMARY KEY (`cli_cpf`),
  INDEX `fk_Cliente_Logradouro_idx` (`Logradouro_log_cep` ASC) VISIBLE,
  INDEX `fk_Cliente_Contato1_idx` (`Contato_con_celular` ASC) VISIBLE,
  CONSTRAINT `fk_Cliente_Logradouro`
    FOREIGN KEY (`Logradouro_log_cep`)
    REFERENCES `mydb`.`Logradouro` (`log_cep`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Cliente_Contato1`
    FOREIGN KEY (`Contato_con_celular`)
    REFERENCES `mydb`.`Contato` (`con_celular`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

--rollback DROP TABLE lab04.Cliente;