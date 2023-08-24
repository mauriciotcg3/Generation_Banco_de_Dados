create database db_pizzaria_legal;
use db_pizzaria_legal;

create table tb_categorias(
	id int primary key auto_increment,
	tipo varchar(30) not null,
    tamanho varchar(10) not null
);

create table tb_pizza(
	id int primary key auto_increment,
	nome varchar(30) not null,
    preco float not null,
    descricao varchar(100) not null,
    id_categoria int not null,
    constraint fk_CategoriaPizza foreign key (id_categoria) references tb_categorias(id)
);

insert into tb_categorias(tipo, tamanho) values ("Doce", "Grande"), ("Doce", "Media"), ("Salgada", "Grande"), ("Salgada", "Media"), ("Esfiha", "pequena");

insert into tb_pizza(nome, preco, descricao, id_categoria) values ("Mussarela", 59.99, "Mussarela com Queijo", 3), 
("Beijinho", 69.99, "Beijinho com Chocolate", 1), ("Chocolate", 59.99, "Chocolate Puro", 2), ("Aliche", 49.99, "Aliche com Queijo", 4),
("Carne", 19.99, "Esfiha de Carne", 5), ("Queijo", 19.99, "Esfiha de Queijo", 5), ("Calabresa", 49.99, "Calabresa com Queijo", 3),
("Brigadeiro", 69.99, "Brigadeiro com Chocolate", 1);

select * from tb_pizza where preco > 45.00;
select * from tb_pizza where preco between 50.00 and 100.00;
select * from tb_pizza where nome like "%m%";

select * from tb_pizza as p join tb_categorias as c on p.id_categoria = c.id;
select * from tb_pizza as p join tb_categorias as c on p.id_categoria = c.id where c.id = 1; 