create database db_ecommerce
use db_ecommerce;
create table tb_produtos(
id int auto_increment,
nome varchar(20),
tipo varchar(20),
valor double,
quantidade int,
primary key(id)
);
insert into tb_produtos(nome,tipo,valor,quantidade) value ("caneca","louça",20.00,30);
insert into tb_produtos(nome,tipo,valor,quantidade) value ("xícara","louça",10.00,8);
insert into tb_produtos(nome,tipo,valor,quantidade) value ("camiseta","roupa",30.50,15);
insert into tb_produtos(nome,tipo,valor,quantidade) value ("calça","roupa",60.00,12);
insert into tb_produtos(nome,tipo,valor,quantidade) value ("caneta","material escolar",0.50,20);
insert into tb_produtos(nome,tipo,valor,quantidade) value ("lapiseira","material escolar",1.00,16);
insert into tb_produtos(nome,tipo,valor,quantidade) value ("celular","eletrônico",800.00,10);
insert into tb_produtos(nome,tipo,valor,quantidade) value ("notebook","eletrônico",3000.00,11);
select * from db_ecommerce.tb_produtos;
select * from db_ecommerce.tb_produtos where valor > 500;
select * from db_ecommerce.tb_produtos where valor <500;
update tb_produtos set valor=1.00 where id=7;
