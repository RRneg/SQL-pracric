select distinct Name as Customers from Customers, Orders where Customers.Id != all(select CustomerId from Orders) ;

