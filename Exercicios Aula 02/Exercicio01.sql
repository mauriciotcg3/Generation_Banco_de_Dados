Create Database db_generation_game_online;
Use db_generation_game_online;

Create Table tb_classes(
	id int primary key not null,
	nome_da_classe varchar(20) not null,
	nivel_inicial int not null
);

Create Table tb_personagens(
	id int primary key not null,
	nome_personagem varchar(30) not null,
    ataque int not null,
    arma_inicial varchar(20) not null,
    defesa int not null,
    idClasse int not null,
    constraint fk_ClassesPersonagem foreign key (idClasse) references tb_classes(id)
);

insert into tb_classes (id, nome_da_classe, nivel_inicial) values (1, "Guerreiro", 10), (2, "Espadachin", 12), (3, "Clerego", 13), 
(4, "Mago", 13), (5, "Piromantico", 10);

insert into tb_personagens (id, nome_personagem, ataque, arma_inicial, defesa, idClasse) values 
(1, "Blaze", 3500, "Clymore", 2000, 1), (2, "CageJones", 2500, "Uchigatana", 1500, 2),
(3, "Fogareu", 1950, "Mão Piromantica", 900, 5), (4, "Father Horse", 1800, "Sino Clerego", 800, 3),
(5, "Vrau", 1000, "Punho", 1300, 1), (6, "Waves", 3000, "Cajado Arcano", 500, 4),
(7, "Zoro", 2010, "Katana", 1200, 2), (8, "Lexus", 2450, "Sino Necromante", 800, 3);

/*Select Normais*/
select * from tb_personagens where ataque > 2000;
select * from tb_personagens where defesa between 1000 and 2000;
select * from tb_personagens where nome_personagem like "%C%";

/*Usar Inner Join*/
select * from tb_personagens as p join tb_classes as c on p.idClasse = c.id;
select * from tb_personagens as p join tb_classes as c on p.idClasse = c.id where c.id = 1;