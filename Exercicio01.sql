create database RH;
use rh;

create table colaboradores(
	id int not null primary key,
	nome varchar (50) not null,
    sobrenome varchar (50) not null,
    idade int not null,
    setor varchar (50) not null,
    salario float not null
);

insert into colaboradores (id, nome, sobrenome, idade, setor, salario) values (1 ,"Rebeca", "Arroio", 20, "Atendente", 1850.50), 
(2, "Ulisses", "Odiseia", 50, "Desenvolvedor Front-End", 3542.60), (3, "Miguel", "O-Hara", 36, "Vendedor Online", 1560.60), 
(4, "Lexus", "Odiseia", 25, "Desenvolvedora Full Stack Java", 4530.60), (5, "Jaime", "Gabriel", 62, "Carteiro", 1600.60);

select * from colaboradores where salario < 2000;
select * from colaboradores where salario > 2000;

update colaboradores set setor = "Analista de Sistema", salario = 5780.23 where id = 5;

select * from colaboradores;

