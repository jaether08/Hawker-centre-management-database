USE HawkerManagementDB;
GO

-- query 1 (total sales revenue by payment type)
select 
    co.PmtType as "PaymentMethod",
    count(distinct co.OrderID) as "TotalOrders",
    count(oi.OrderItemNo) as "TotalItems",
    sum(oi.Quantity*oi.UnitPrice) as "TotalRevenue",
    round(avg(oi.Quantity*oi.UnitPrice), 2) as "AvgItemValue"
from CustOrder co inner join OrderItem oi on co.OrderID = oi.OrderID
group by co.PmtType
order by "TotalRevenue" desc;


-- query 2 (top spending customers and how much they've spent)
select top 5 c.CustomerID, c.CustName,
    count(distinct co.OrderID) as "NumOfOrders",
    sum(oi.Quantity) as "ItemsPurchased",
    sum(oi.Quantity*oi.UnitPrice) as "TotalSpending",
    round(avg(oi.Quantity * oi.UnitPrice),2) as "AvgOrderPrice"
from Customer c 
    inner join CustOrder co on c.CustomerID = co.CustomerID
    inner join OrderItem oi on co.OrderID = oi.OrderID
group by c.CustomerID, c.CustName
order by "TotalSpending" desc;


-- query 3 (average number of items per order by customer)
select top 5 c.CustomerID, c.CustName,
    count(distinct co.OrderID) as "NumOfOrders",
    count(oi.OrderItemNo) as "NumOfItemsOrdered",
    round(count(oi.OrderItemNo) * 1.0 / count(distinct co.OrderID), 2) as "AvgItemsPerOrder"
from Customer c
    inner join CustOrder co on c.CustomerID = co.CustomerID
    inner join OrderItem oi on co.OrderId = oi.OrderID
group by c.CustomerID, c.CustName 
-- having count(oi.OrderID) >3
order by "AvgItemsPerOrder" desc;
