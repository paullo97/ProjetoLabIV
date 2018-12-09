--liquibase formatted sql

--changeset insertProduto0001
--comment: Inserindo dados na tabela Produto - primeira inserção

insert into lab04.Produto values(01, 'Celular Samsung Galaxy S8', 2980.00, 07);
insert into lab04.Produto values(02, 'Calça Jean', 68.90, 01);
insert into lab04.Produto values(03, 'Saboneteira', 5.99, 03);
insert into lab04.Produto values(04, 'Pasta de Dente', 6.50, 04);
insert into lab04.Produto values(05, 'Geladeira', 3150.00, 08);
insert into lab04.Produto values(06, 'Fogão', 1999.00, 08);
insert into lab04.Produto values(07, 'Jogo de panelas', 899.90, 02);
insert into lab04.Produto values(08, 'Vaso de plantas', 26.75, 05);
insert into lab04.Produto values(09, 'Batata Ruffles', 6.85, 06);
insert into lab04.Produto values(10, 'Chocolate Bis', 3.50, 06);

--rollback DELETE FROM lab04.Produto WHERE pro_id = 01;
--rollback DELETE FROM lab04.Produto WHERE pro_id = 02;
--rollback DELETE FROM lab04.Produto WHERE pro_id = 03;
--rollback DELETE FROM lab04.Produto WHERE pro_id = 04;
--rollback DELETE FROM lab04.Produto WHERE pro_id = 05;
--rollback DELETE FROM lab04.Produto WHERE pro_id = 06;
--rollback DELETE FROM lab04.Produto WHERE pro_id = 07;
--rollback DELETE FROM lab04.Produto WHERE pro_id = 08;
--rollback DELETE FROM lab04.Produto WHERE pro_id = 09;
--rollback DELETE FROM lab04.Produto WHERE pro_id = 10;