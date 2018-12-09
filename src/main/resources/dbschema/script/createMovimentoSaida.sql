--liquibase formatted sql

--changeset createMovimentoSaida
--comment: Criando tabela Movimento_Saida

CREATE TABLE IF NOT EXISTS `lab04`.`Movimento_Saida` (
  `Venda_ven_id` INT NOT NULL,
  `mov_data` DATE NOT NULL,
  INDEX `fk_Movimento_Saida_Venda1_idx` (`Venda_ven_id` ASC) VISIBLE,
  PRIMARY KEY (`Venda_ven_id`),
  CONSTRAINT `fk_Movimento_Saida_Venda1`
    FOREIGN KEY (`Venda_ven_id`)
    REFERENCES `mydb`.`Venda` (`ven_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


--rollback DROP TABLE lab04.Movimento_Saida;