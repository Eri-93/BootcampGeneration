create database db_farmacia_do_bem;

use db_farmacia_do_bem;

create table tb_categoria(
id bigint auto_increment,
descricao varchar(255) not null,
estoque  boolean,
primary key (id)
);

insert tb_categoria(descricao,estoque) values ("Referência", true);
insert tb_categoria(descricao,estoque) values ("Similares", true);
insert tb_categoria(descricao,estoque) values ("Genérico", true);

select*from tb_categoria;

create table tb_produto(
id bigint auto_increment,
nome varchar(200) not null,
preco decimal (6,2),
quantidade int,
tipo varchar (100),
categoria_id bigint,
primary key (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id)
);

insert tb_produto(nome, preco, quantidade,tipo,categoria_id) values ("Buscopan", 15.00, 1, "comprimido", 1);
insert tb_produto(nome, preco, quantidade,tipo,categoria_id) values ("Aspirina", 7.00, 2, "comprimido", 1);
insert tb_produto(nome, preco, quantidade,tipo,categoria_id) values ("
Ácido Acetilsalicílico ", 5.49, 1, "comprimido", 3);
insert tb_produto(nome, preco, quantidade,tipo,categoria_id) values ("Loratadina", 9.00, 1, "xarope", 3);

select*from tb_produto;

SELECT * FROM tb_produto WHERE preco > 50;
SELECT * FROM tb_produto WHERE preco BETWEEN 3 AND 60;
SELECT * FROM tb_produto WHERE nome LIKE "%B%";

select * from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id;

Select * from tb_produto where categoria_id = 3;