create database ecommerce;
use ecommerce;

create table produtos (
	id int primary key not null,
    nome varchar (50) not null,
    marca varchar (50) not null,
    estoque int not null,
    preco float not null
);

insert into produtos (id, nome, marca, estoque, preco) values (1, "lapis", "fabercastel", 50, 420.50), (2, "caneta", "fabercastel", 30, 450.50), 
(3, "borracha", "fabercastel", 100, 300.50), (4, "apontador", "fabercastel", 20, 600.50), (5, "lapiseira", "fabercastel", 30, 1000.50), 
(6, "lapis de cor | caixa de 12 cores", "fabercastel", 30, 1200.60), (7, "lapis de cor | caixa de 24 cores", "fabercastel", 15, 3000.50), 
(8, "tinta", "fabercastel", 5, 430.50);

select * from produtos where preco < 500;
select * from produtos where preco > 500;

update produtos set nome = "tinta para pintar" where id = 8;

select * from produtos; 

