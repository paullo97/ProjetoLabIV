--liquibase formatted sql

--changeset createFuncionario
--comment: Criando tabela Funcionario

CREATE TABLE IF NOT EXISTS `lab04`.`Funcionario` (
  `Cliente_cli_cpf` INT NOT NULL,
  `fun_login` VARCHAR(50) NOT NULL,
  `fun_senha` VARCHAR(50) NOT NULL,
  `fun_perfil` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`Cliente_cli_cpf`),
  INDEX `fk_Funcionario_Cliente1_idx` (`Cliente_cli_cpf` ASC) VISIBLE,
  CONSTRAINT `fk_Funcionario_Cliente1`
    FOREIGN KEY (`Cliente_cli_cpf`)
    REFERENCES `mydb`.`Cliente` (`cli_cpf`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

--rollback DROP TABLE lab04.Funcionario;