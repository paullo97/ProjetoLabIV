--liquibase formatted sql

--changeset insertItensVenda0001
--comment: Inserindo dados na tabela Itens_venda - primeira inserção

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

--rollback DELETE FROM Itens_venda WHERE Venda_ven_id = 01 AND Estoque_produto_pro_id = 02 AND Estoque_Fornecedor_for_cnpj = 1234567000100;
--rollback DELETE FROM Itens_venda WHERE Venda_ven_id = 02 AND Estoque_produto_pro_id = 07 AND Estoque_Fornecedor_for_cnpj = 1234567000110;
--rollback DELETE FROM Itens_venda WHERE Venda_ven_id = 03 AND Estoque_produto_pro_id = 01 AND Estoque_Fornecedor_for_cnpj = 1234567000100;
--rollback DELETE FROM Itens_venda WHERE Venda_ven_id = 03 AND Estoque_produto_pro_id = 09 AND Estoque_Fornecedor_for_cnpj = 1234567000110;
--rollback DELETE FROM Itens_venda WHERE Venda_ven_id = 03 AND Estoque_produto_pro_id = 07 AND Estoque_Fornecedor_for_cnpj = 1234567000110;
--rollback DELETE FROM Itens_venda WHERE Venda_ven_id = 04 AND Estoque_produto_pro_id = 05 AND Estoque_Fornecedor_for_cnpj = 1234567000120;
--rollback DELETE FROM Estoque WHERE Venda_ven_id = 04 AND Estoque_produto_pro_id = 06 AND Estoque_Fornecedor_for_cnpj = 1234567000120;
--rollback DELETE FROM Estoque WHERE Venda_ven_id = 05 AND Estoque_produto_pro_id = 05 AND Estoque_Fornecedor_for_cnpj = 1234567000120;
--rollback DELETE FROM Estoque WHERE Venda_ven_id = 06 AND Estoque_produto_pro_id = 09 AND Estoque_Fornecedor_for_cnpj = 1234567000110;
--rollback DELETE FROM Estoque WHERE Venda_ven_id = 06 AND Estoque_produto_pro_id = 10 AND Estoque_Fornecedor_for_cnpj = 1234567000110;
--rollback DELETE FROM Estoque WHERE Venda_ven_id = 06 AND Estoque_produto_pro_id = 08 AND Estoque_Fornecedor_for_cnpj = 1234567000110;