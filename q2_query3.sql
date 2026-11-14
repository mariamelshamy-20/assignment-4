select distinct creditLimit from customers where country = 'USA' and phone like '%5555%'
order by creditLimit desc limit 4, 1;