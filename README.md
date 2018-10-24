# ProjetoLabIV - Grupo 02

Integrantes 
  
* Ana Amorim  
* Magno dos Santos  
* Marcelo Augusto  
* Paulo Cesar
* Vinicius Oliveira  

# Comandos Github

* Clonagem 
  Para a clonagem do projeto para a sua maquina basta utilizar o comando 'git clone' seguido da URL do github. 
  
    git clone https://github.com/paullo97/ProjetoLabIV.git

* Checkout
  Para utilizar esse comenado basta seguir esse exemplo 
  
    git checkout [Nome_Branch]
    
    git checkout release 01
    
# Banco de Dados
  [prototipo] 
  
    create database Fatec; 
    create table aluno(
      RA int(10) not null primary key,
      nome varchar(35), 
      rua varchar(35), 
      bairro varhcar(35),
      cidade varchar(35), 
      IdCurso int(10),
      IdPeriodo int(10)
      FOREIGN KEY (IdPeriodo) REFERENCES periodo(IdPeriodo)
      Foreign Key(IdCurso) references curso(IdCurso)
    );
    
    create table periodo(
      IdPeriodo int(10) not null primary key, 
      nomePeriodo varchar(35),      
    );
    
    create table curso(
      IdCurso int(10) not null primary key, 
      nome varchar(35), 
    );

# Comandos Liquibase

  Dentro do repositório do projeto executamos os seguintes comandos Maven
  
    mvn clean 
    
    mvn install
    
  Logo após executamos o seguinte comando para fazer o Build do projeto em Liquibase 
  
    mvn install -Dliquibase
