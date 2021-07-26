CREATE DATABASE db_pizzaria_legal;
USE db_pizzaria_legal;

CREATE TABLE tb_categoria(
idCategoria INT AUTO_INCREMENT,
preçoPizza FLOAT,
precoLanche FLOAT,
precoEsfiha FLOAT,
preçoBebida FLOAT,
PRIMARY KEY (idCategoria)
);
CREATE TABLE tb_pizza(
idPizza INT AUTO_INCREMENT,
alimento VARCHAR(25),
nome VARCHAR(25),
tamanho VARCHAR(25),
formato VARCHAR(25),
bebida VARCHAR(25),
fk_categoria INT,
PRIMARY KEY (idPizza),
FOREIGN KEY(fk_categoria) REFERENCES tb_categoria(idCategoria)
);

SELECT * FROM tb_categoria, tb_pizza;

INSERT INTO tb_categoria (preçoPizza, precoLanche, precoEsfiha, preçoBebida) values
(25.00,9.00,1.00,5.00),
(30.00,10.00,1.50,6.00),
(35.00,10.50,2.00,5.50),
(40.00,9.50,2.50,6.50),
(45.00,11.00,3.00,7.00);

select * from tb_categoria;

INSERT INTO tb_pizza (alimento, nome, tamanho, formato, bebida, fk_categoria)
values
('pizza','marguerita','grande','redonda','soda',1),
('pizza','cogumelo','média','quadrada','guaraná',2),
('lanche','habgurger de beterrada','pequeno','triangular','pepsi',3),
('lanche','hamburger de grão de bico','grande','quadrado','itubaina',4),
('esfiha','brócolis','Grande','redonda','suco de maracujá',1),
('esfiha','carne de soja','media','quadrada','suco de goiaba',2),
('lanche','bauru','pequeno','retangular','fanta laranja',3),
('Pizza','palmito','Grande','redonda','fanta uva',4);

select * from tb_pizza;

select * from  tb_categoria where preçoPizza > 45.00;
select * from  tb_categoria where precoLanche > 9.00;
select * from  tb_categoria where precoEsfiha > 2.00;
select * from  tb_categoria where preçoBebida > 6.00;

select * from  tb_categoria where preçoPizza between 29.00 and  60.00;
select * from  tb_categoria where preçoPizza between 30.00 and  40.00;
select * from  tb_categoria where precoLanche between 9.00 and  10.00;
select * from  tb_categoria where precoEsfiha between 2.00 and 3.00;
select * from  tb_categoria where preçoBebida between 6.00 and 7.00;

select * from tb_pizza where nome like '%c%';
select * from db_pizzaria_legal.tb_categoria
inner join db_pizzaria_legal.tb_pizza on tb_pizza.idPizza = tb_categoria.idCategoria;
select alimento, nome, tamanho, formato from tb_pizza  where nome = 'cogumelo';
