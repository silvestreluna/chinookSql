SELECT
a.Total, b.FirstName + b.LastName as customer_Full_Name, b.Country, c.FirstName + c.LastName as agent_Full_Name
FROM Invoice as a
inner join 
Customer as b
on a.CustomerId = b.CustomerId
inner join 
Employee as c
on b.SupportRepId = c.EmployeeId
