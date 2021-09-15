/**
Agenda de Contatos 
@author Wesley Oliveira
*/
-- pesquisar bancos de dados disponíveis 
show databases;
-- Criando um banco de dados
create database dbagenda;
-- criando uma tabela no banco de dados 
create table contatos (
id int primary key auto_increment,
nome varchar(50) not null,
fone varchar(15) not null,
email varchar(50) unique
);
-- selcionar o banco de dados 
use dbagenda;
-- remover um banco de dados
-- verificar tabelas disponíveis no banco 
show tables;
-- comando usado para descrever a tabela
describe contatos;
-- comando usado para remover uma tabela
drop table contatos;
-- Comando para alterar o nome de um campo(cabeçalho) da tabela
alter table contatos change nome contato varchar(50) not null;
-- comando usado para adicionar um novo campo na tela 
alter table contatos add column obs varchar(250);
-- comando usado para adicionar novo campo em um lugar específico
alter table contatos add column fone2 varchar(15) after fone;
-- comando para modificar o tipo de dado e ou validações do campo
alter table contatos modify column fone2 varchar(15) not null after fone;
alter table contatos modify email varchar(100) unique;
-- comando para apagar um campo da tabela
alter table contatos drop column obs;


/*
CRUD (do inglês: Create Read Update Delete)
São as quatro operações básicas que podem ser
realizadas em banco de dados que usam o modelo
relacional.

CREATE (inserção do registro(dados) na tabela)
READ (pesquisa dos dados na(s) tabela(s))
UPDATE (alteração de algum registro da tabela)
DELETE (exclusão de um registro da tabela)
*/

/*CRUD create (insert)*/
insert into contatos (nome,fone,email)
values ('Lua','99999-1111','luana@email.com'),('Maria Lucia','1234-7891','marialucia@email.com'),
('Maria Clara','88888-1234','mariaclara@email.com'),('Maria José','7894-1234','mairajose@email.com'),('Monica Munhoz','6666-1234','monicamunhoz@email.com'),
('Yan Valesini','1234-5678','yan@email.com'),('Wesley Oliveira','3214-5678','wesley@email.com'),('Vera Guedes','7894-5678','vera@email.com'),('Tais Helena','4561-5678','tais@email.com'),
('Mateus Barbosa','1234-5678','mateus@email.com'),('rafael Barbosa',' 4567-7891','rafael@email.com');

insert into contatos (nome,fone)
values ('Regiane','9999-2222'),('Carol','1234-7896');

insert into contatos (nome,fone,email)
values ('Linus Torvalds','99999-3333','linux@email.com');

insert into contatos (nome,fone,email)
values ('Ana Maria','99999-4444','ana@email.com');


/* CRUD READ (select) */
-- selecionar todos os registros da tabela 
select *from	contatos;

-- selecionar todos os registros em ordem alfabética ( ascedente e descedente)
select * from contatos order by nome asc;
select * from contatos order by nome desc;

-- selecionar um registro especifico
select *from contatos where nome= 'Wesley Oliveira';
select * from contatos where id=1;

-- selecionar campos especificos da tabela
select nome from contatos;
select nome,fone from contatos order by nome asc;



/* CRUD UPDATE (update) */
-- alterando um dado específico do registro da tabela (usar sempre o id "SEGURANÇA")
update contatos set fone='91234-8090' where id=4;
update contatos set email='bia@email.com' where id=2;



-- alterando todos os dados do registro
update contatos set nome='Willian Gates',fone='32456-9000',email='bill@outlook.com' where id=1;


-- excluindo um registro da tabela (usar sempre o id "SEGURANÇA")
delete from contatos where id=4;







