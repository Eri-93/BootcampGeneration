create database db_construindo_a_nossa_vida;

use db_construindo_a_nossa_vida;

create table tb_categoria(
id bigint auto_increment,
descricao varchar(255) not null,
ativo  boolean,
primary key (id)
);

insert tb_categoria (descricao, ativo) values ("Material básico", true);
insert tb_categoria (descricao, ativo) values ("Elétrica", true);
insert tb_categoria (descricao, ativo) values ("Hidráulica", true);
insert tb_categoria (descricao, ativo) values ("Home centers", true);
insert tb_categoria (descricao, ativo) values ("Tintas", true);

select * from tb_categoria;

create table tb_produto(
id bigint auto_increment,
nome varchar(200) not null,
preco decimal (6,2),
quantidade int,
estoque boolean,
categoria_id bigint,
primary key (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id)
);

insert tb_produto (nome, preco, quantidade, estoque, categoria_id) values("Luva",3.04, 5, true,3);
insert tb_produto (nome, preco, quantidade, estoque, categoria_id) values("Coluna Pronta Aramepar 8mm 7X14 6m (5/16",194.65, 5, true,1);
insert tb_produto (nome, preco, quantidade, estoque, categoria_id) values("Tubos de PVC para Esgoto",199.90, 2, true,3);
insert tb_produto (nome, preco, quantidade, estoque, categoria_id) values("Cabo Flexível",69.90, 1, true,2);
insert tb_produto (nome, preco, quantidade, estoque, categoria_id) values("Estabilizador",499.90, 1, false,2);
insert tb_produto (nome, preco, quantidade, estoque, categoria_id) values("Porcelanato,caixa",131.22, 8, true,4);
insert tb_produto (nome, preco, quantidade, estoque, categoria_id) values("Tinta Acrílica Coral",259.90, 2, true,5);
insert tb_produto (nome, preco, quantidade, estoque, categoria_id) values("Brita Nº 1 Briforte Saco 20kg",6.37, 7, true,1);

select * from tb_produto;

SELECT * FROM tb_produto WHERE preco > 50;
SELECT * FROM tb_produto WHERE preco BETWEEN 3 AND 60;
SELECT * FROM tb_produto WHERE nome LIKE "%C%";

select * from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id;

Select * from tb_produto where categoria_id = 3;