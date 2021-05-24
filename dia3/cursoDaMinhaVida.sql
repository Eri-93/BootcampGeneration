create database db_cursoDaMinhaVida;

use db_cursoDaMinhaVida;

create table tb_categoria(
id bigint auto_increment,
descricao varchar(255) not null,
matricula_aberta boolean,
unidade varchar (100),
telefone int,
primary key (id)
);

insert tb_categoria (descricao,matricula_aberta,unidade, telefone) values ("Design",true,"Tatuapé", 23455431);
insert tb_categoria (descricao,matricula_aberta,unidade, telefone) values ("Marketing",true,"Paulista", 23455432);
insert tb_categoria (descricao,matricula_aberta,unidade, telefone) values ("Programação",true,"Paulista", 23455432);
insert tb_categoria (descricao,matricula_aberta,unidade, telefone) values ("Gestão de Projetos",true,"Tatuapé", 23455431);
insert tb_categoria (descricao,matricula_aberta,unidade, telefone) values ("Inovação",true,"Tatuapé", 23455431);

select * from tb_categoria;

create table tb_curso(
id bigint auto_increment,
nome varchar(200) not null,
preco decimal (6,2),
periodo varchar (100),
categoria_id bigint,
primary key (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id)
);

insert tb_curso (nome,preco,periodo,categoria_id) values ("UX Design", 40.00, "noturno",1);
insert tb_curso (nome,preco,periodo,categoria_id) values ("UI Design", 49.00, "noturno",1);
insert tb_curso (nome,preco,periodo,categoria_id) values ("Marketing Digital", 80.00, "matutino",2);
insert tb_curso (nome,preco,periodo,categoria_id) values ("Inbound Marketing", 60.00, "matutino",2);
insert tb_curso (nome,preco,periodo,categoria_id) values ("Front-end", 100.00, "vespertino",3);
insert tb_curso (nome,preco,periodo,categoria_id) values ("Métodologias Ágies", 200.00, "noturno",4);
insert tb_curso (nome,preco,periodo,categoria_id) values ("IOT", 300.00, "vespertinno",5);

select*from tb_curso;

SELECT * FROM tb_curso WHERE preco > 50;
SELECT * FROM tb_curso WHERE preco BETWEEN 3 AND 60;
SELECT * FROM tb_curso WHERE nome LIKE "%J%";

select * from tb_curso inner join tb_categoria on tb_categoria.id = tb_curso.categoria_id;

Select * from tb_curso where categoria_id = 1;
