--liquibase formatted sql

--changeset insertContato0001
--comment: Inserindo dados na tabela Contato - primeira inserção

insert into lab04.Contato values(11999999999,1139000000,1139111111);
insert into lab04.Contato values(11999999990,1139000000,1139111111);
insert into lab04.Contato values(11999999991,1139000000,1139111111);
insert into lab04.Contato values(12999999992,1239000000,1239111111);
insert into lab04.Contato values(27999999990,2733000000,2733111111);
insert into lab04.Contato values(69999999999,6935000000,6935111111);
insert into lab04.Contato values(19999999999,1955000000,1935111111);
insert into lab04.Contato values(62999999999,6234000000,6234111111);
insert into lab04.Contato values(19999999991,1934000000,1934111111);
insert into lab04.Contato values(51999999991,5134000000,5134111111);

--rollback DELETE FROM lab04.Contato WHERE con_celular = 11999999999;
--rollback DELETE FROM lab04.Contato WHERE con_celular = 11999999990;
--rollback DELETE FROM lab04.Contato WHERE con_celular = 11999999991;
--rollback DELETE FROM lab04.Contato WHERE con_celular = 12999999992;
--rollback DELETE FROM lab04.Contato WHERE con_celular = 27999999990;
--rollback DELETE FROM lab04.Contato WHERE con_celular = 69999999999;
--rollback DELETE FROM lab04.Contato WHERE con_celular = 19999999999;
--rollback DELETE FROM lab04.Contato WHERE con_celular = 62999999999;
--rollback DELETE FROM lab04.Contato WHERE con_celular = 19999999991;
--rollback DELETE FROM lab04.Contato WHERE con_celular = 51999999991;