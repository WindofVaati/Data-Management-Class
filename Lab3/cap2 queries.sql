--Number 1

--select city, name
--from agents
--where name='Smith'


--Number 2

--select pid, name, quantity, priceusd
--from products
--where priceusd >= 1.25


--Number 3

--select ordno, aid
--from orders


--Number 4

--select name, city
--from customers
--where city = 'Dallas'


--Number 5

--select name, city
--from agents
--where city <> 'New York'
--AND city <> 'Newark'


--Number 6

--select name,city, priceusd
--from products
--where city <> 'New York'
--AND city <> 'Newark'
--AND priceusd >= 1.00


--Number 7

--select *
--from orders
--where mon = 'jan'
--or mon = 'mar'

--Number 8

--select *
--from orders
--where mon = 'feb'
--AND dollars <= 100.00


--Number 9

--select *
--from orders
--where cid = 'c001'