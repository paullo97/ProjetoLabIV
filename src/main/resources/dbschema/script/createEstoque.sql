--liquibase formatted sql

--changeset createEstoque
--comment: Criando tabela Estoque

CREATE TABLE IF NOT EXISTS `lab04`.`Estoque` (
  `Produto_pro_id` INT NOT NULL,
  `Fornecedor_for_cnpj` INT NOT NULL,
  `est_saldo_atual` INT NOT NULL,
  `est_estoque_minimo` INT NOT NULL,
  PRIMARY KEY (`Produto_pro_id`, `Fornecedor_for_cnpj`),
  INDEX `fk_Estoque_Fornecedor1_idx` (`Fornecedor_for_cnpj` ASC) VISIBLE,
  CONSTRAINT `fk_Estoque_Produto1`
    FOREIGN KEY (`Produto_pro_id`)
    REFERENCES `mydb`.`Produto` (`pro_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Estoque_Fornecedor1`
    FOREIGN KEY (`Fornecedor_for_cnpj`)
    REFERENCES `mydb`.`Fornecedor` (`for_cnpj`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

--rollback DROP TABLE lab04.Estoque;