--liquibase formatted sql

--changeset insertLogradouro0001
--comment: Inserindo dados na tabela Logradouro - primeira inserção

insert into lab04.Logradouro values(12210090,'Avenida Paulista','Bela Vista','São Paulo','São Paulo','SP');
insert into lab04.Logradouro  values(12210905,'Rua Alberto Consiglio','Centro','São José dos Campos','São Paulo','SP');
insert into lab04.Logradouro  values(29112130,'Rua 10 de Abril','Jardim Marilândia', 'Vila Velha','Espirito Santo','ES');
insert into lab04.Logradouro  values(74920020,'Rua Alfrânio Peixoto','Cidade Satélite São Luiz','Aparecida de Goiânia','Goias','GO');
insert into lab04.Logradouro  values(76860000,'Rua Aluísio Ferreira','Satelite','Candeiras do Jamari','Rondônia','RO');
insert into lab04.Logradouro  values(38540970,'Rua Mizael Nogueira','Centro','Abadia dos Dourados','Minas Gerais','MG');
insert into lab04.Logradouro  values(90001970,'Rua Siqueira Campos','Centro Histórico','Porto Alegre','Rio Grande do Sul','RS');

--rollback DELETE FROM lab04.Logradouro WHERE log_cep = 12210090;
--rollback DELETE FROM lab04.Logradouro WHERE log_cep = 12210905;
--rollback DELETE FROM lab04.Logradouro WHERE log_cep = 29112130;
--rollback DELETE FROM lab04.Logradouro WHERE log_cep = 74920020;
--rollback DELETE FROM lab04.Logradouro WHERE log_cep = 76860000;
--rollback DELETE FROM lab04.Logradouro WHERE log_cep = 38540970;
--rollback DELETE FROM lab04.Logradouro WHERE log_cep = 90001970;