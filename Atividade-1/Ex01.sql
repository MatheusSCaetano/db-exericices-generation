create database dbrh;

use dbrh;

create table funcionarios(
nome varchar(200) not null,
cpf char(11) not null primary key,
sexo varchar(50) not null,
cargo varchar(100) not null,
salario double not null);

insert into dbrh.funcionarios(nome, cpf, sexo, cargo, salario) values 
('Jorge Cavaco', '11111111111','masculino','Desenvolvedor Java Jr',5000),
('Raphaela de Oliveira', '22222222222','feminino','Desenvolvedor Java Sr',10000),
('Derick Junior', '33333333333','masculino','Engenheiro de Dados',8500),
('Matilde da Silva', '44444444444','feminino','Desenvolvedor Java Jr',5000),
('Nádia Furtado', '55555555555','feminino','Assistente de Engenheiro de Software',3600),
('Ronaldo Nazario', '66666666666','masculino','Estagiário de Desenvolvimento de Software',1500),
('Neymar Jr', '77777777777','masculino','Estagiário de Desenvolvimento de Software',1500),
('Jhon Francisco', '88888888888','masculino','Assistente de Engenheiro de Software',3600),
('Chico da Silva', '99999999999','masculino','Estagiário de Dados',1500),
('Zidane Nunes', '1010101010x','masculino','Estagiário de Dados',2000);

-- mostra tabela
select*from dbrh.funcionarios;
-- mostrar funcionarios com o salario>2000
select nome, cargo, sexo, salario from dbrh.funcionarios where salario>2000 order by sexo;
-- mostrar funcionarios com o salario<2000
select nome, cargo, sexo, salario from dbrh.funcionarios where salario<2000 order by nome;
-- atualizando o salário do estagiário de dados  para 1500
update dbrh.funcionarios set salario = 1500 where cpf='1010101010x';
-- verificando alteração
select*from dbrh.funcionarios;