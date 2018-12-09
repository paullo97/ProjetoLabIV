--liquibase formatted sql

--changeset createMovimentoEntrada
--comment: Criando tabela Movimento_Entrada

CREATE TABLE IF NOT EXISTS `lab04`.`Movimento_Entrada` (
  `Estoque_Produto_pro_id` INT NOT NULL,
  `Estoque_Fornecedor_for_cnpj` INT NOT NULL,
  `mov_data` DATE NOT NULL,
  PRIMARY KEY (`Estoque_Produto_pro_id`, `Estoque_Fornecedor_for_cnpj`),
  CONSTRAINT `fk_Movimento_Entrada_Estoque1`
    FOREIGN KEY (`Estoque_Produto_pro_id` , `Estoque_Fornecedor_for_cnpj`)
    REFERENCES `mydb`.`Estoque` (`Produto_pro_id` , `Fornecedor_for_cnpj`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


--rollback DROP TABLE lab04.Movimento_Entrada;