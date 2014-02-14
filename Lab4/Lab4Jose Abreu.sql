--Jose Abreu Lab 4
--February 13,2014

--Number 1
select city
from agents
where aid in (select aid
	      from orders
	      where cid in(select cid
			    from customers
			    where name = 'Basics'));
			    
--Number 2
select pid
from orders
where aid in (select aid
	      from agents
	      where cid in(select cid
		           from orders
			   where cid in(select cid
			                from customers
				        where city in(select city
						      from customers
						      where city = 'Kyoto'))));

--Number 3
select cid,name
from customers
where cid NOT in(select cid
	     from orders
	     where aid = 'a03')

--Number 4
select cid,name
from customers
where cid in(select cid
	     from orders
	     where aid in(select aid
			  from agents
			  where aid != 'a03'));
	     

--Number 5
select pid
from products
where pid in(select pid
	     from orders
	     where aid in(select aid
			  from agents
			  where aid = 'a03'));
--Number 6
select name, discount
from customers
where cid in(select cid
	     from orders
	     where aid in(select aid
			  from orders
			  where aid in(select aid
				       from agents
					where city = 'Duluth' or city = 'Dallas')));

--Number 7
select name, discount
from customers
where discount in(select discount
		  from customers
		  where city = 'Dallas' or city = 'Kyoto')

			  