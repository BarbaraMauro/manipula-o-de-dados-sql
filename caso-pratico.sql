CREATE database loja_db;
use loja_db;

create table clientes(
ID INT PRIMARY KEY auto_increment,
NOME VARCHAR(100) NOT NULL, 
EMAIL VARCHAR(100) UNIQUE,
TELEFONE VARCHAR(50) NOT NULL,
DATA_CADASTRO TIMESTAMP DEFAULT current_timestamp
); 

create table pedidos(
ID_PEDIDO INT PRIMARY KEY auto_increment,
ID_CLIENTE INT,
DATA_PEDIDO DATE NOT NULL, 
VALOR_PEDIDO DECIMAL(10,2) NOT NULL,
STATUS_PEDIDO VARCHAR (50) default 'Em andamento',
foreign key (ID_CLIENTE) references clientes(ID) ON delete CASCADE
);

INSERT INTO clientes (NOME, EMAIL, TELEFONE) values 
('Ana Clara', 'ana_clasantos@gmail.com', '11989555613'),
('João Augusto', 'j.augusto@outlook.com', '11985468754'),
('Frederico Evandro' , 'eufrederico@gmail.com' , '91985498956'),
('Thales Fernandes' , 'thales.fer-andes@outlook.com', '11985497894');

INSERT INTO pedidos (ID_CLIENTE, DATA_PEDIDO, VALOR_PEDIDO, STATUS_PEDIDO) values
(1, '2025-04-10', 298.50, 'Concluído'),
(2, '2025-02-25', 199.02, 'Cancelado'),
(3, '2025-01-02', 120.99, 'Enviado'),
(4, '2024-12-28', 501.55, 'Concluído');


show tables; 

select * from clientes where ID = 5; 

alter table pedidos
modify column STATUS_PEDIDO varchar(50) default 'pendente'; 

desc pedidos; 

INSERT INTO clientes (NOME, EMAIL, TELEFONE) values
('Cecilia Aragao', 'aragao.cecilia@live.com', '91999124045');

INSERT INTO pedidos (ID_CLIENTE, DATA_PEDIDO, VALOR_PEDIDO) values
(5, '2025-04-03', 159.98);

use loja_db;

show tables; 

select * from clientes;

select * from pedidos; 

use loja_db;

select * from clientes;

insert into clientes (NOME, EMAIL, TELEFONE) values 
('Ivan Meireles' , 'ivan.meireles@gmail.com', '91985497896');

select * from clientes;

select * from pedidos
where VALOR_PEDIDO >= '200';



