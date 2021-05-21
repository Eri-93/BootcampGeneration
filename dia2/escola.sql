create database db_escola;

use db_escola;

create table tb_alunos(
id bigint auto_increment,
nome varchar (255) not null,
idade bigint,
serie bigint,
turma varchar(255),
materia varchar(255),
nota decimal (6,2),
primary key (id)
);

insert into tb_alunos(nome,idade,serie,turma,materia,nota)values("Ana", 15,6,"A", "matematica", 10.0);
insert into tb_alunos(nome,idade,serie,turma,materia,nota)values("Merida", 14,6,"A", "matematica", 9.0);
insert into tb_alunos(nome,idade,serie,turma,materia,nota)values("Mateus", 15,6,"A", "matematica", 6.0);
insert into tb_alunos(nome,idade,serie,turma,materia,nota)values("Bruno", 14,6,"A", "matematica", 7.0);
insert into tb_alunos(nome,idade,serie,turma,materia,nota)values("Elsa", 15,6,"A", "matematica", 5.0);

select * from tb_alunos;

select * from tb_alunos where nota>7;
select * from tb_alunos where  nota<7;

update tb_alunos set nota=7 where id=5;