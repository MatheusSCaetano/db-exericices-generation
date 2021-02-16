create database db_cursoDaMinhaVida;

use db_cursoDaMinhaVida;

create table tb_categoria(
idCategoria int not null auto_increment primary key,
tipo varchar(60) not null,
categoria varchar (60) not null);

create table tb_produto(
idProduto int not null auto_increment primary key,
nomeProduto varchar(70) not null,
valor double not null,
idCategoria int not null,
foreign key (idCategoria) references tb_categoria (idCategoria));

insert into tb_categoria (tipo, categoria) values
('Programação','Java'),
('Programação','Python'),
('Programação','PHP'),
('Front-end','JavaScript');

insert into tb_produto (nomeProduto, valor,idCategoria) values
('Curso Java OO: Introdução à Orientação a Objetos',90,1),
('Curso Java Collections: Dominando Listas, Sets e Mapas',200,1),
('Curso API com Django 3: Versionamento, cabeçalhos e CORS',150,2),
('Curso API com Django 3: Testes, segurança e lapidações',170,2),
('Curso PHP e MySQL: Introdução a uma webapp',170.90,3),
('Curso PHP: Dominando as Collections',180.90,3),
('Curso JavaScript: Programando a Orientação a Objetos',158.03,4),
('Curso JavaScript: Desenvolvedor poliglota',159.99,4);

select idProduto,tb_produto.nomeProduto, tb_produto.valor from tb_produto where valor>150;

select idProduto,tb_produto.nomeProduto, tb_produto.valor from tb_produto where valor between 90 and 180 order by valor;

select idProduto,tb_produto.nomeProduto, tb_produto.valor from tb_produto where tb_produto.nomeProduto like "c%";

select idProduto as ID_Produto, tb_produto.nomeProduto as Produto, 
tb_produto.valor as Valor, tb_categoria.tipo as Categoria, tb_categoria.categoria as Linguagem
from tb_produto
inner join tb_categoria
on tb_produto.idCategoria = tb_categoria.idCategoria 
order by tb_produto.valor;

select idProduto as ID_Produto, tb_produto.nomeProduto as Produto, 
tb_produto.valor as Valor, tb_categoria.tipo as Categoria, tb_categoria.categoria as Linguagem
from tb_produto
inner join tb_categoria
on tb_produto.idCategoria = tb_categoria.idCategoria 
where tb_categoria.categoria = "Java"
order by tb_produto.valor;