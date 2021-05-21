-- Criar Banco de Dados
create database db_quintanda;

-- Acessa o Bando de dados
use db_quintanda;
-- Criar Tabela
create table tb_produtos(
id bigint auto_increment,
nome varchar(255) not null,
preco decimal  not null,
primary key (id)
);

--  Insere dados na tabela
insert into tb_produtos(nome, preco)  values("tomate", 50.00);
insert into tb_produtos(nome, preco)  values("maça", 5.00);

-- Visualizar os dados
select * from tb_produtos;
select nome,preco from tb_produtos;
select * from tb_produtos where id=1;
select * from tb_produtos where preco>5;

-- Altera a estrutura da Tabela
alter table tb_produtos add descricao varchar(255);
alter table tb_produtos drop descricao;

-- Alterar dados da tabela
update tb_produtos set preco=10 where id=1;

-- Deletar dados na tabela
delete from tb_produtos where id=2;
