-- Crie um banco de dados para um  serviço de um game Online , o nome do banco deverá ter o seguinte nome db_generation_game_online
-- onde, o sistema trabalhará com as informações dos personagens desse game.O sistema trabalhará com 2 tabelas tb_personagem e tb_classe.
CREATE DATABASE db_generation_game_online;


-- Crie uma tabela tb_classe utilizando a habilidade de abstração e determine 3 atributos
-- relevantes da classe para se trabalhar com o serviço desse game Online.
use db_generation_game_online;

CREATE TABLE tb_classe(
idUsuario int not null auto_increment,
servidor varchar(50),
nivel varchar(50),
modo varchar(50),
primary key(idUsuario)
);

-- Crie uma tabela tb_personagem e utilizando a habilidade de abstração e determine 5
-- atributos relevantes dos funcionários para se trabalhar com o serviço desse game Online
-- (não esqueça de criar a foreign key de tb_classe nesta tabela).
USE db_generation_game_online;
CREATE TABLE db_generation_game_online.tb_personagem(
idPersonagem INT NOT NULL AUTO_INCREMENT,
poderAtaque int,
poderDefesa int,
demonio varchar(80),
ninja varchar(80),
anjos varchar(80),
PRIMARY KEY(idPersonagem)
);

desc tb_personagem;
desc tb_classe;

insert into  tb_classe (servidor,nivel,modo)  values ( 'Privado', 'Dificil', 'Disponivel');
insert into  tb_classe (servidor,nivel,modo)  values ( 'Hibrido', 'Médio', 'Indisponivel');
insert into  tb_classe (servidor,nivel,modo)  values ( 'Publico', 'Fácil', 'Varios Jogadores');
insert into  tb_classe (servidor,nivel,modo)  values ( 'Hibrido', 'Extra Dificil', 'Disponivel');
insert into  tb_classe (servidor,nivel,modo)  values ( 'Privado', 'Médio', 'Off');

select * from tb_classe;

insert into  tb_personagem (poderAtaque,poderDefesa,demonio,ninja, anjos)  values ('1500','8000','Raposa de nove caldas','Naruto','Miguel');
insert into  tb_personagem (poderAtaque,poderDefesa,demonio,ninja, anjos)  values ('9000','2000',"Zabuza","Sakura",'Gabriel');
insert into  tb_personagem (poderAtaque,poderDefesa,demonio,ninja, anjos)  values ('5000','2000',"Rokubi", 'Rock Lee','Marcos');
insert into  tb_personagem (poderAtaque,poderDefesa,demonio,ninja, anjos)  values ('2000','7000','Gaara','Kakashi','João');
insert into  tb_personagem (poderAtaque,poderDefesa,demonio,ninja, anjos)  values ('7000','2000','Gobi','Ino','Matheus');
insert into  tb_personagem (poderAtaque,poderDefesa,demonio,ninja, anjos)  values ('7000','9000','Yonbi','Hinata ','Pedro');
insert into  tb_personagem (poderAtaque,poderDefesa,demonio,ninja, anjos)  values ('2080','7600','Nibi','Susuke','Paulo');
insert into  tb_personagem (poderAtaque,poderDefesa,demonio,ninja, anjos)  values ('1200','10000','Sanbi','Yruka','Joaquim');

select * from tb_personagem;
alter table tb_personagem
add column fk_classe int;

alter table tb_personagem
add foreign key (fk_classe)
references tb_classe(idUsuario);

desc tb_personagem;

update tb_personagem set fk_classe = '1' where idPersonagem = '4';
update tb_personagem set fk_classe = '4' where idPersonagem = '1';

select * from tb_personagem where poderAtaque > 2000;
select * from tb_personagem where poderDefesa  > 1000 and poderDefesa < 2000;
select * from tb_personagem where ninja like '%c%';
SELECT * FROM db_generation_game_online.tb_personagem
INNER JOIN db_generation_game_online.tb_classe ON tb_classe.idUsuario = tb_personagem.idPersonagem;
select * from tb_personagem;
select demonio, poderAtaque from tb_personagem where poderAtaque = 1500;