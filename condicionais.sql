#Passo 01#
show databases;
use restaurante;

# Passo 02#
select * from pedidos
where id_funcionario = 4 and status_pedido = 'Pendente';

#Passo 03#
select * from pedidos
where status_pedido <> 'Concluído';

#Passo 04#
select * from pedidos
where id_produto in(1,3,5,7,8);

#Passo 05#
select * from clientes
where nome like 'c%';

#Passo 06#
select * from produtos
where descricao like '%Carne%' or  descricao like '%frango%';

#Passo 07#
select * from produtos
where preco between 20 and 30;

#Passo 08#
update pedidos 
set status_pedido = null
where id_pedido = 6; 

#Passo 09#
select * from pedidos where status_pedido is null;

#Passo 10#
select id_pedido, status_pedido, 
IFNULL(status_pedido, 'Cancelado') as status_novo from pedidos;

#Passo 11#
select nome, cargo, salario,
case
when salario > 3000 then 'Acima da média'
else 'Abaixo da média'
end as media_salario
from funcionario; 
