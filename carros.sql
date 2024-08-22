drop database if exists pessoas;
create database pessoas;
use pessoas;
create table humanos(
	id_pessoa int not null auto_increment,
	nome varchar (50),
	cidade varchar(50),
	primary key (id_pessoa))
    default charset = utf8mb4;
    
insert into humanos(nome, cidade) values
("Jaca","São Paulo"),
("Jeca","Santos"),
("Jica","Fenix"),
("Joca","Mogi"),
("Juca","New York");

create table carros(
	id_carro int not null auto_increment,
    nome_carro varchar(50),
    id_pessoa int,
    primary key (id_carro),
    constraint fk_PesCarro foreign key (id_pessoa) references humanos (id_pessoa))
    default charset = utf8mb4;
    
insert into carros (nome_carro, id_pessoa) values
("Porshe",1),
("Ferrari",2),
("Fusca",3),
("Moto",4),
("Kombi do Pastel",5);

select * from humanos;
select * from carros;