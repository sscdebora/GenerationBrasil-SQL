-- Crie um banco de dados para um registro de uma escola, onde o sistema trabalhará com as
-- informações dos estudantes deste registro dessa escola.
create database db_escola;
use db_escola;

-- Crie uma tabela estudantes e utilizando a habilidade de abstração e determine 5 atributos
-- relevantes dos estudantes para se trabalhar com o serviço dessa escola.
create table tb_aluno(
id int not null auto_increment,
nome varchar(50),
idade int,
ra varchar(13),
genero varchar(10),
nota int,
primary key(id)
);

-- Popule esta tabela com até 8 dados;
insert into tb_aluno (nome,idade,ra,genero,nota) value ("Débora",22,"1234567891234","feminino",10);
insert into tb_aluno (nome,idade,ra,genero,nota) value ("Cristina",21,"1234567891235","feminino",9);
insert into tb_aluno (nome,idade,ra,genero,nota) value ("Thomas",18,"1234567891236","masculino",8);
insert into tb_aluno (nome,idade,ra,genero,nota) value ("Eduard",19,"1234567891237","masculino",7);
insert into tb_aluno (nome,idade,ra,genero,nota) value ("Guilherme",24,"1234567891238","masculino",10);
insert into tb_aluno (nome,idade,ra,genero,nota) value ("Matheus",23,"1234567891239","masculino",9);
insert into tb_aluno (nome,idade,ra,genero,nota) value ("Ariel",25,"1234567891230","NB",7);
insert into tb_aluno (nome,idade,ra,genero,nota) value ("Jude",26,"1234567891246","indefinido",8);

-- Faça um select que retorne o/as estudantes com a nota maior do que 7.
select * from db_escola.tb_aluno where nota > 7;

-- Faça um select que retorne o/as estudantes com a nota menor do que 7.
select * from db_escola.tb_aluno where nota < 7;

-- Ao término atualize um dado desta tabela através de uma query de atualização.
update tb_aluno set nota=9 where id=1;

select * from db_escola.tb_aluno;