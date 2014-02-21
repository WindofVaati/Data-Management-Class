--Jose Abreu
--February 20,2014


--1
select agents.city
from customers, orders, agents
where customers.cid = orders.cid
and agents.aid = orders.aid
and customers.name = 'Basics'

--2
select distinct orders2.pid
from orders as orders1
join customers
on customers.cid = orders1.cid
join orders as orders2
on orders2.aid = orders1.aid
where customers.city = 'Kyoto'
order by orders2.pid asc

--3
select name
from customers
where cid NOT in (select cid
		  from orders)
--4
select customers.name
from customers
left outer join orders
on customers.cid = orders.cid
where orders.ordno is NULL

--5
select distinct customers.name, orders_agents.name
from customers
join ( select * 
	from orders, agents
	where orders.aid = agents.aid) as orders_agents
on customers.cid = orders_agents.cid
where customers.city = orders_agents.city



--6
select customers.name, agents.name, customers.city
from customers
join agents
on customers.city = agents.city

--7
select 