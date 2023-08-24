create database db_construindo_vidas;
use db_construindo_vidas;

create table tb_categorias(
	id int primary key auto_increment,
    cate varchar(50) not null,
    tipo varchar(50) not null
);

create table tb_produtos(
	id int primary key auto_increment,
    nome varchar(50) not null,
    preco decimal(3.2) not null,
    qntd int not null,
    id_categorias int not null,
    constraint fk_produtoscategorias foreign key (id_categorias) references tb_categorias(id)
);

insert into tb_categorias(cate, tipo) values ("vasos sanitarios", "banheiro"), ("cubas para banheiro", "banheiro"), 
("moveis para cozinha", "cozinha"), ("churrasqueira", "lazer"), ("fechadura", "porta");

insert into tb_produtos(nome, preco, qntd, id_categorias) values 
("Kit Bacia com Caixa Acoplada e Acessórios para Instalação Mariana Branco Icasa", 459.90, 200, 1),
("Bacia convencional 6 litros Saveiro branca Celite", 159.90, 150, 1),
("Prolongador Coifa Concreto Atacadão Lazer 50x52x20cm", 74.90, 100, 4),
("Chapeu Chines Inox Atacadão Lazer 24x24x50cm", 289.90, 20, 4),
("Fechadura HDL Elétrica Dupla Cinza", 359.90, 50, 5),
("Gabinete Parma p/ Pia 120cm Preto Bonatto", 349.90, 60, 3),
("Cuba de Sobrepor/Embutir Optica 410x410mm Branco Roca", 399.90, 90, 2),
("Cesta Fruteira Vazada Preta", 52.90, 60, 3);

select * from tb_produtos where preco > 100.00;
select * from tb_produtos where preco between 70.00 and 150.00;
select * from tb_produtos where nome like "%C%";

select * from tb_produtos as p join tb_categorias as c on p.id_categorias = c.id;
select * from tb_produtos as p join tb_categorias as c on p.id_categorias = c.id where c.id = 3;
