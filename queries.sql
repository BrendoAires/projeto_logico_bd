use ecommerce;
-- *** Número de clientes *** --

select count(*) as Qtd_clients from client;


-- *** Quantidade de compras por cliente *** --

select count(*) as Qtd_Compras, concat(Fname, ' ', Lname) as Nome, CPF
from client c, orders o 
where c.idClient = idOrderClient
group by Fname, Lname;

-- Quantidade de compras CONFIRMADAS por cliente?

select count(*), concat(Fname, ' ', Lname) as Nome, CPF
from client c, orders o 
where c.idClient = idOrderClient and orderStatus = 'Confirmado'
group by Fname, Lname;

-- Quantidade de compras CANCELADAS por cliente?

select count(*), concat(Fname, ' ', Lname) as Nome, CPF, orderStatus, idOrder
from client c, orders o 
where c.idClient = idOrderClient and orderStatus = 'Cancelado'
group by Fname, Lname;
-- 

-- Quantidade de compras CANCELADAS por cliente?

select count(*), concat(Fname, ' ', Lname) as Nome, CPF, orderStatus, idOrder
from client c, orders o 
where c.idClient = idOrderClient and orderStatus = 'Em processamento'
group by Fname, Lname;

--

-- Outra forma de selecionar quantidade de compras por cliente
select c.idClient, Fname, CPF, count(*) as Numero_Compras
from client c 
			inner join orders o ON c.idClient = o.idOrderClient
            group by idClient;

--

-- Todas as compras e respectivos dados de compra como quantidade, valor, frete

select concat(Fname, ' ', Lname) as Nome, CPF, idOrder, orderStatus as Status_Compra, orderDescription as portalVenda, sendValue as Frete, paymentCash as FormaPagamento
from orders
			inner join client c ON idOrderClient = c.idClient;
				
select * from client c 
				inner join orders o ON c.idClient = o.idOrderClient
                inner join productOrder p on p.idPOorder = o.idOrder; 
 
 
 -- Status de compras agrupado por OrderStatus;
select orderStatus, count(*) as quantidade from orders
group by orderStatus;


