--liquibase formatted sql

--changeset insertEstoque0001
--comment: Inserindo dados na tabela Estoque - primeira inserção

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

--rollback DELETE FROM Estoque WHERE Produto_pro_id = 01 AND Fornecedor_for_cnpj = 1234567000100;
--rollback DELETE FROM Estoque WHERE Produto_pro_id = 02 AND Fornecedor_for_cnpj = 1234567000100;
--rollback DELETE FROM Estoque WHERE Produto_pro_id = 03 AND Fornecedor_for_cnpj = 1234567000100;
--rollback DELETE FROM Estoque WHERE Produto_pro_id = 04 AND Fornecedor_for_cnpj = 1234567000110;
--rollback DELETE FROM Estoque WHERE Produto_pro_id = 07 AND Fornecedor_for_cnpj = 1234567000110;
--rollback DELETE FROM Estoque WHERE Produto_pro_id = 08 AND Fornecedor_for_cnpj = 1234567000110;
--rollback DELETE FROM Estoque WHERE Produto_pro_id = 09 AND Fornecedor_for_cnpj = 1234567000110;
--rollback DELETE FROM Estoque WHERE Produto_pro_id = 10 AND Fornecedor_for_cnpj = 1234567000110;
--rollback DELETE FROM Estoque WHERE Produto_pro_id = 05 AND Fornecedor_for_cnpj = 1234567000120;
--rollback DELETE FROM Estoque WHERE Produto_pro_id = 06 AND Fornecedor_for_cnpj = 1234567000120;
