create database db_ecommerce;

use db_ecommerce;

create table tb_produtos(
id bigint auto_increment,
nome varchar (255) not null,
categoria varchar (255),
quantidade bigint,
preco decimal (7,2) not null,
marca varchar (200),
referencia decimal (7,2),
primary key (id)
);

insert into tb_produtos(nome, categoria, quantidade, preco, marca, referencia) values("batom","cosmésticos", 5, 120.00, "Avon", 123);
insert into tb_produtos(nome, categoria, quantidade, preco, marca, referencia) values("meia","roupa", 5, 150.00, "Lupo", 456);
insert into tb_produtos(nome, categoria, quantidade, preco, marca, referencia) values("perfume","perfumaria", 1, 680.00, "Dior", 789);
insert into tb_produtos(nome, categoria, quantidade, preco, marca, referencia) values("bolsa","acessório", 1, 990.00, "Gucci", 443);
insert into tb_produtos(nome, categoria, quantidade, preco, marca, referencia) values("celular","eletrônico", 1, 700.00, "Avon", 113);
insert into tb_produtos(nome, categoria, quantidade, preco, marca, referencia) values("esmalte","cosmésticos", 6, 20.00, "Avon", 227);
insert into tb_produtos(nome, categoria, quantidade, preco, marca, referencia) values("abajur","decoração", 1, 820.00, "TOKSTOCK", 654);
insert into tb_produtos(nome, categoria, quantidade, preco, marca, referencia) values("travesseiro","casa", 1, 155.00, "Artex", 990);
insert into tb_produtos(nome, categoria, quantidade, preco, marca, referencia) values("sabonete","higiene", 5, 20.00, "Palmollive", 564);

select * from tb_produtos;

select * from tb_produtos where preco>500;
select * from tb_produtos where  preco<500;

update tb_produtos set quantidade=4 where id=1;
