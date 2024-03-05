--emails de quem mora em santa catarina

select email, state
from sales.customers
where state = 'SC'


--santacatrina e MS agora
select email, state
from sales.customers
where state = 'SC' or state = 'MS'

--Todos emails que são de SC ou MS mas tem que ter mais de 30 anos
select email, state
from sales.customers
where (state = 'SC' or state = 'MS') and birth_date < '1991-12-28'

--orderby 

--liste os produtos em descresente tendo base seu preço 
Select * from sales.products
order by price desc 

--listar estados distintos em ordem crescente 
select distinct state 
from sales.customers 
order by state 

--clientes mais novos 
select email, birth_date, (current_date - birth_date) / 365 as "Idade do cliente"
from sales.customers
order by "Idade do cliente"


--conte todas visitas no site 
select count(*)
from sales.funnel

--conte os pagamentos na coluna sales 
select count(product_id) 
from sales.funnel
where visit_page_date between '2021-01-01' and '2021-01-31'

--contar as colunas da sua base
select * from sales.funnel 
limit 10