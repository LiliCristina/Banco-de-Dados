create database PapelariaDigital;
use PapelariaDigital;

create table produtos
(
IdItem int auto_increment primary key,
Nome varchar(50),
PreçoUnit decimal(10,2),
IdFornecedores int,
	foreign key(IdFornecedores) references fornecedores(IdFornecedores)
);

create table fornecedores
(
IdFornecedores int auto_increment primary key,
Nome varchar(50),
CNPJ varchar(50),
Contato varchar(20),
Endereço varchar(50)
);

create table vendas
(
IdVendas int auto_increment primary key,
IdItem int,
	foreign key(IdItem) references produtos(IdItem),
PrecoVenda decimal(10,2),
data date
);

insert into 
	produtos (Nome, PreçoUnit) 
Values 
	('Lapis', 0.85),
	('Borracha', 0.50),
    ('Caderno', 3.89);

insert into 
	fornecedores (Nome, Contato, Endereço) 
Values 
	('Papelaria Almirante','12981647598','Rua Tereza Silva, 485'),
	('Papelaria Estrela','1198824756','Rua Almirante de Moraes, 25');
 
insert into 
	vendas (IdItem, PrecoVenda) 
Values 
	(1,2.99),
	(2,2.79);
    
select * from produtos;
select * from fornecedores;
select * from vendas;

