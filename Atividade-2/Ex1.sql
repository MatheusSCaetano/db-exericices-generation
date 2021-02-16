create database db_generation_game_online;

use db_generation_game_online;

create table tb_classe (
	idClasse int not null auto_increment primary key,
	nomeClasse varchar(40),
	pontosVida int not null,
	pontosAtaque int not null,
	pontosDefesa int not null
);

create table tb_personagem(
	idPersonagem int not null auto_increment primary key,
	nomePersonagem varchar(40) not null,
	nivelPersonagem int not null,
    idClasse int not null,
    foreign key(idClasse) references tb_Classe(idClasse)
);

insert into tb_classe (nomeClasse, pontosVida, pontosAtaque, pontosDefesa) values
('Gerreiro',5000,1500,3000),
('Arqueiro',2500,4500,2000),
('Mago',2000,5500,1500),
('Assassino',3000,3500,2500),
('Curandeiro',3000,1000,2000);

insert into tb_personagem (nomePersonagem, nivelPersonagem, idClasse) values
("Matheus",86,1),
("Marco",5,1),
("Lucas",23,2),
("Ronaldo",99,3),
("Neymar",87,3),
("Zidane",99,4),
("Gustavo",89,2),
("Lucio",99,5);

select tb_personagem.nomePersonagem, tb_personagem.nivelPersonagem, 
tb_classe.nomeClasse, tb_classe.pontosAtaque
from tb_personagem
inner join tb_classe
on tb_personagem.idClasse = tb_classe.idClasse
where tb_classe.pontosAtaque > 2000;

select tb_personagem.nomePersonagem, tb_personagem.nivelPersonagem, 
tb_classe.nomeClasse, tb_classe.pontosDefesa
from tb_personagem
inner join tb_classe
on tb_personagem.idClasse = tb_classe.idClasse
where tb_classe.pontosDefesa between 1000 and 2000;

select tb_personagem.nomePersonagem, tb_classe.nomeClasse
from tb_personagem
inner join tb_classe
on tb_personagem.idClasse = tb_classe.idClasse
where tb_personagem.nomePersonagem like "c%";

select tb_personagem.nomePersonagem, tb_personagem.nivelPersonagem, 
tb_classe.nomeClasse, tb_classe.pontosAtaque, tb_classe.pontosDefesa, tb_classe.pontosVida
from tb_personagem
inner join tb_classe
on tb_personagem.idClasse = tb_classe.idClasse
order by tb_classe.nomeClasse;

select tb_personagem.nomePersonagem, tb_personagem.nivelPersonagem, 
tb_classe.nomeClasse, tb_classe.pontosAtaque, tb_classe.pontosDefesa, tb_classe.pontosVida
from tb_personagem
inner join tb_classe
on tb_personagem.idClasse = tb_classe.idClasse
where tb_classe.nomeClasse = 'Arqueiro';