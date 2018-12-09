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
  
* Comandos DDL: 
  
      CREATE TABLE IF NOT EXISTS `lab04`.`Logradouro` (
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

* Comandos DML:

      insert into Logradouro values(12210090,'Avenida Paulista','Bela Vista','São Paulo','São Paulo','SP');
      insert into Logradouro values(12210905,'Rua Alberto Consiglio','Centro','São José dos Campos','São Paulo','SP');
      insert into Logradouro values(29112130,'Rua 10 de Abril','Jardim Marilândia', 'Vila Velha','Espirito Santo','ES');
      insert into Logradouro values(74920020,'Rua Alfrânio Peixoto','Cidade Satélite São Luiz','Aparecida de Goiânia','Goias','GO');
      insert into Logradouro values(76860000,'Rua Aluísio Ferreira','Satelite','Candeiras do Jamari','Rondônia','RO');
      insert into Logradouro values(38540970,'Rua Mizael Nogueira','Centro','Abadia dos Dourados','Minas Gerais','MG');
      insert into Logradouro values(90001970,'Rua Siqueira Campos','Centro Histórico','Porto Alegre','Rio Grande do Sul','RS');


      insert into Contato values(11999999999,1139000000,1139111111);
      insert into Contato values(11999999990,1139000000,1139111111);
      insert into Contato values(11999999991,1139000000,1139111111);
      insert into Contato values(12999999992,1239000000,1239111111);
      insert into Contato values(27999999990,2733000000,2733111111);
      insert into Contato values(69999999999,6935000000,6935111111);
      insert into Contato values(19999999999,1955000000,1935111111);
      insert into Contato values(62999999999,6234000000,6234111111);

      insert into Cliente values (11111111111, 'Huguinho Patinhas', 10, 12210090,11999999999);
      insert into Cliente values (22222222222, 'Luizinho Patinhas', 20, 12210090,11999999990);
      insert into Cliente values (33333333333, 'Zezinho Patinhas', 30, 12210090,11999999991);
      insert into Cliente values (44444444444, 'Baby da Silva Sauro', 40, 12210905,12999999992);
      insert into Cliente values (55555555555, 'Anaquim Skywalker', 50, 29112130,27999999990);
      insert into Cliente values (66666666666, 'Frodo Bolseiro', 60, 74920020,69999999999);
      insert into Cliente values (77777777777, 'Emma Swan', 70, 76860000, 62999999999);

      insert into Funcionario values(11111111111, 'huguinho','senha01','usuario');
      insert into Funcionario values(55555555555, 'skywalker','senha02','usuario');
      insert into Funcionario values(77777777777, 'emma','senha03','gerente');

      insert into Fornecedor values(1234567000100, 'Fornecedor A', 80, 38540970,1935111111);
      insert into Fornecedor values(1234567000110, 'Fornecedor B', 90, 38540970,1934111111);
      insert into Fornecedor values(1234567000120, 'Fornecedor C', 100, 90001970,5134111111);

      insert into Categoria values(01,'roupa');
      insert into Categoria values(02,'cozinha');
      insert into Categoria values(03,'banheiro');
      insert into Categoria values(04,'higiene pessoal');
      insert into Categoria values(05,'jardinagem');
      insert into Categoria values(06,'alimentação');
      insert into Categoria values(07,'eletrônico');
      insert into Categoria values(08,'eletrodoméstico');

      insert into Produto values(01, 'Celular Samsung Galaxy S8', 2980.00, 07);
      insert into Produto values(02, 'Calça Jean', 68.90, 01);
      insert into Produto values(03, 'Saboneteira', 5.99, 03);
      insert into Produto values(04, 'Pasta de Dente', 6.50, 04);
      insert into Produto values(05, 'Geladeira', 3150.00, 08);
      insert into Produto values(06, 'Fogão', 1999.00, 08);
      insert into Produto values(07, 'Jogo de panelas', 899.90, 02);
      insert into Produto values(08, 'Vaso de plantas', 26.75, 05);
      insert into Produto values(09, 'Batata Ruffles', 6.85, 06);
      insert into Produto values(10, 'Chocolate Bis', 3.50, 06);

      insert into Estoque values(01,1234567000100,200,50);
      insert into Estoque values(02,1234567000100,450,100);
      insert into Estoque values(03,1234567000100,100,100);
      insert into Estoque values(04,1234567000110,500,250);
      insert into Estoque values(07,1234567000110,68,70);
      insert into Estoque values(08,1234567000110,50,40);
      insert into Estoque values(09,1234567000110,880,1000);
      insert into Estoque values(10,1234567000110,750,700);
      insert into Estoque values(05,1234567000120,65,30);
      insert into Estoque values(06,1234567000120,20,35);

      insert into Pagamento values(01,'Dinheiro');
      insert into Pagamento values(02,'Cheque');
      insert into Pagamento values(03,'Cartão de Débito');
      insert into Pagamento values(04,'Cartão de Crédito');

      insert into Venda values(01,STR_TO_DATE('17-12-2017','%d-%m-%Y'),22222222222, 01,1);
      insert into Venda values(02,STR_TO_DATE('10-01-2018','%d-%m-%Y'),22222222222, 03,1);
      insert into Venda values(03,STR_TO_DATE('20-04-2018','%d-%m-%Y'),33333333333, 04,3);
      insert into Venda values(04,STR_TO_DATE('08-02-2018','%d-%m-%Y'),44444444444, 04,6);
      insert into Venda values(05,STR_TO_DATE('30-03-2018','%d-%m-%Y'),66666666666, 02,1);
      insert into Venda values(06,STR_TO_DATE('30-03-2018','%d-%m-%Y'),66666666666, 01,1);

      insert into Movimento_Saida values(01,STR_TO_DATE('17-12-2017','%d-%m-%Y'));
      insert into Movimento_Saida values(02,STR_TO_DATE('10-01-2018','%d-%m-%Y'));
      insert into Movimento_Saida values(03,STR_TO_DATE('20-04-2018','%d-%m-%Y'));
      insert into Movimento_Saida values(04,STR_TO_DATE('08-02-2018','%d-%m-%Y'));
      insert into Movimento_Saida values(05,STR_TO_DATE('30-03-2018','%d-%m-%Y'));
      insert into Movimento_Saida values(06,STR_TO_DATE('30-03-2018','%d-%m-%Y'));

      insert into Itens_venda values(01,02,1234567000100,01);
      insert into Itens_venda values(02,07,1234567000110,01);
      insert into Itens_venda values(03,01,1234567000100,01);
      insert into Itens_venda values(03,09,1234567000110,03);
      insert into Itens_venda values(03,07,1234567000110,01);
      insert into Itens_venda values(04,05,1234567000120,01);
      insert into Itens_venda values(04,06,1234567000120,01);
      insert into Itens_venda values(05,05,1234567000120,01);
      insert into Itens_venda values(06,09,1234567000110,04);
      insert into Itens_venda values(06,10,1234567000110,02);
      insert into Itens_venda values(06,08,1234567000110,01);

      insert into Movimento_Entrada values(01,1234567000100,STR_TO_DATE('10-12-2017','%d-%m-%Y'));
      insert into Movimento_Entrada values(02,1234567000100,STR_TO_DATE('11-12-2017','%d-%m-%Y'));
      insert into Movimento_Entrada values(03,1234567000100,STR_TO_DATE('11-12-2017','%d-%m-%Y'));
      insert into Movimento_Entrada values(04,1234567000110,STR_TO_DATE('27-11-2017','%d-%m-%Y'));
      insert into Movimento_Entrada values(05,1234567000120,STR_TO_DATE('10-11-2017','%d-%m-%Y'));
      insert into Movimento_Entrada values(06,1234567000120,STR_TO_DATE('20-12-2017','%d-%m-%Y'));
      insert into Movimento_Entrada values(07,1234567000110,STR_TO_DATE('09-10-2017','%d-%m-%Y'));
      insert into Movimento_Entrada values(08,1234567000110,STR_TO_DATE('15-12-2017','%d-%m-%Y'));
      insert into Movimento_Entrada values(09,1234567000110,STR_TO_DATE('15-09-2017','%d-%m-%Y'));
      insert into Movimento_Entrada values(10,1234567000110,STR_TO_DATE('07-12-2017','%d-%m-%Y'));

# Comandos Liquibase

  Dentro do repositório do projeto executamos os seguintes comandos Maven
  
    mvn clean 
    
    mvn install
    
  Logo após executamos o seguinte comando para fazer o Build do projeto em Liquibase 
  
    mvn install -Dliquibase
