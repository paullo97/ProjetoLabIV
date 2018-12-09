--liquibase formatted sql

--changeset insertVenda0001
--comment: Inserindo dados na tabela Venda - primeira inserção

insert into lab04.Venda values(01,STR_TO_DATE('17-12-2017','%d-%m-%Y'),22222222222, 01,1);
insert into lab04.Venda values(02,STR_TO_DATE('10-01-2018','%d-%m-%Y'),22222222222, 03,1);
insert into lab04.Venda values(03,STR_TO_DATE('20-04-2018','%d-%m-%Y'),33333333333, 04,3);
insert into lab04.Venda values(04,STR_TO_DATE('08-02-2018','%d-%m-%Y'),44444444444, 04,6);
insert into lab04.Venda values(05,STR_TO_DATE('30-03-2018','%d-%m-%Y'),66666666666, 02,1);
insert into lab04.Venda values(06,STR_TO_DATE('30-03-2018','%d-%m-%Y'),66666666666, 01,1);

--rollback DELETE FROM lab04.Venda WHERE ven_id = 01;
--rollback DELETE FROM lab04.Venda WHERE ven_id = 02;
--rollback DELETE FROM lab04.Venda WHERE ven_id = 03;
--rollback DELETE FROM lab04.Venda WHERE ven_id = 04;
--rollback DELETE FROM lab04.Venda WHERE ven_id = 05;
--rollback DELETE FROM lab04.Venda WHERE ven_id = 06;