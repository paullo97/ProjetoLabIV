--liquibase formatted sql

--changeset insertPagamento0001
--comment: Inserindo dados na tabela Pagamento - primeira inserção

insert into Pagamento values(01,'Dinheiro');
insert into Pagamento values(02,'Cheque');
insert into Pagamento values(03,'Cartão de Débito');
insert into Pagamento values(04,'Cartão de Crédito');

--rollback DELETE FROM Pagamento WHERE pag_id = 01;
--rollback DELETE FROM Pagamento WHERE pag_id = 02;
--rollback DELETE FROM Pagamento WHERE pag_id = 03;
--rollback DELETE FROM Pagamento WHERE pag_id = 04;