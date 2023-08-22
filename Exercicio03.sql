create database escola;
use escola;

create table aluno(
	id int primary key not null,
    nome varchar (50) not null,
    idade int (2) not null,
    media float not null,
	turma varchar (50) not null	
);

insert into aluno (id, nome, idade, media, turma) values (1, "Helena", 15, 7.8, "Turma C"), (2, "Caue", 16, 6.1, "Turma B"), 
(3, "Maria", 15, 8.1, "Turma C"), (4, "Julio", 16, 9.5, "Turma B"), (5, "Rebeca", 14, 5.9, "Turma A"), (6, "Ulisses", 14, 7.5, "Turma A"), 
(7, "Ana Julia", 14, 6.9, "Turma A"), (8, "Mateus", 16, 10.0, "Turma B");

select * from aluno where media < 7.0;
select * from aluno where media > 7.0;

update aluno set turma = "Turma B" where id = 3;

select * from aluno;
