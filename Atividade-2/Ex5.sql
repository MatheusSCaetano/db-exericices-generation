create database db_construindo_a_nossa_vida;

use db_construindo_a_nossa_vida;

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
('Banheiros','Acessiblidade e Segurança'),
('Ferramentas','Elétricas/Bateria'),
('Materias Hidraulicos','Descargas'),
('Tintas','Corantes');

insert into tb_produto (nomeProduto, valor,idCategoria) values
('Torneira Pia Banheiro e Hospitalar Baixa Cromada',329.90,1),
('Bica Pia Hospitalar Alta Cromada Docolmatic Docol',369.90,1),
('Parafusadeira para Drywall 1/4" PC520PD 220V Dexter',275.90,2),
('Furadeira De Impacto Britânia 650w Bfu01 127v',189.90,2),
('Tubo de Descarga 38mmx80cm Tigre',7.30,3),
('Válvula de Descarga 40mm ou 1.1/4" Hydra Duo Deca',339.90,3),
('Corante Líquido Xadrez 50ml Azul',5.59,4),
('Corante Líquido Sua Cor Azul 500ml Iquine',26.90,4);

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
where tb_categoria.categoria = "Descargas"
order by tb_produto.valor;