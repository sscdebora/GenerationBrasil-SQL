create database db_rh;
use db_rh;
create table tb_funcionaries(
id int auto_increment,
nome varchar(100),
idade int,
cpf varchar(11),
salario double,
atividade varchar(30),
primary key(id)
);
insert into tb_funcionaries (nome, idade, cpf, salario, atividade) values("Thomas",28,"12345678910",15000,"Desenvolvedor Senior");
insert into tb_funcionaries (nome, idade, cpf, salario, atividade) values("Débora",22,"12345678911",5000,"Desenvolvedora Junior");
insert into tb_funcionaries (nome, idade, cpf, salario, atividade) values("Guilherme",24,"12345678912",4000,"Desenvolvedor Java ");
insert into tb_funcionaries (nome, idade, cpf, salario, atividade) values("Maria",23,"12345678913",3000,"Desenvolvedora web ");
insert into tb_funcionaries (nome, idade, cpf, salario, atividade) values("José",21,"12345678914",2000,"Assistente administrativo");
select * FROM db_rh.tb_funcionaries;
select * FROM db_rh.tb_funcionaries where salario >2000;
select * FROM db_rh.tb_funcionaries where salario <2000;
update tb_funcionaries set salario=2500 where id=5;
delete from tb_funcionaries where id between 19 and 60;

