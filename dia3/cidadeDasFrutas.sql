create database db_cidade_das_frutas;

use db_cidade_das_frutas;

create table tb_categoria(
id bigint auto_increment,
descricao varchar(255) not null,
ativo  boolean,
primary key (id)
);

insert tb_categoria (descricao,ativo) values ("Frutas", true);
insert tb_categoria (descricao,ativo) values ("Legumes", true);
insert tb_categoria (descricao,ativo) values ("Verduras", true);

select * from tb_categoria;

create table tb_produto(
id bigint auto_increment,
nome varchar (200) not null,
quantidade int,
tipo varchar (200),
preco decimal (6,2),
promocao boolean,
categoria_id bigint,
primary key (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id)
);

insert tb_produto(nome, quantidade, tipo, preco, promocao,categoria_id) values("Tomate",10,"Débora",3.00, true,1);
insert tb_produto(nome, quantidade, tipo, preco, promocao,categoria_id) values("Banana",20,"Prata", 25.00,true,1);
insert tb_produto(nome, quantidade, tipo, preco, promocao,categoria_id) values("Alface",3,"Lisa",4.00, false,3);
insert tb_produto(nome, quantidade, tipo, preco, promocao,categoria_id) values("Batata",15,"Inglesa",60.00, true,2);
insert tb_produto(nome, quantidade, tipo, preco, promocao,categoria_id) values("Cenoura",6,"Laranja", 9.00,false,2);

select * from tb_produto;

SELECT * FROM tb_produto WHERE preco > 50;
SELECT * FROM tb_produto WHERE preco BETWEEN 3 AND 60;
SELECT * FROM tb_produto WHERE nome LIKE "%C%";

select * from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id;

Select * from tb_produto where categoria_id = 1;