# ProjetoLabIV - Grupo 02

Integrantes 
  
* Ana Amorim  
* Magno dos Santos  
* Marcelo Augusto  
* Paulo Cesar
* Vinicius Oliveira  

# Comandos Github

* Clonagem 
  Para a clonagem do projeto para a sua maquina basta utilizar o comando 'git clone' seguido da URL do github. 
  
    git clone https://github.com/paullo97/ProjetoLabIV.git

* Checkout
  Para utilizar esse comenado basta seguir esse exemplo 
  
    git checkout [Nome_Branch]
    
    git checkout release 01
    
# Banco de Dados
  [prototipo] 
  
    create database Fatec; 
    
    CREATE TABLE IF NOT EXISTS `mydb`.`Logradouro` (
    `log_cep` INT NOT NULL,
    `log_nome` VARCHAR(100) NOT NULL,
    `log_bairro` VARCHAR(45) NOT NULL,
    `log_cidade` VARCHAR(50) NOT NULL,
    `log_estado` VARCHAR(30) NOT NULL,
    `log_sigla_estado` CHAR(2) NOT NULL,
     PRIMARY KEY (`log_cep`))

    CREATE TABLE IF NOT EXISTS `mydb`.`Cliente` (
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

    CREATE TABLE IF NOT EXISTS `mydb`.`Contato` (
    `con_celular` INT NOT NULL,
    `con_fixo` INT NULL,
    `con_comercial` INT NULL,
    PRIMARY KEY (`con_celular`))

    CREATE TABLE IF NOT EXISTS `mydb`.`Funcionario` (
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

    CREATE TABLE IF NOT EXISTS `mydb`.`Movimento_Saida` (
    `Venda_ven_id` INT NOT NULL,
    `mov_data` DATE NOT NULL,
    INDEX `fk_Movimento_Saida_Venda1_idx` (`Venda_ven_id` ASC) VISIBLE,
    PRIMARY KEY (`Venda_ven_id`),
    CONSTRAINT `fk_Movimento_Saida_Venda1`
      FOREIGN KEY (`Venda_ven_id`)
      REFERENCES `mydb`.`Venda` (`ven_id`)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION)

    CREATE TABLE IF NOT EXISTS `mydb`.`Venda` (
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

    CREATE TABLE IF NOT EXISTS `mydb`.`Pagamento` (
    `pag_id` INT NOT NULL,
    `pag_descricao` VARCHAR(45) NOT NULL,
    PRIMARY KEY (`pag_id`))

    CREATE TABLE IF NOT EXISTS `mydb`.`Fornecedor` (
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

    CREATE TABLE IF NOT EXISTS `mydb`.`Itens_venda` (
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

    CREATE TABLE IF NOT EXISTS `mydb`.`Estoque` (
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

    CREATE TABLE IF NOT EXISTS `mydb`.`Categoria` (
    `cat_id` INT NOT NULL,
    `cat_nome` VARCHAR(45) NULL,
    PRIMARY KEY (`cat_id`))

    CREATE TABLE IF NOT EXISTS `mydb`.`Produto` (
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

    CREATE TABLE IF NOT EXISTS `mydb`.`Movimento_Entrada` (
    `Estoque_Produto_pro_id` INT NOT NULL,
    `Estoque_Fornecedor_for_cnpj` INT NOT NULL,
    `mov_data` DATE NOT NULL,
    PRIMARY KEY (`Estoque_Produto_pro_id`, `Estoque_Fornecedor_for_cnpj`),
    CONSTRAINT `fk_Movimento_Entrada_Estoque1`
      FOREIGN KEY (`Estoque_Produto_pro_id` , `Estoque_Fornecedor_for_cnpj`)
      REFERENCES `mydb`.`Estoque` (`Produto_pro_id` , `Fornecedor_for_cnpj`)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION)

# Comandos Liquibase

  Dentro do repositório do projeto executamos os seguintes comandos Maven
  
    mvn clean 
    
    mvn install
    
  Logo após executamos o seguinte comando para fazer o Build do projeto em Liquibase 
  
    mvn install -Dliquibase
