--liquibase formatted sql

--changeset createProduto
--comment: Criando tabela Produto

CREATE TABLE IF NOT EXISTS `lab04`.`Produto` (
  `pro_id` INT NOT NULL,
  `pro_nome` VARCHAR(100) NOT NULL,
  `pro_valor_unitario` DOUBLE NOT NULL,
  `Categoria_cat_id` INT NOT NULL,
  PRIMARY KEY (`pro_id`),
  INDEX `fk_Produto_Categoria1_idx` (`Categoria_cat_id` ASC) VISIBLE,
  CONSTRAINT `fk_Produto_Categoria1`
    FOREIGN KEY (`Categoria_cat_id`)
    REFERENCES `mydb`.`Categoria` (`cat_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

--rollback DROP TABLE lab04.Produto;