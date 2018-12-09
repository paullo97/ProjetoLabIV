--liquibase formatted sql

--changeset createItensvenda
--comment: Criando tabela Itens_venda

CREATE TABLE IF NOT EXISTS `lab04`.`Itens_venda` (
  `Venda_ven_id` INT NOT NULL,
  `Estoque_Produto_pro_id` INT NOT NULL,
  `Estoque_Fornecedor_for_cnpj` INT NOT NULL,
  `itv_qtd` INT NOT NULL,
  PRIMARY KEY (`Venda_ven_id`, `Estoque_Produto_pro_id`, `Estoque_Fornecedor_for_cnpj`),
  INDEX `fk_Venda_has_Estoque_Estoque1_idx` (`Estoque_Produto_pro_id` ASC, `Estoque_Fornecedor_for_cnpj` ASC) VISIBLE,
  INDEX `fk_Venda_has_Estoque_Venda1_idx` (`Venda_ven_id` ASC) VISIBLE,
  CONSTRAINT `fk_Venda_has_Estoque_Venda1`
    FOREIGN KEY (`Venda_ven_id`)
    REFERENCES `mydb`.`Venda` (`ven_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Venda_has_Estoque_Estoque1`
    FOREIGN KEY (`Estoque_Produto_pro_id` , `Estoque_Fornecedor_for_cnpj`)
    REFERENCES `mydb`.`Estoque` (`Produto_pro_id` , `Fornecedor_for_cnpj`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


--rollback DROP TABLE lab04.Itens_venda;