create database dbinfox;
show databases;
use dbinfox;

create table usuarios(
id int primary key auto_increment,
usuario varchar(50) not null,
login varchar(10) not null unique,
senha varchar (10)
);


show tables;

describe usuarios;
drop table usuarios;
drop table clientes;
select *from usuarios;

insert into usuarios (usuario, login, senha)
values ('Davi','admin','1234');

alter table usuarios modify senha varchar(250);
alter table usuarios modify login varchar(250);


-- Armazenando um campo com criptografia
insert into usuarios (usuario, login, senha) values ('Daniel','dani@email',md5('1234'));
insert into usuarios (usuario, login, senha) values ('Wesley','wesley@email',md5('2358'));
insert into usuarios (usuario, login, senha) values ('Rafael','rafael@email',md5('8888'));
insert into usuarios (usuario, login, senha) values ('Mateus','mateus@email',md5('9999'));
insert into usuarios (usuario, login, senha) values ('Gean','Gean@email',md5('101010'));


-- Tabela de clientes (clientes da assistência técnica)
create table clientes(
idcli int primary key auto_increment,
nome varchar(50) not null,
fone varchar(15) not null
);
insert into clientes (nome,fone) values('Kelly Cristina','31256-2222');
insert into clientes (nome,fone) values('José de Assis','91234-1111');


create table tbOs(
os int primary key auto_increment,
equipamento varchar(250) not null,
defeito varchar(250) not null,
dataOs timestamp default current_timestamp,
statusOs varchar(50) not null,
valor decimal(10,2),
idcli int not null,
foreign key(idcli) references clientes(idcli)
);

insert into clientes (nome,fone) values('Kelly Cristina','31256-2222');
insert into clientes (nome,fone) values('José de Assis','91234-1111');

insert into tbOs(equipamento,defeito,statusOs,idcli)
values('Notebook Lenovo modelo','Não liga','Orçamento',1);

insert into tbOs(equipamento,defeito,statusOs,valor,idcli)
values('PC Positivo','Formatação do Windows','Aprovado',80,2);

insert into usuarios (usuario, login, senha)
values ('Robson Vaamonde','robson@usuario',md5('6789')); 

insert into usuarios (usuario, login, senha)
values ('Leandro Ramos','leandro@usuario',md5('123@')); 

insert into usuarios (usuario, login, senha)
values ('José de Assis','jose@usuario',md5('senac123')); 

insert into usuarios (usuario, login, senha)
values ('Edilson','edilson@usuario',md5('123tat')); 

insert into usuarios (usuario, login, senha)
values ('Kelly','kelly@usuario',md5('tat123')); 



select * from tbOs;

describe tbOs;

