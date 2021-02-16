create database db_cidade_das_carnes;

use db_cidade_das_carnes;

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
('Carnes','Bovina'),
('Carnes','Suína'),
('Carnes','Linguiças'),
('Carnes','Aves');

insert into tb_produto (nomeProduto, valor,idCategoria) values
('Acém Cubos 500g',20.45,1),
('Alcatra Grill 500g',33.45,1),
('Bacon Double Smoked Seara- UNIDADE',20.80,2),
('Costelinha Suína Aurora-Congelado',41.90,2),
('Linguiça A Moda de Bragança-Autêntica- UNIDADE',34.00,3),
('Linguiça Calabresa- UNIDADE',17.90,3),
('Coxa de Frango Korin Congelado- UNIDADE',8.90,4),
('Coxinha da Asa Korin Congelado UNIDADE',11.90,4);

select idProduto,tb_produto.nomeProduto, tb_produto.valor from tb_produto where valor>50;

select idProduto,tb_produto.nomeProduto, tb_produto.valor from tb_produto where valor between 3 and 60 order by valor;

select idProduto,tb_produto.nomeProduto, tb_produto.valor from tb_produto where tb_produto.nomeProduto like "c%";

select idProduto as ID_Produto, tb_produto.nomeProduto as Produto, 
tb_produto.valor as Valor, tb_categoria.tipo as Categoria, tb_categoria.categoria as Tipo
from tb_produto
inner join tb_categoria
on tb_produto.idCategoria = tb_categoria.idCategoria 
order by tb_produto.valor;

select idProduto as ID_Produto, tb_produto.nomeProduto as Produto, 
tb_produto.valor as Valor, tb_categoria.tipo as Categoria, tb_categoria.categoria as Tipo
from tb_produto
inner join tb_categoria
on tb_produto.idCategoria = tb_categoria.idCategoria 
where tb_categoria.categoria = "Suína"
order by tb_produto.valor;