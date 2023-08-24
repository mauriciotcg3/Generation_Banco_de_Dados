create database db_farmacia_bem_estar;
use db_farmacia_bem_estar;

create table tb_categorias(
	id int primary key auto_increment,
    categoria varchar(20) not null,
    tempo varchar(20) not null
);

create table tb_produtos(
	id int primary key auto_increment,
    nome varchar(50) not null,
    preco decimal(3,2) not null,
    descricao varchar(100) not null,
    tarja varchar(20) not null,
    id_categoria int not null,
    constraint fk_categoriaproduto foreign key (id_categoria) references tb_categorias(id)
);

insert into tb_categorias(categoria, tempo) values ("Alopáticos", "Cada 8 Horas"), ("Genéricos", "Cada 6 Horas"), 
("Similares", "Cada 12 horas"), ("Manipulados", "Cada 24 Horas"), ("Biológicos", "Cada 8 Horas");

insert into tb_produtos(nome, preco, descricao, tarja, id_categoria) values ("soros hiperimunes", 20.00, "eh um soro", "tarja vermelha", 5),
("ORLISTATE ", 60.00, "Emagrecedor", "Sem tarja", 4), ("antibióticos ", 30.00, "antibióticos", "Sem tarja", 1), 
("Nimesulida ", 9.00, "Nimesulida", "Tarja vermelha", 2), ("Nimesulida ", 9.00, "Nimesulida", "Tarja vermelha", 2);

select * from tb_produtos where preco > 50.00;
select * from tb_produtos where preco between 50.00 and 60.00;
select * from tb_produtos where nome like "%C%";

select * from tb_produtos as p join tb_categorias as c on p.id_categoria = c.id;
select * from tb_produtos as p join tb_categorias as c on p.id_categoria = c.id where c.id = 2;