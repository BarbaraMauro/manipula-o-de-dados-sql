create database loja;
show databases;
use loja;
create table funcionarios (
id_funcionario int primary key auto_increment,
nome varchar (255) not null,
cpf varchar (14) not null,
data_nascimento date,
endereco varchar(255),
telefone varchar(15),
email varchar(100) unique, 
cargo varchar(100),
salacio decimal(10,2),
data_admissao datetime default current_timestamp
);

alter table funcionarios
rename column salacio to salario;

create table clientes (
id_clientes int primary key auto_increment,
nome varchar (255) not null,
cpf varchar(14) not null,
data_nascimento datetime default current_timestamp,
endereco varchar(255),
telefone varchar (15),
email varchar (100),
data_cadastro datetime default current_timestamp
);

create table produtos (
id_produto int primary key auto_increment,
nome varchar (255),
descricao text,
preco decimal(10,2), 
categoria varchar(100)
);

alter table produtos
rename column id_produto to id_produtos;

create table pedidos(
id_pedido int primary key auto_increment,
id_cliente int not null,
id_funcionario int not null,
id_produto int not null,
quantidade int,
preco decimal (10,2),
data_pedido datetime default current_timestamp,
status varchar(50) default 'pendente',
foreign key (id_cliente) references clientes (id_clientes),
foreign key (id_funcionario) references funcionarios (id_funcionario),
foreign key (id_produto) references produtos (id_produtos)
);

create table info_produtos (
id_info int primary key auto_increment,
id_produto int not null, 
ingredientes text,
fornecedor varchar(255),
foreign key (id_produto) references produtos (id_produtos)
)
 





 