create database db_pizzaria_legal;

use db_pizzaria_legal;

create table tb_categoria(
idCategoria int not null auto_increment primary key,
tamanho varchar(45) not null,
sabor varchar (45) not null);

create table tb_pizza(
idPizza int not null auto_increment primary key,
pizzaSabor varchar (60) not null,
preco double not null,
idCategoria int not null,
foreign key(idCategoria) references tb_categoria(idCategoria)
);

insert into tb_categoria( tamanho, sabor) values 
('Normal','Salgada'),
('Brotinho','Salgada'),
('Normal','Doce'),
('Brotinho','Doce');

insert into tb_pizza( pizzaSabor, preco, idCategoria ) values 
('Calabresa',27,1),
('Calabresa',20,2),
('Mussarela',27,1),
('Mussarela',20,2),
('Quatro queijos',38,1),
('Quatro queijos',40,2),
('Chocolate',40,3),
('Chocolate',35,4),
('Chocolate Branco',40,3),
('Chocolate Branco',35,4),
('Chocolate com Morango',45,3),
('Chocolate com Morango',35,4),
("Chocolate com Morango e M&M's",60,3),
("Chocolate com Morango e M&M's",40,4);


select pizzaSabor as Pizza, preco as Valor from tb_pizza where preco>45;

select pizzaSabor as Pizza, preco as Valor from tb_pizza where preco between 29 and 60;

select pizzaSabor as Pizza, preco as Valor from tb_pizza where pizzaSabor like "C%";

select tb_pizza.pizzaSabor as Pizza, tb_categoria.tamanho as Tamanho, 
tb_categoria.sabor as Sabor, tb_pizza.preco as Valor
from tb_pizza
inner join tb_categoria
on tb_pizza.idCategoria = tb_categoria.idCategoria
order by preco;

select tb_pizza.pizzaSabor as Pizza, tb_categoria.tamanho as Tamanho, 
tb_categoria.sabor as Sabor, tb_pizza.preco as Valor
from tb_pizza
inner join tb_categoria
on tb_pizza.idCategoria = tb_categoria.idCategoria
where tb_categoria.sabor = 'Doce';


