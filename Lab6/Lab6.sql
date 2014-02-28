--Jose Abreu
--Lab 6 2/27/2014

--1
select customers.city, customers.name
from customers
join
(select city, sum(quantity)
from products
group by city
order by sum desc limit 1) as "MaxCity"
on customers.city = "MaxCity".city



--2
select customers.city, customers.name
from customers
join
(select city, sum(quantity)
from products
group by city
order by sum desc) as "MaxCity"
on customers.city = "MaxCity".city

--3
select *
from products
where priceUSD > (select avg(priceUSD)
		  from products)

--4
select customers.name, orders.pid, orders.dollars
from orders
join customers
on customers.cid = orders.cid
order by dollars desc


--5
select name, coalesce(sum,0) 
from customers
left join
(select cid, sum(qty)
 from orders
 group by cid) as "TotalOrdered"
 on customers.cid = "TotalOrdered".cid
 order by customers.cid asc


--6
select products.name as productname, cusorder.name as customername, agents.name as agentname
from agents
join (select *
      from customers
      join orders
      on customers.cid = orders.cid) as cusorder
      
on agents.aid = cusorder.aid
join products
on products.pid = cusorder.pid
where agents.city = 'New York'
