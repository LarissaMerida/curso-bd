create database locadora;

use locadora;

create table `filme` (
	`id` int NOT NULL auto_increment,
    `nome` text ,
    primary key (`id`)
);

CREATE TABLE `filme` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `titulo` varchar(255) NOT NULL,
  `sinopse` longtext NOT NULL,
  `lancamento` date NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

alter table `filme` 
add column `lancamento` year;

show tables;
desc filme;

drop table `filme`;

drop database `locadora`;



insert into `filme` (`id`, `nome`, `lancamento`)
values (1, 'Thor', 2018);

insert into `filme` 
values (default,'Viúva negra', '2021');

select id,  lancamento, nome as 'titulo'
from filme
order by lancamento asc;

select *
from filme
where nome like '%r';

UPDATE `filme`
SET
`nome` = 'Matrix',
`lancamento` = 2010
WHERE `id` =3;

select *
from filme;



DELETE FROM `filme`
WHERE id=4;

select *
from filme
where lancamento in (2010, 2019, 2021, 2022);

select *
from filme
where lancamento between 2010 and  2019
limit 2 ;

create table if not exists cursos(
	id int,
	nome varchar(20) not null unique, 
	descrição text, 
	carga int unsigned, 
	totalaulas int unsigned, 
	ano year default 2019,
	primary key(id));

insert into cursos values
('1', 'HTML4', 'Curso de HTML5', '40', '37', '2014'),
('2', 'Algoritmos', 'Lógica de Programação', '20', '15', '2014'),
('3', 'Photoshop', 'Dicas de Photoshop CC', '10', '8', '2014'),
('4', 'PGP', 'Curso de PHP para iniciantes', '40', '20', '2010'),
('5', 'Jarva', 'Introdução à Linguagem Java', '10', '29', '2000'),
('6', 'MySQL', 'Bancos de Dados MySQL', '30', '15', '2016'),    
('7', 'Word', 'Curso completo de Word', '40', '30', '2016'),    
('8', 'Sapateado', 'Danças Rítmicas', '40', '30', '2018'),      
('9', 'Cozinha Árabe', 'Aprenda a fazer Kibe', '40', '30', '2018'), 
('10', 'Youtuber', 'Gerar polêmica e ganhar inscritos', '5', '2', '2018');


select max(carga)
from cursos;

select min(carga)
from cursos;

select avg(carga)
from cursos;

select sum(carga)
from cursos;

select count(id)
from cursos;


select f.titulo, c.categoria_id, cat.tipo as categoria
from filme as f
join filme_categoria as c
on c.filme_id=f.id
right join categoria as cat
on cat.id = c.categoria_id
where c.categoria_id = 27;

select *
from filme_categoria;





