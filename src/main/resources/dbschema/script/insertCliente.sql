--liquibase formatted sql

--changeset insertCliente0001
--comment: Inserindo dados na tabela Cliente - primeira inserção

insert into Cliente values(11111111111, 'Huguinho Patinhas', 10, 12210090,11999999999);
insert into Cliente values(22222222222, 'Luizinho Patinhas', 20, 12210090,11999999990);
insert into Cliente values(33333333333, 'Zezinho Patinhas', 30, 12210090,11999999991);
insert into Cliente values(44444444444, 'Baby da Silva Sauro', 40, 12210905,12999999992);
insert into Cliente values(55555555555, 'Anaquim Skywalker', 50, 29112130,27999999990);
insert into Cliente values(66666666666, 'Frodo Bolseiro', 60, 74920020,69999999999);
insert into Cliente values(77777777777, 'Emma Swan', 70, 76860000, 62999999999);

--rollback DELETE FROM Cliente WHERE cli_cpf = 11111111111;
--rollback DELETE FROM Cliente WHERE cli_cpf = 22222222222;
--rollback DELETE FROM Cliente WHERE cli_cpf = 33333333333;
--rollback DELETE FROM Cliente WHERE cli_cpf = 44444444444;
--rollback DELETE FROM Cliente WHERE cli_cpf = 55555555555;
--rollback DELETE FROM Cliente WHERE cli_cpf = 66666666666;
--rollback DELETE FROM Cliente WHERE cli_cpf = 77777777777;