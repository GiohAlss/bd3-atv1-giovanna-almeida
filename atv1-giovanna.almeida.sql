create database bd_atividade;
use bd_atividade;

create table tbl_produto(
cod_prod 	int,
nome 		varchar(50),
descricao 	varchar(100),
preco 		decimal(10,2),

constraint pk_prod primary key(cod_prod)
);

create table tbl_pedido(
cod_ped 	int,
data_ped    varchar(10),

constraint pk_ped primary key(cod_ped)
);

create table tbl_iten_pedido(
cod_prod int,
cod_ped int,

constraint fk_prod foreign key(cod_prod) references tbl_produto(cod_prod),
constraint fk_ped foreign key(cod_ped) references tbl_pedido(cod_ped)
);

#5
insert into tbl_produto(cod_prod, nome, descricao, preco) values
('1', 'Cola Líquida', 'Cola líquida branca', '10'),
('2', 'Lápis', 'Lápis grafite 0.1', '2'),
('3', 'Caneta Azul', 'Caneta esferográfica azul', '2'),
('4', 'Borracha', 'Borracha branca', '4'),
('5', 'Apontador', 'Apontador unitário preto', '5'),
('6', 'Caderno Universitário', 'Caderno universitário 10 matérias', '39'),
('7', 'Marca Texto', 'Caneta marca texto verde', '8'),
('8', 'Folha Sulfite', 'Pacote de folha sulfite com 200 folhas', '24'),
('9', 'Tesoura', 'Tesoura sem ponta', '11'),
('10', 'Régua', 'Régua padrão', '8');

#6
insert into tbl_pedido(cod_ped, data_ped) values
('1', '2024-02-16'),
('2', '2024-02-21'),
('3', '2024-02-04');

insert into tbl_iten_pedido(cod_prod, cod_ped) values
('4', '1'),
('8', '2'),
('9', '3');

#7
select * from tbl_produto;

#8
select nome, descricao from tbl_produto;

#9
select cod_prod, nome, descricao from tbl_produto
where cod_prod = 5
;

#10
select nome as PRODUTO, 
descricao  as DETALHES
from tbl_produto
;