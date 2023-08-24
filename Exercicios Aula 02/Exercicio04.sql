create database cidade_dos_vegetais;
use cidade_dos_vegetais;

create table tb_categorias(
	id int primary key auto_increment,
    cate varchar(50) not null,
    tamanho varchar(20) not null
);

create table tb_produtos(
	id int primary key auto_increment,
    nome varchar(50) not null,
    preco decimal(3,2) not null,
    qntd int not null,
    id_categorias int not null,
    constraint fk_produtoscategorias foreign key (id_categorias) references tb_categorias(id)
);

insert into tb_categorias(cate, tamanho) values ("verdura", "Maço"), ("hortalicas", "Maço"), ("frutas", "unidade"), ("Vegetais", "unidade"), 
("legumes", "Maço");

insert into tb_produtos(nome, preco, qntd, id_categorias) values ("Maça", 2.10, 300, 3), ("Pera", 3.10, 100, 3), ("Amora", 3.50, 150, 3), 
("Batata-doce", 5.10, 20, 2), ("Berinjela", 3.50, 100, 2), ("agrião", 10.50, 50, 1), ("alface", 5.50, 500, 4), ("BRÓCOLIS", 2.50, 500, 5);

select * from tb_produtos where preco > 50.00;
select * from tb_produtos where perco between 50.00 and 150.00;
select * from tb_produtos where nome like "%C%";

select * from tb_produtos as p join tb_categorias as c on p.in_categorias = c.id;
select * from tb_produtos as p join tb_categorias as c on p.in_categorias = c.id where c.id = 3;

