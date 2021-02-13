create database escola;

use escola;

create table turma(
id int not null auto_increment primary key,
nome varchar(150) not null,
sexo varchar(50) not null,
materia varchar(50) not null,
nota double not null);

insert into escola.turma (nome, sexo, materia, nota) values
('Matheus Caetano','masculino','Matemática',10),
('Neymar Jr','masculino','Matemática',8.5),
('Ronaldo Nazário','masculino','Matemática',7.3),
('Ricardo da Silva','masculino','Matemática',6),
('Marta Oliveira','feminino','Matemática',10),
('Gabriela Dario','feminino','Matemática',9),
('Katia Alexandra','feminino','Matemática',6),
('Selma Helena','feminino','Matemática',8),
('Silvana Helena','feminino','Matemática',6.5),
('Isabela Silva','masculino','Matemática',5);

-- mostra tabela
select*from escola.turma;
-- mostra alunos nota>7
select nome, materia, nota from escola.turma where nota>7;
-- mostra alunos nota<7
select nome, materia, nota from escola.turma where nota<7;
-- alteração do sexo da Isabela que possui ID=10
update escola.turma set sexo='feminino' where id=10;
-- verificando alteração
select*from escola.turma;
