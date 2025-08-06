#Passo 1
use restaurante;

#Passo 2
select nome, categoria  from produtos
where preco > 30;

#Passo 3
select nome, telefone, data_nascimento from clientes
where year (data_nascimento) < 1985 ;

#Passo 4 
select id_produto, ingredientes
from info_produtos
where ingredientes like '%carne%';

#Passo 05
select nome, categoria
from produtos 
order by  categoria ASC, nome ASC;  

#Passo 06
select nome, preco 
from produtos 
order by  preco desc
limit 5; 

#Passo 07 
select nome, categoria
from produtos 
where categoria = 'Prato Principal' 
order by nome
limit 2 offset 5; 

#Passo 08
create table backup_pedidos as
select * from pedidos; 

select * from backup_pedidos;