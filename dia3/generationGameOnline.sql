create database db_generation_game_online;

use db_generation_game_online;

create table tb_classe(
id bigint auto_increment,
tipo varchar (100),
primary key (id)
);

insert into tb_classe (tipo) values ( "maga");
insert into tb_classe (tipo) values ("feiticeira");
insert into tb_classe (tipo) values ( "arqueira");

select *from tb_classe;

create table tb_personagem(
id bigint auto_increment,
nome varchar (255) not null,
poderAtaque int not null,
poderDefesa int not null,
magia varchar (255),
caracteristica varchar (255),
classe_id bigint,
primary key (id),
FOREIGN KEY (classe_id) REFERENCES tb_classe (id)
);

insert into tb_personagem (nome,poderAtaque, poderDefesa, magia, caracteristica, classe_id) 
values ("Taylor",1100, 2500,"Encantar", "mente brilhante",1);
insert into tb_personagem (nome,poderAtaque, poderDefesa, magia, caracteristica, classe_id) 
values ("Elsa",3890, 6700,"Congelar","Mãos de Gelo",2);
insert into tb_personagem (nome,poderAtaque, poderDefesa, magia, caracteristica, classe_id) 
values ("Merida",2000,1000, "Voltar no tempo","Melhor arqueira de todo o reino",3);
insert into tb_personagem (nome,poderAtaque, poderDefesa, magia, caracteristica, classe_id) 
values ("Mulan", 1000, 5000,"Intuição","Corajosa",1);
insert into tb_personagem (nome,poderAtaque, poderDefesa, magia, caracteristica, classe_id) 
values ("Moana", 1000,3500,"Controla a água","Melhor navegante de todo o reino",2);

select * from tb_personagem;

SELECT * FROM tb_personagem WHERE poderAtaque > 2000;
SELECT * FROM tb_personagem WHERE poderDefesa BETWEEN 1000 AND 2000;
SELECT * FROM tb_personagem WHERE nome LIKE "%C%";

select * from tb_personagem inner join tb_classe on tb_classe.id = tb_personagem.classe_id;

Select * from tb_personagem where classe_id = 2;
