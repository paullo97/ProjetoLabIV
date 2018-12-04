--liquibase formatted sql

--changeset insertMovimentoSaida0001
--comment: Inserindo dados na tabela Movimento_Saida - primeira inserção

insert into Movimento_Saida values(01,STR_TO_DATE('17-12-2017','%d-%m-%Y'));
insert into Movimento_Saida values(02,STR_TO_DATE('10-01-2018','%d-%m-%Y'));
insert into Movimento_Saida values(03,STR_TO_DATE('20-04-2018','%d-%m-%Y'));
insert into Movimento_Saida values(04,STR_TO_DATE('08-02-2018','%d-%m-%Y'));
insert into Movimento_Saida values(05,STR_TO_DATE('30-03-2018','%d-%m-%Y'));
insert into Movimento_Saida values(06,STR_TO_DATE('30-03-2018','%d-%m-%Y'));

--rollback DELETE FROM Movimento_Saida WHERE ven_id = 01;
--rollback DELETE FROM Movimento_Saida WHERE ven_id = 02;
--rollback DELETE FROM Movimento_Saida WHERE ven_id = 03;
--rollback DELETE FROM Movimento_Saida WHERE ven_id = 04;
--rollback DELETE FROM Movimento_Saida WHERE ven_id = 05;
--rollback DELETE FROM Movimento_Saida WHERE ven_id = 06;