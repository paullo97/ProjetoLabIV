--liquibase formatted sql

--changeset insertFuncionario0001
--comment: Inserindo dados na tabela Funcionario - primeira inserção

insert into lab04.Funcionario values(11111111111, 'huguinho','senha01','usuario');
insert into lab04.Funcionario values(55555555555, 'skywalker','senha02','usuario');
insert into lab04.Funcionario values(77777777777, 'emma','senha03','gerente');

--rollback DELETE FROM lab04.Funcionario WHERE Cliente_cli_cpf = 11111111111;
--rollback DELETE FROM lab04.Funcionario WHERE Cliente_cli_cpf = 55555555555;
--rollback DELETE FROM lab04.Funcionario WHERE Cliente_cli_cpf = 77777777777;