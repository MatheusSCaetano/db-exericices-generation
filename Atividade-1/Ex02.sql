create database loja;

use loja;

create table produtos(
id int not null auto_increment primary key,
nome varchar(300) not null,
linha varchar(30) not null,
marca varchar(300) not null,
valor double not null);

insert into loja.produtos(nome, linha, marca, valor) values
('Tênis Air Jordan 1 Higth Retro','Jordan','Nike', 3987),
('Tênis Air Jordan 1 Low','Jordan','Nike', 1788),
('Tênis Air Jordan 1 Low SE','Jordan','Nike', 1980),
('Tênis Air Jordan 4 Retro','Jordan','Nike', 6481),
('Tênis Air Jordan 11 Retro','Jodan','Nike', 3936),
('Tênis Nike Air Max 2090','Air Max','Nike', 899.99),
('Tênis Nike Lebron Witness V','Lebron','Nike', 499.99),
('Tênis Nike Air Force 1 07 LV8','AF1','Nike', 498.99),
('Tênis Air Jordan 4 Retro PS Infantil','Jordan','Nike', 499.99),
('Tênis Nike Kyrie 7','Kyrie','-', 749.99);

-- mostrar a tabela
select*from loja.produtos;
-- produtos com valor > 500
select nome, marca, valor from loja.produtos where valor>500;
-- produtos com valor < 500
select nome, marca, valor from loja.produtos where valor<500;
-- atualização da marca do Tênis Kyrie | primeiro rodar o set sql_safe_update (testando o que foi passado em aula)
SET SQL_SAFE_UPDATES = 0;
update loja.produtos set marca='Nike' where linha='Kyrie';
-- verificando alteração
select*from loja.produtos;