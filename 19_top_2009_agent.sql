select 
top(1)
e.EmployeeId, e.FirstName + e.LastName as Agent_Name, sum(i.Total) as total_sale
from Employee as e
inner join Customer as c
on e.EmployeeId = c.SupportRepId
inner join Invoice as i
on c.CustomerId = i.CustomerId
where i.InvoiceDate like '%2009%'
group by e.EmployeeId, e.FirstName, e.LastName
order by total_sale desc
