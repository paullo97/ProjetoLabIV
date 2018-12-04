--liquibase formatted sql

--changeset insertFornecedor0001
--comment: Inserindo dados na tabela Categoria - primeira inserção

insert into Categoria values(01,'roupa');
insert into Categoria values(02,'cozinha');
insert into Categoria values(03,'banheiro');
insert into Categoria values(04,'higiene pessoal');
insert into Categoria values(05,'jardinagem');
insert into Categoria values(06,'alimentação');
insert into Categoria values(07,'eletrônico');
insert into Categoria values(08,'eletrodoméstico');

--rollback DELETE FROM Categoria WHERE cat_id = 01;
--rollback DELETE FROM Categoria WHERE cat_id = 02;
--rollback DELETE FROM Categoria WHERE cat_id = 03;
--rollback DELETE FROM Categoria WHERE cat_id = 04;
--rollback DELETE FROM Categoria WHERE cat_id = 05;
--rollback DELETE FROM Categoria WHERE cat_id = 06;
--rollback DELETE FROM Categoria WHERE cat_id = 07;
--rollback DELETE FROM Categoria WHERE cat_id = 08;