create database db_pizzaria_legal;

use db_pizzaria_legal;

create table tb_categoria(
id bigint auto_increment,
descricao varchar(255) not null,
ativo  boolean,
primary key (id)
);

insert into tb_categoria (descricao,ativo) values("Salgada", true);
insert into tb_categoria (descricao,ativo) values("Doce", true);
insert into tb_categoria (descricao,ativo) values("Esfiha", true);

select * from tb_categoria;

create table tb_pizza(
id bigint auto_increment,
sabor varchar(200) not null,
bordaRecheada  boolean,
preco decimal (6,2),
quantidade int,
solicitacao varchar (100),
categoria_id bigint,
primary key (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id)
);

insert tb_pizza(sabor, bordaRecheada, preco, quantidade, solicitacao, categoria_id) values ("Mussarela",false,32.00, 2, "um refrigerante", 1);
insert tb_pizza(sabor, bordaRecheada, preco, quantidade,solicitacao, categoria_id) values ("Calabresa",true,43.00, 1, "sem cebola", 1);
insert tb_pizza(sabor, bordaRecheada, preco, quantidade, solicitacao, categoria_id) values ("Brócolis",false,50.00, 1, "dois refrigerantes", 1);
insert tb_pizza(sabor, bordaRecheada, preco, quantidade, solicitacao, categoria_id) values ("Brigadeiro",false,22.00, 2, "com morango", 2);
insert tb_pizza(sabor, bordaRecheada, preco, quantidade, solicitacao, categoria_id) values ("Frango",false,20.00, 5, "com catupiry", 3);

select * from tb_pizza;

SELECT * FROM tb_pizza WHERE preco > 45;
SELECT * FROM tb_pizza WHERE preco BETWEEN 29 AND 60;
SELECT * FROM tb_pizza WHERE sabor LIKE "%C%";

select * from tb_pizza inner join tb_categoria on tb_categoria.id = tb_pizza.categoria_id;

Select * from tb_pizza where categoria_id = 2;