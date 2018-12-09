--liquibase formatted sql

--changeset createVenda
--comment: Criando tabela Venda

CREATE TABLE IF NOT EXISTS `lab04`.`Venda` (
  `ven_id` INT NOT NULL,
  `ven_data` DATE NOT NULL,
  `Cliente_cli_cpf` INT NOT NULL,
  `Pagamento_pag_id` INT NOT NULL,
  `ven_parcelas` INT NOT NULL,
  PRIMARY KEY (`ven_id`),
  INDEX `fk_Venda_Cliente1_idx` (`Cliente_cli_cpf` ASC) VISIBLE,
  INDEX `fk_Venda_Pagamento1_idx` (`Pagamento_pag_id` ASC) VISIBLE,
  CONSTRAINT `fk_Venda_Cliente1`
    FOREIGN KEY (`Cliente_cli_cpf`)
    REFERENCES `mydb`.`Cliente` (`cli_cpf`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Venda_Pagamento1`
    FOREIGN KEY (`Pagamento_pag_id`)
    REFERENCES `mydb`.`Pagamento` (`pag_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


--rollback DROP TABLE lab04.Venda;