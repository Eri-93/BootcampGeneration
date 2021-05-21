create database db_rh;

use db_rh;

create table tb_funcionares(
id bigint auto_increment,
nome varchar(255) not null,
cargo varchar(255) not null,
salario decimal not null,
dadosBancarios decimal not null,
cpf decimal not null,
primary key (id)
);

insert into tb_funcionares (nome, cargo, salario, dadosBancarios, cpf)values("Isabela", "Diretora Executiva", 11000, 1234567, 1212121212);
insert into tb_funcionares (nome, cargo, salario, dadosBancarios, cpf)values("Ingrid", "Gerente", 8000, 1234568, 1212121213);
insert into tb_funcionares (nome, cargo, salario, dadosBancarios, cpf)values("Caio", "Estagiário", 1800, 5234567, 9212121212);
insert into tb_funcionares (nome, cargo, salario, dadosBancarios, cpf)values("Lucas", "Assistente", 2000, 98987676, 3434343434);

select * from db_funcionares;

rename table db_funcionares to tb_funcionares;
select * from tb_funcionares;

delete from tb_funcionares where id=1;
delete from tb_funcionares where id=2;
delete from tb_funcionares where id=7;
delete from tb_funcionares where id=8;
delete from tb_funcionares where id=9;
delete from tb_funcionares where id=10;
delete from tb_funcionares where id=11;


alter table tb_funcionares modify salario decimal (7,2);

select * from tb_funcionares where salario>2000;
select * from tb_funcionares where  salario<2000;

update tb_funcionares set salario=2200 where id=5;