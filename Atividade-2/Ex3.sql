create database db_farmacia_do_bem;

use db_farmacia_do_bem;

create table tb_categoria(
idCategoria int not null auto_increment primary key,
tipo varchar(60) not null,
categoria varchar (60) not null);

create table tb_produto(
idProduto int not null auto_increment primary key,
nomeProduto varchar(70) not null,
valor double not null,
marca varchar(50) not null,
idCategoria int not null,
foreign key (idCategoria) references tb_categoria (idCategoria));

insert into tb_categoria (tipo, categoria) values
('Medicamentos','Anti-Inflamatórios'),
('Beleza Higiene','Pele'),
('Saúde e Bem-estar','Vitamina D'),
('Mamãe e Bebê','Fraldas');

insert into tb_produto (nomeProduto, valor, marca, idCategoria) values
('AchéFlan Tópico Aerosol 5mg',49.99,'Aché',1),
('Nevrix Arese 20 Comprimidos',44.03,'Arese',1),
('Lenços Systane Lid Wipes Alcon 30 Unidades',47.15,'Alcon',2),
('Água Micelar Bioderma Sensibio H2O Para Peles',27.15,'Bioderma',2),
('Vitamina D Dose D 200UI Aché Maçã Verde 20ml',58.95,'Aché',3),
('V.IT CARE Vitamina D 2.000ui 30 Cápsulas',21.90,'V.IT CARE',3),
('Fralda Pampers Confort Sec Tamanho XXG 60 Unidades',79.90,'Pampers',4),
('Fralda Pampers Confort Sec G 70 Unidades',84.90,'Pampers',4);

select idProduto,tb_produto.nomeProduto, tb_produto.valor from tb_produto where valor>50;

select idProduto,tb_produto.nomeProduto, tb_produto.valor from tb_produto where valor between 3 and 60 order by valor;

select idProduto,tb_produto.nomeProduto, tb_produto.valor from tb_produto where tb_produto.nomeProduto like "v%";

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
where tb_categoria.tipo='Medicamentos'
order by tb_produto.valor;