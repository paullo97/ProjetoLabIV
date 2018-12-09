--liquibase formatted sql

--changeset insertFornecedor0001
--comment: Inserindo dados na tabela Fornecedor - primeira inserção

insert into lab04.Fornecedor values(1234567000100, 'Fornecedor A', 80, 38540970,1935111111);
insert into lab04.Fornecedor values(1234567000110, 'Fornecedor B', 90, 38540970,1934111111);
insert into lab04.Fornecedor values(1234567000120, 'Fornecedor C', 100, 90001970,5134111111);

--rollback DELETE FROM lab04.Fornecedor WHERE for_cnpj = 1234567000100;
--rollback DELETE FROM lab04.Fornecedor WHERE for_cnpj = 1234567000110;
--rollback DELETE FROM lab04.Fornecedor WHERE for_cnpj = 1234567000120;