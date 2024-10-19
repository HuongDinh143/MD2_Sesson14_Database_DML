use quanlygiohang;

select customer.cID, customer.name, product.pName
from customer 
inner join orderes on customer.cID = orderes.cID
inner join orderdetail od on orderes.oID = od.oID
inner join product on product.pID = od.pID;

select customer.cID, customer.Name
from customer
left join orderes on  customer.cID = orderes.cID
where orderes.cID is null;

select orderes.oID, orderes.oDate, sum(od.odQTY * product.pPrice) as totalPrice
from orderes
inner join orderdetail od on orderes.oID = od.oID
inner join product on od.pID = product.pID
GROUP BY orderes.oID, orderes.oDate;