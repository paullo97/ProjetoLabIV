--liquibase formatted sql

--changeset insertMovimentoEntrada0001
--comment: Inserindo dados na tabela Movimento_Entrada - primeira inserção

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

--rollback DELETE FROM Movimento_Entrada WHERE Estoque_produto_pro_id = 01 AND Estoque_Fornecedor_for_cnpj = 1234567000100;
--rollback DELETE FROM Movimento_Entrada WHERE Estoque_produto_pro_id = 02 AND Estoque_Fornecedor_for_cnpj = 1234567000100;
--rollback DELETE FROM Movimento_Entrada WHERE Estoque_produto_pro_id = 03 AND Estoque_Fornecedor_for_cnpj = 1234567000100;
--rollback DELETE FROM Movimento_Entrada WHERE Estoque_produto_pro_id = 04 AND Estoque_Fornecedor_for_cnpj = 1234567000110;
--rollback DELETE FROM Movimento_Entrada WHERE Estoque_produto_pro_id = 05 AND Estoque_Fornecedor_for_cnpj = 1234567000120;
--rollback DELETE FROM Movimento_Entrada WHERE Estoque_produto_pro_id = 06 AND Estoque_Fornecedor_for_cnpj = 1234567000120;
--rollback DELETE FROM Movimento_Entrada WHERE Estoque_produto_pro_id = 07 AND Estoque_Fornecedor_for_cnpj = 1234567000110;
--rollback DELETE FROM Movimento_Entrada WHERE Estoque_produto_pro_id = 08 AND Estoque_Fornecedor_for_cnpj = 1234567000110;
--rollback DELETE FROM Movimento_Entrada WHERE Estoque_produto_pro_id = 09 AND Estoque_Fornecedor_for_cnpj = 1234567000110;
--rollback DELETE FROM Movimento_Entrada WHERE Estoque_produto_pro_id = 10 AND Estoque_Fornecedor_for_cnpj = 1234567000110;