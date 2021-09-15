show databases;
create database carrinhobdcompra;
drop database carrinhobdcompra;
create table carrinho(
id int primary key auto_increment,
produto varchar (100) not null,
quantidade int (50) not null,
Valor decimal(10,2)
);
use carrinhobdcompra;
show tables;
describe carrinho;
drop table carrinho;
select *from	carrinho;

alter table carrinho modify produto varchar (100) not null;

-- a linha abaixo modifica o tipo de dados de um campo 
-- decimal(10,2) 10 digitos com 2 casas decimais 

alter table carrinho modify valor decimal(10,2) not null;
alter table carrinho modify quantide int not null;

insert into carrinho (produto,quantidade,valor) values('Laranja',1,5.00);
insert into carrinho (produto,quantidade,valor) values('kiwi',1,650);
insert into carrinho (produto,quantidade,valor) values('Melão',1.50,10.00);
insert into carrinho (produto,quantidade,valor) values('Melancia',50,5.00);
insert into carrinho (produto,quantidade,valor) values('Uva',1.00,40);
insert into carrinho (produto,quantidade,valor) values('Romã',100,60);
insert into carrinho (produto,quantidade,valor) values('Banana',10,15.00);
insert into carrinho (produto,quantidade,valor) values('Goiaba',1.00,30.00);
insert into carrinho (produto,quantidade,valor) values('Mexirica',1.50,10);
insert into carrinho (produto,quantidade,valor) values('Abacaxi',15,5);

-- operações matemáticas
select sum(valor*quantidade) as total from carrinho;

select * from carrinho order by produto asc;

update carrinho set quantidade='10' where id=10;
update carrinho set quantidade='25' where id=4;

delete from carrinho where id=4;









